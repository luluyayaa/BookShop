package com.lulu.web.JSPServlet.welldown;

import com.alibaba.fastjson.JSON;
import com.lulu.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;

@WebServlet("/deleteByIdsServlet")
public class DeleteByIdsServlet extends HttpServlet {
    private BookService service = new BookService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. 接收数据 json  [1,2,3]
        BufferedReader br = request.getReader();
        String params = br.readLine();//json字符串
        //转为 int[]
        int[] bkIds = JSON.parseObject(params, int[].class);
        //2. 调用service添加
        service.deleteByIds(bkIds);
        //3. 响应成功的标识
        response.getWriter().write("success");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}