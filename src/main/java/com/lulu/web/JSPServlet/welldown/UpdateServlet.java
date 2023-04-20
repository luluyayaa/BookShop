package com.lulu.web.JSPServlet.welldown;

import com.lulu.pojo.Book;
import com.lulu.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateServlet")
public class UpdateServlet extends HttpServlet {
    private BookService service = new BookService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /**
         * 注意处理POST请求的乱码问题
         */
        request.setCharacterEncoding("utf-8");
        String bkId = request.getParameter("bkId");
        String bkName = request.getParameter("bkName");
        String bkAuthor = request.getParameter("bkAuthor");
        String bkCountry = request.getParameter("bkCountry");
        String bkType = request.getParameter("bkType");
        String bkStockNum = request.getParameter("bkStockNum");
        String bkPrice = request.getParameter("bkPrice");
        String bkSellDate = request.getParameter("bkSellDate");
        String bkDesc = request.getParameter("bkDesc");
        Book book = new Book();
        book.setBkId(Integer.parseInt(bkId));
        book.setBkName(bkName);
        book.setBkAuthor(bkAuthor);
        book.setBkCountry(bkCountry);
        book.setBkType(bkType);
        book.setBkPrice(Integer.parseInt(bkPrice));
        book.setBkStockNum(Integer.parseInt(bkStockNum));
        book.setBkSellDate(bkSellDate);
        book.setBkDesc(bkDesc);
        service.update(book);
        request.getRequestDispatcher("/selectAllServlet").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
