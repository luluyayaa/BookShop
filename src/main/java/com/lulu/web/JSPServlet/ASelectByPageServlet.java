package com.lulu.web.JSPServlet;

import com.lulu.pojo.Book;
import com.lulu.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/aSelectByPageServlet")
public class ASelectByPageServlet extends HttpServlet {
    private BookService service = new BookService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. 接收 当前页码 和 每页展示条数    url?currentPage=1&pageSize=5

        String _currentPage = request.getParameter("currentPage");
        int currentPage = Integer.parseInt(_currentPage);
        List<Book> books = service.selectByPage(currentPage);
        //2. 存入request域中
        response.setContentType("text/html;charset=utf-8");
        request.setAttribute("books",books);
        //3. 转发到brand.jsp
        request.getRequestDispatcher("frontmain.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}