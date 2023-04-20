<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  isELIgnored="false" %>>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta charset="utf-8">
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
<div id="main">
  <div class="sidebar" style="width:50%; margin-left: 24%;">
    <form action="/JSPDemo/registerServlet" method="post"style="align:center">
      <p style="font-size: 20px; margin-top: 50px;">用户注册</p>
      <p>用户名：<input type="text" name="username" type="text" id="username" value="请输入用户名"> <br>
      <p>密&nbsp;&nbsp;&nbsp;码：<input name="password" type="password" id="password"></p>
      <p>验证码：<input  name="checkCode" type="text" id="checkCode" style="width: 42px;">
        <img  id="checkCodeImg" src="/JSPDemo/checkCodeServlet" style="width: 60px; height: 25px;">
        <a href="#"  id="changeImg" style="font-size: 13px;">看不清？</a></p>
      <p><input type="submit"></p>
      <span style="font-size: 13px;color: red;">${register_msg}</span></p>
    </form>

    </form>
  </div>
</div>

<script>
  document.getElementById("changeImg").onclick = function () {
    document.getElementById("checkCodeImg").src = "/JSPDemo/checkCodeServlet?"+new Date().getMilliseconds();
  }
</script>

</body>

</html>