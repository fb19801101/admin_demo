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
  <title>固定列 - 数据表格</title>
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
      <a><cite>数据表格</cite></a>
      <a><cite>固定列</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">固定列</div>
          <div class="layui-card-body">
            <table class="layui-hide" id="test-table-fixed"></table>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>  
  <script>
  layui.config({
    base: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'table'], function(){
    var table = layui.table
    ,admin = layui.admin;
  
    table.render({
      elem: '#test-table-fixed'
      ,url: layui.setter.base + 'json/table/user.js'
      ,width: admin.screen() > 1 ? 892 : ''
      ,height: 332
      ,cols: [[
        {type:'checkbox', fixed: 'left'}
        ,{field:'id', width:80, title: 'ID', sort: true, fixed: 'left'}
        ,{field:'username', width:80, title: '用户名'}
        ,{field:'sex', width:80, title: '性别', sort: true}
        ,{field:'city', width:80, title: '城市'}
        ,{field:'sign', width: 219, title: '签名'}
        ,{field:'experience', width:80, title: '积分', sort: true}
        ,{field:'score', width:80, title: '评分', sort: true}
        ,{field:'classify', width:80, title: '职业'}
        ,{field:'wealth', width:120, title: '财富', sort: true, fixed: 'right'}
      ]]
      ,page: true
    });
  
  });
  </script>
</body>
</html>