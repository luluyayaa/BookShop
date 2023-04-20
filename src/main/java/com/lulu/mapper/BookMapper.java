package com.lulu.mapper;

import com.lulu.pojo.Book;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface BookMapper {
    /**
     * 查看所有数据
     *
     * @return返回数据集合
     */
    @Select("select * from bkinfo")
    List<Book> selectAll();

    @Select("select * from bkinfo limit 0,12")
    List<Book> firstPage();

    /**
     * 分页查询
     *
     * @param
     * @return
     */
    @Select("select * from bkinfo limit #{currentPage} , 12")
    List<Book> selectByPage(@Param("currentPage") int currentPage);


    /**
     * 根据id查看详情
     *
     * @return 返回详细信息
     */
    @Select("select * from bkinfo where bkId=#{bkId}")
    Book selectById(int bkId);

    /**
     * 多条件查询
     * 参数接受：散装，对象（注意传参位置对应），集合
     */
    List<Book> selectByCondition(@Param("bkType") String bkType, @Param("bkName") String bkName);

    List<Book> selectByCondition(Book book);

    List<Book> selectByCondition(Map mp);

    /**
     * 单条件动态查询：下拉框
     */
    List<Book> selectBySingleCondition(Book book);

    /**
     * 添加数据
     * 添加除了id以外的所有信息
     * 返回主键
     */
    void add(Book book);

    /**
     * //     * 修改
     * //     * 返回影响行数
     * //
     */
    void update(Book book);

    /**
     * 删除单个数据
     */
    @Delete("delete from bkinfo where bkId = #{bkId}")
    void deleteById(int bkId);

    /**
     * 批量删除数据
     */
    void deleteByIds(@Param("bkIds") int[] bkIds);


}