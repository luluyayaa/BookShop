<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  isELIgnored="false" %>>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>LUNA的书店</title>
    <link rel="stylesheet" type="text/css" href="css/front.css" charset="utf-8">
    <link rel="stylesheet" href="css/iconfont.css">
</head>

<body>
    <div id="header">
    </div>
    <div id="menu">
            <a href="#"><span class="iconfont icon-a-caozhiwu">首页</span> </a>
            <a href="#"><span class="iconfont icon-a-guoshushuzhiwu">专业</span></a>
            <a href="#"><span class="iconfont icon-a-huahuaduopenzaizhiwu">心理</span></a>
            <a href="#"><span class="iconfont icon-a-huahuaduozhiwu">商贸</span></a> 
            <a href="#"><span class="iconfont icon-a-lvsedeshumuzhiwu">哲学</span></a>
            <a href="#"><span class="iconfont icon-a-shushumuzhiwu">小说</span></a> 
            <a href="#"><span class="iconfont icon-a-xiangrikuihuahuaduozhiwu">社会</span></a>
            <a href="#"><span class="iconfont icon-a-meiguihuahuahuad uozhiwu">人文</span></a>
            <a href="#"><span class="iconfont icon-a-huahuaduopenzaizhiwu">后台</span></a>
            <a href="#"><span class="iconfont icon-a-caozhiwu">订单</span> </a>
</div>
    </div>
    <div id="main">
        <div class="content">
            <c:forEach items="${books}" var="book" >
            <dl>
                <dt><img src="image/${book.bkPicName}"></dt>
                <dd>${book.bkName}</dd>
                <dd style="padding-top:0px">价格:${book.bkPrice}</dd>
            </dl>
            </c:forEach>
            <p id="transpage">
                <a href="/JSPDemo/aSelectByPageServlet?currentPage=${(currentPage-1)*12}" >上一页</a>
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <a href="/JSPDemo/aSelectByPageServlet?currentPage=${(currentPage+1)*12}">下一页</a>
            </p>
            </div>
        <div class="sidebar">
            <form  action="/JSPDemo/loginServlet" method="post" align="center">用户登录<br>
                用户名：<input id="username" name="username" type="text" value="${cookie.username.value}"> <br>
                <p>密&nbsp;&nbsp;&nbsp;码：<input id="password" name="password" type="password" value="${cookie.password.value}"></p>
                <p style="text-align: left;"><span style="font-size: 13px; ">记住我</span><input  value="1" id="remember" name="remember" type="checkbox">
                    &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="登录">&nbsp;
                    <a href="register.jsp">注册</a></p>
                <p style="font-size: 13px;color: red; ">${login_msg}</p>
            </form>
            <form align="center">条件查询
                <p>书&nbsp;&nbsp;名：<input type="text"></p>
                <p>作&nbsp;&nbsp;者：<input type="text"></p>
                <p>分&nbsp;&nbsp;类 :
                <select style="width: 63%;">
                    <option selected="selected" >专业</option>
                    <option>心理</option>
                    <option>商贸</option>
                    <option>哲学</option>
                    <option>小说</option>
                    <option>社会</option>
                    <option>人文</option>
                </select></p>
                <p>作者性别：
                <select style="width: 54%;">
                    <option selected="selected" >男</option>
                    <option>女</option>
                </select></p>
                <p>作者国籍：
                <select style="width: 54%;">
                    <option selected="selected">中国</option>
                    <option>法国</option>
                    <option>英国</option>
                 </select></p>
                <input type="button" value="查询">
            </form>
        </div>
    </div>

</body>

</html>