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

@WebServlet("/aFirstPageServlet")
public class AFirstPageServlet extends HttpServlet {
    private BookService service = new BookService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. 调用BrandService完成查询
        List<Book> books = service.firstPage();
        //2. 存入request域中
        response.setContentType("text/html;charset=utf-8");
        request.setAttribute("books",books);
        request.setAttribute("currentPage",0);
        //3. 转发到brand.jsp
        request.getRequestDispatcher("frontmain.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}