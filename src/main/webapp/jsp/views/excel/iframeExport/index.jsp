<%--
  Created by IntelliJ IDEA.
  User:    Administrator
  author:  信息化管理部-方波
  site:    http://www.cr121.com/
  company: 中铁十二局集团第一工程有限公司
  Date:    2020/3/4
  Time:    11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>父页面</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
</head>
<body>
<div class="layui-container">
  <div class="layui-row">
    <div class="layui-col-md11 layui-col-md-offset1">
      <fieldset class="layui-elem-field layui-field-title">
        <legend>iframe下子页面调用导出</legend>
      </fieldset>
      <blockquote class="layui-elem-quote">
        iframe经常被用于子页面嵌套，很多后台管理系统以及<b>LayuiAdmin Iframe 版</b>原理均为 iframe 嵌套，但是iframe下的网页由于浏览器限制无法前端导出文件（部分浏览器）。
        <br>
        <br>
        <b>解决方案：</b>目前只能通过父页面的全局变量(parent.LAY_EXCEL)或者父页面的 layui对象(parent.layui.excel) 的方式调用
      </blockquote>
      <!--这里有一个子页面-->
      <iframe src="children" width="100%" height="500" frameborder="2"></iframe>
    </div>
  </div>
</div>
<!--正常的用法，父页面加载插件-->
<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>
<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/excel/excel.js"></script>
</body>
</html>
