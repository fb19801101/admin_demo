<%--
  Created by IntelliJ IDEA.
  User:    Administrator
  author:  信息化管理部-方波
  site:    http://www.cr121.com/
  company: 中铁十二局集团第一工程有限?司
  Date:    2020/3/31
  Time:    7:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>分类管理</title>
</head>
<body>

<div class="layui-card layadmin-header">
  <div class="layui-breadcrumb" lay-filter="breadcrumb">
    <a lay-href="">主页</a>
    <a><cite>商城系统</cite></a>
    <a><cite>分类管理</cite></a>
  </div>
</div>

<style>
/* 这段样式只是用于演示 */
.layadmin-trailer{position: absolute; left: 0; top: 0; height: 100%; width: 100%; padding: 15px; display: flex; justify-content: center; flex-direction: column; text-align: center; box-sizing: border-box; font-size: 20px; font-weight: 300; color: #ccc;}
</style>

<div class="layadmin-trailer">
  即将开放
</div>

<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>
<script>
layui.use(['admin'], function(){
  var $ = layui.$
  ,admin = layui.admin
  ,element = layui.element
  ,router = layui.router();

  
});
</script>
</body>
</html>