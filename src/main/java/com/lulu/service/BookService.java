package com.lulu.service;

import com.lulu.mapper.BookMapper;
import com.lulu.pojo.Book;
import com.lulu.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;


/**
 * mybatis 代理开发
 */
public class BookService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    /**
     * 查询全部
     *
     * @return
     */
    public List<Book> selectAll() {
        SqlSession sqlSession = factory.openSession();
        BookMapper bookMapper = sqlSession.getMapper(BookMapper.class);
        List<Book> books = bookMapper.selectAll();
        //4. 释放资源
        sqlSession.close();
        return books;
    }

    public List<Book> firstPage() {
        SqlSession sqlSession = factory.openSession();
        BookMapper bookMapper = sqlSession.getMapper(BookMapper.class);
        List<Book> books = bookMapper.firstPage();
        //4. 释放资源
        sqlSession.close();
        return books;
    }



    /**
     * 添加数据
     *
     * @param book
     */
    public void add(Book book) {
        SqlSession sqlSession = factory.openSession(true);
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        mapper.add(book);
        sqlSession.commit();
        sqlSession.close();
    }

    /**
     * 根据id查询数据
     *
     * @return
     */
    public Book selectById(int bkId) {
        SqlSession sqlSession = factory.openSession();
        BookMapper bookMapper = sqlSession.getMapper(BookMapper.class);
        Book book = bookMapper.selectById(bkId);
        //4. 释放资源
        sqlSession.close();
        return book;
    }

    /**
     * 修改
     *
     * @param book
     */
    public void update(Book book) {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession(true);
        //3. 获取BrandMapper
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        //4. 调用方法
        mapper.update(book);
        //释放资源
        sqlSession.close();
    }

    public void deleteById(int bkId) {
        SqlSession sqlSession = factory.openSession(true);
        BookMapper bookMapper = sqlSession.getMapper(BookMapper.class);
        bookMapper.deleteById(bkId);
        //4. 释放资源
        sqlSession.close();
    }

    public void deleteByIds(int[] bkIds) {
        //2. 获取SqlSession对象
        SqlSession sqlSession = factory.openSession(true);
        //3. 获取BrandMapper
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        //4. 调用方法
        deleteByIds(bkIds);
        //5. 释放资源
        sqlSession.close();
    }
    public List<Book> selectByPage(int currentPage) {
        SqlSession sqlSession = factory.openSession(true);
        BookMapper bookMapper = sqlSession.getMapper(BookMapper.class);
        List<Book> books = bookMapper.selectByPage(currentPage);
        //4. 释放资源
        sqlSession.close();
        return books;
    }
}