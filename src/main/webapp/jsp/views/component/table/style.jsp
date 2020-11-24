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
  <title>设置单元格样式 - 数据表格</title>
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
      <a><cite>设置单元格样式</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">设置单元格样式</div>
          <div class="layui-card-body">
            <table class="layui-hide" id="test-table-style"></table>
            
            <script type="text/html" id="test-table-usernameTpl">
              <a href="/?table-demo-id={{d.id}}" class="layui-table-link" target="_blank">{{ d.username }}</a>
            </script>
            <script type="text/html" id="test-table-sexTpl">
              {{#  if(d.sex === '女'){ }}
                <span style="color: #F581B1;">{{ d.sex }}</span>
              {{#  } else { }}
                {{ d.sex }}
              {{#  } }}
            </script>
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
      elem: '#test-table-style'
      ,url: layui.setter.base + 'json/table/user.js'
      ,height: 310
      ,cols: [[
        {field:'id', title:'ID', width:80, sort: true}
        ,{field:'username', title:'用户名', width:80, templet: '#usernameTpl'}
        ,{field:'sex', title:'性别', width:80, sort: true, templet: '#sexTpl'}
        ,{field:'city', title:'城市', width:80}
        ,{field:'sign', title:'签名'}
        ,{field:'experience', title:'积分', width:80, sort: true, style:'background-color: #eee;'}
        ,{field:'score', title:'评分', width:80, sort: true}
        ,{field:'classify', title:'职业', width:80, style:'background-color: #009688; color: #fff;'}
        ,{field:'wealth', title:'财富', width:135, sort: true}
      ]]
      ,page: true
      ,skin: 'row'
      ,even: true
    });
  
  });
  </script>
</body>
</html>