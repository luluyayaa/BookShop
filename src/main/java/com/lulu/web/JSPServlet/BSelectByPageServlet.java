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

@WebServlet("/bSelectByPageServlet")
public class BSelectByPageServlet extends HttpServlet {
    private BookService service = new BookService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String _currentPage = request.getParameter("currentPage");
        int currentPage = Integer.parseInt(_currentPage);
        List<Book> books = service.selectByPage(currentPage);
        //2. 存入request域中
        response.setContentType("text/html;charset=utf-8");
        request.setAttribute("books",books);
        //3. 转发到brand.jsp
        request.getRequestDispatcher("backlist.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}