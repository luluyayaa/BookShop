<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  isELIgnored="false" %>>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>LUNA的书店</title>
    <link rel="stylesheet" type="text/css" href="css/back.css" charset="utf-8">
    <link rel="stylesheet" href="css/iconfont.css">
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
        <div class="content" style="margin-top: 100px;">
            <table>
                <p span style="color:green;font: italic 700 20px 'Microsoft yahe';">${user.username},欢迎您</p>
                <p><span style="color:green;font: italic 700 16px 'Microsoft yahe';">请使用左侧菜单进行管理！</p>
            </table>
        </div>
        <!-- 侧边表单 -->
        <div class="sidebar">
            <form align="center">
                <p><a href="/JSPDemo/bFirstPageServlet">书籍信息查询</a></p>
                <p ><a href="backadd.jsp">书籍信息录入</a></p>
            </form>
        </div>
    </div>
</body>
</html>