package com.lulu.web.AjaxServlet;

import com.alibaba.fastjson.JSON;
import com.lulu.pojo.Book;
import com.lulu.service.BookService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.Date;

@WebServlet("/aAddServlet")
public class AAddServlet extends HttpServlet {
    private BookService service = new BookService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /**
         * 注意处理POST请求的乱码问题
         */
        request.setCharacterEncoding("utf-8");
        //equest.getParameter不能接受json数据
        //String bkName = request.getParameter("bkName");
        //获取请求体中的JSON
        BufferedReader br= request.getReader();
        String params = br.readLine();
        // 将JSON字符串转为Java对象
        Book book = JSON.parseObject(params, Book.class);
        //2. 调用service 添加
        service.add(book);
        //3. 响应成功标识
        response.getWriter().write("success");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
