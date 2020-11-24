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
  <title>监听单元格事件 - 数据表格</title>
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
      <a><cite>监听单元格事件</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">监听单元格事件</div>
          <div class="layui-card-body">
            <blockquote class="layui-elem-quote">点击下面表格中的【签名列】，以演示单元格事件</blockquote>
            <table class="layui-hide" id="test-table-demoEvent" lay-filter="test-table-demoEvent"></table>
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
      elem: '#test-table-demoEvent'
      ,height: 313
      ,url: layui.setter.base + 'json/table/user.js'
      ,cols: [[
        {field:'id', title: 'ID', width:80}
        ,{field:'username', title: '用户名', width:80}
        ,{field:'sign', title: '签名', width:'50%', event: 'setSign', style:'cursor: pointer;'}
        ,{field:'experience', title: '积分'}
        ,{field:'score', title: '评分'}
      ]]
    });
  
    //监听单元格事件
    table.on('tool(test-table-demoEvent)', function(obj){
      var data = obj.data;
      if(obj.event === 'setSign'){
        layer.prompt({
          formType: 2
          ,title: '修改 ID 为 ['+ data.id +'] 的用户签名'
          ,value: data.sign
        }, function(value, index){
          layer.close(index);
          
          //这里一般是发送修改的Ajax请求
          
          //同步更新表格和缓存对应的值
          obj.update({
            sign: value
          });
        });
      }
    });
  
  });
  </script>
</body>
</html>