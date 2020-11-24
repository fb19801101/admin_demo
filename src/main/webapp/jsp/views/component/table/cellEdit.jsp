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
  <title>开启单元格编辑 - 数据表格</title>
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
      <a><cite>开启单元格编辑</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">开启单元格编辑</div>
          <div class="layui-card-body">
            <table class="layui-hide" id="test-table-cellEdit" lay-filter="test-table-cellEdit"></table>
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
    var table = layui.table;
    
    table.render({
      elem: '#test-table-cellEdit'
      ,url: layui.setter.base + 'json/table/demo.js'
      ,cols: [[
        {type:'checkbox'}
        ,{field:'id', title:'ID', width:80, sort: true}
        ,{field:'username', title:'用户名', width:120, sort: true, edit: 'text'}
        ,{field:'email', title:'邮箱', edit: 'text', minWidth: 150}
        ,{field:'sex', title:'性别', width:80, edit: 'text'}
        ,{field:'city', title:'城市', edit: 'text', minWidth: 100}
        ,{field:'experience', title:'积分', sort: true, edit: 'text'}
      ]]
    });
    
    //监听单元格编辑
    table.on('edit(test-table-cellEdit)', function(obj){
      var value = obj.value //得到修改后的值
      ,data = obj.data //得到所在行所有键值
      ,field = obj.field; //得到字段
      layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value, {
        offset: '15px'
      });
    });
    
  });
  </script>
</body>
</html>