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
  <title>监听行事件 - 数据表格</title>
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
      <a><cite>监听行事件</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">监听行事件</div>
          <div class="layui-card-body">

            <table class="layui-hide" id="test-table-onrow" lay-filter="test-table-onrow"></table>

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
    var admin = layui.admin
    ,table = layui.table;
  
    table.render({
      elem: '#test-table-onrow'
      ,url:'/test/table/demo1.json'
      ,cols: [[
        {field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true}
        ,{field:'username', title:'用户名', width:120}
        ,{field:'email', title:'邮箱', width:150, templet: function(res){
          return '<em>'+ res.email +'</em>'
        }}
        ,{field:'sex', title:'性别', width:80, sort: true}
        ,{field:'city', title:'城市', width:100}
        ,{field:'sign', title:'签名'}
        ,{field:'experience', title:'积分', width:80, sort: true}
        ,{field:'ip', title:'IP', width:120}
        ,{field:'logins', title:'登入次数', width:100, sort: true}
        ,{field:'joinTime', title:'加入时间', width:120}
      ]]
      ,page: true
    });
    
    //监听行单击事件（单击事件为：rowDouble）
    table.on('row(test-table-onrow)', function(obj){
      var data = obj.data;
      
      layer.alert(JSON.stringify(data), {
        title: '当前行数据：'
      });
      
      //标注选中样式
      obj.tr.addClass('layui-table-click').siblings().removeClass('layui-table-click');
    });
  
  });
  </script>
</body>
</html>