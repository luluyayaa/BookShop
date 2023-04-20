<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  isELIgnored="false" %>>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>LUNA的书店</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/back.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/iconfont.css"/>">
</head>

<body>
<div id="header">
</div>
<div id="menu">
    <a href="#"><span class="iconfont icon-a-caozhiwu"></span>后台管理首页</a>
    <a href="#"><span class="iconfont icon-a-guoshushuzhiwu"></span>书本信息管理</a>
    <a href="#"><span class="iconfont icon-a-huahuaduopenzaizhiwu"></span>用户订单管理</a>
    <a href="#"><span class="iconfont icon-a-huahuaduozhiwu"></span>注册用户管理</a>
    <a href="#"><span class="iconfont icon-a-lvsedeshumuzhiwu"></span>管理员设置</a>
    <a href="#"> <span class="iconfont icon-a-shushumuzhiwu"></span>管理员退出</a>
</div>
<div id="main">
    <div id="quesitionlist">
        <table>
            <p style="font-weight: bold;">查询结果列表</p>
            <tr>
                <td><input type="checkbox"></td>
                <td>书籍编号</td>
                <td>书籍名称</td>
                <td>作者</td>
                <td>国籍</td>
                <td>类型</td>
                <td>库存量</td>
                <td colspan="3">操作</td>
            </tr>
            <c:forEach items="${books}" var="book" varStatus="status">
                <tr align="center">
                    <td><input type="checkbox"></td>
                    <td>${book.bkId}</td>
                    <td>${book.bkName}</td>
                    <td>${book.bkAuthor}</td>
                    <td>${book.bkCountry}</td>
                    <td>${book.bkType}</td>
                    <td>${book.bkStockNum}</td>
                    <td><a href="/JSPDemo/selectByIdServlet?bkId=${book.bkId}">修改</a> <a href="/JSPDemo/deleteByIdServlet?bkId=${book.bkId}">删除</a></td>
                </tr>
            </c:forEach>
        </table>
        <div id="transpage">
            <a href="/JSPDemo//bSelectByPageServlet?currentPage=${(currentPage-1)*12}">上一页</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="/JSPDemo//bSelectByPageServlet?currentPage=${(currentPage+1)*12}">下一页</a>
        </div>
    </div>
    <div class="sidebar">
        <form align="center ">
            <p>书籍信息查询</p>
            <p ><a href="backadd.jsp">书籍信息录入</a></p>
        </form>
    </div>
</div>
</body>

</html>