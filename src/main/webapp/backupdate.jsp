<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  isELIgnored="false" %>>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>

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
  <div class="content">
    <form  action="/JSPDemo/updateServlet" method="post" style="margin-top: 40px;">
      <p style="text-indent:70px; font: 700 18px 'Microsoft yahe';">书籍信息修改</p>
      <%--隐藏域提交id--%>
      <input type="hidden" name="bkId" value="${book.bkId}"/>
      书籍名称：<input name="bkName" value="${book.bkName}"/>
      <p>作&nbsp; &nbsp; &nbsp; &nbsp;者：<input name="bkAuthor" value="${book.bkAuthor}"/></p>
      <p>
        国籍/地区：
        <select name="bkCountry" value="${book.bkCountry}">
          <option>中国</option>
          <option>法国</option>a
          <option>英国</option>
          <option>日本</option>
        </select>
      </p>
      <p>
        书本类型：<span name="bkType" value="${book.bkType}">
                        <input type="checkbox"/>任意类型
                        <input type="checkbox"/>心理
                        <input type="checkbox"/>商贸
                        <input type="checkbox"/>哲学<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox"/>人文&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox"/>专业
                        <input type="checkbox"/>小说
                        <input type="checkbox"/>社会
                    </span>
      </p>
      <p>
        库存数量：<input type="text" name="bkStockNum" value="${book.bkStockNum}" />
      </p>
      <p>
        书本价格：<input type="text" name="bkPrice" value="${book.bkPrice}"/>
      </p>
      <p>
        发行日期：<input name="bkSellDate" value="${book.bkSellDate}"/>【格式:YYYY-MM-DD】
      </p>
      <p></p>
      <p style="float:left;vertical-align: middle;">
        介绍描述：<textarea rows="5" cols="40" name="bkDesc">${book.bkDesc} </textarea>
      <p style="float:left;"></p>
      <img src="../image/book1.jpeg" style="width: 120px; height: 140px; margin-left: 50px;" /></p>
      <input type="submit"  value="确认修改"  style="margin-right: 20px; margin-left: 80px;">
      <input type="button" value="返回列表">
    </form>
  </div>
  <!-- 侧边表单 -->
  <div class="sidebar ">
    <form align="center ">
      <p>书籍信息查询</p>
      <p>书籍信息录入</p>
    </form>
  </div>
</div>
</body>

</html>