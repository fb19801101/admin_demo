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
  <meta charset="utf-8">
  <title>layuiAdmin 内容系统-分类管理</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>

  <div class="layui-fluid">
    <div class="layui-card">
      <div class="layui-card-header layuiadmin-card-header-auto">
        <button class="layui-btn layuiadmin-btn-tags" data-type="add">添加</button>
      </div>
      <div class="layui-card-body">    
        <table id="LAY-app-content-tags" lay-filter="LAY-app-content-tags"></table>  
        <script type="text/html" id="layuiadmin-app-cont-tagsbar">
          <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>编辑</a>
          <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"><i class="layui-icon layui-icon-delete"></i>删除</a>
        </script>
      </div>
    </div>
  </div>

  <script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>
  <script>
  layui.config({
    base: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'contlist', 'table'], function(){

    var table = layui.table;
    var $ = layui.$, active = {
      add: function(){
        layer.open({
          type: 2
          ,title: '添加分类'
          ,content: 'tagsform'
          ,area: ['450px', '200px']
          ,btn: ['确定', '取消']
          ,yes: function(index, layero){
            var othis = layero.find('iframe').contents().find("#layuiadmin-app-form-tags")
            ,tags = othis.find('input[name="tags"]').val();
            
            if(!tags.replace(/\s/g, '')) return;
            
            table.reload('LAY-app-content-tags');
            layer.close(index);
          }
        }); 
      }
    };
    $('.layui-btn.layuiadmin-btn-tags').on('click', function(){
      var type = $(this).data('type');
      active[type] ? active[type].call(this) : '';
    });
  });
  </script>
</body>
</html>
