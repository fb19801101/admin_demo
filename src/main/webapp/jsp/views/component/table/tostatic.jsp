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
  <title>转化静态表格 - 数据表格</title>
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
      <a><cite>转化静态表格</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">转化静态表格</div>
          <div class="layui-card-body">
              
            <div class="layui-btn-group test-table-btn" style="margin-bottom: 10px;">
              <button class="layui-btn" data-type="parseTable">立即转化为数据表格</button>
            </div>
             
            <table lay-filter="parse-table-demo">
              <thead>
                <tr>
                  <th lay-data="{field:'username', width:200}">昵称</th>
                  <th lay-data="{field:'joinTime', width:150}">加入时间</th>
                  <th lay-data="{field:'sign', minWidth: 180}">签名</th>
                </tr> 
              </thead>
              <tbody>
                <tr>
                  <td>贤心1</td>
                  <td>2016-11-28</td>
                  <td>人生就像是一场修行 A</td>
                </tr>
                <tr>
                  <td>贤心2</td>
                  <td>2016-11-29</td>
                  <td>人生就像是一场修行 B</td>
                </tr>
                <tr>
                  <td>贤心3</td>
                  <td>2016-11-30</td>
                  <td>人生就像是一场修行 C</td>
                </tr>
              </tbody>
            </table>
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
  
    var $ = layui.$, active = {
    parseTable: function(){
      table.init('parse-table-demo', { //转化静态表格
        //height: 'full-500'
      }); 
    }
  };
  
  $('.test-table-btn .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
  
  });
  </script>
</body>
</html>