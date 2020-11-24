<%--
  Created by IntelliJ IDEA.
  User:    Administrator
  author:  信息化管理部-方波
  site:    http://www.cr121.com/
  company: 中铁十二局集团第一工程有限公司
  Date:    2020/3/31
  Time:    7:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>日期组件</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>

<body>


<div class="layui-card layadmin-header">
  <div class="layui-breadcrumb" lay-filter="breadcrumb">
    <a lay-href="">主页</a>
    <a><cite>组件</cite></a>
    <a><cite>日期时间</cite></a>
  </div>
</div>

<style>
/* 这段样式只是用于演示 */
.layadmin-trailer{position: absolute; left: 0; top: 0; height: 100%; width: 100%; padding: 15px; display: flex; justify-content: center; flex-direction: column; text-align: center; box-sizing: border-box; font-size: 20px; font-weight: 300; color: #ccc;}
</style>

<div class="layadmin-trailer">
  <div style="width: 280px; margin: 0 auto;">
    <a href="http://www.layui.com/demo/laydate.html" target="_blank" class="layui-btn">
      正在整理，你可以先官网查看示例
    </a>
  </div>
</div>
  
  <script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>  
  <script>
  layui.config({
    base: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index']);
  </script>
</body>
</html>