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
  <title>数据操作 - 数据表格</title>
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
      <a><cite>数据操作</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">数据操作</div>
          <div class="layui-card-body">
            <div class="layui-btn-group test-table-operate-btn" style="margin-bottom: 10px;">
              <button class="layui-btn" data-type="getCheckData">获取选中行数据</button>
              <button class="layui-btn" data-type="getCheckLength">获取选中数目</button>
              <button class="layui-btn" data-type="isAll">验证是否全选</button>
            </div>
            
            <table class="layui-hide" id="test-table-operate" lay-filter="test-table-operate"></table>
            
            <script type="text/html" id="test-table-operate-barDemo">
              <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
              <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
              <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
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
    var table = layui.table
    ,admin = layui.admin;
  
    table.render({
      elem: '#test-table-operate'
      ,url: layui.setter.base + 'json/table/user.js'
      ,width: admin.screen() > 1 ? 892 : ''
      ,height: 332
      ,cols: [[
        {type:'checkbox', fixed: 'left'}
        ,{field:'id', width:80, title: 'ID', sort: true, fixed: 'left'}
        ,{field:'username', width:80, title: '用户名'}
        ,{field:'sex', width:80, title: '性别', sort: true}
        ,{field:'city', width:80, title: '城市'}
        ,{field:'sign', width: 160, title: '签名'}
        ,{field:'experience', width:80, title: '积分', sort: true}
        ,{field:'wealth', width:135, title: '财富', sort: true}
        ,{field:'classify', width:80, title: '职业'}
        ,{field:'score', width:80, title: '评分', sort: true, fixed: 'right'}
        ,{width:178, align:'center', fixed: 'right', toolbar: '#test-table-operate-barDemo'}
      ]]
      ,page: true
    });
    
    //监听表格复选框选择
    table.on('checkbox(test-table-operate)', function(obj){
      console.log(obj)
    });
    //监听工具条
    table.on('tool(test-table-operate)', function(obj){
      var data = obj.data;
      if(obj.event === 'detail'){
        layer.msg('ID：'+ data.id + ' 的查看操作');
      } else if(obj.event === 'del'){
        layer.confirm('真的删除行么', function(index){
          obj.del();
          layer.close(index);
        });
      } else if(obj.event === 'edit'){
        layer.alert('编辑行：<br>'+ JSON.stringify(data))
      }
    });
    
    var $ = layui.$, active = {
      getCheckData: function(){ //获取选中数据
        var checkStatus = table.checkStatus('test-table-operate')
        ,data = checkStatus.data;
        layer.alert(JSON.stringify(data));
      }
      ,getCheckLength: function(){ //获取选中数目
        var checkStatus = table.checkStatus('test-table-operate')
        ,data = checkStatus.data;
        layer.msg('选中了：'+ data.length + ' 个');
      }
      ,isAll: function(){ //验证是否全选
        var checkStatus = table.checkStatus('test-table-operate');
        layer.msg(checkStatus.isAll ? '全选': '未全选')
      }
    };
    
    $('.test-table-operate-btn .layui-btn').on('click', function(){
      var type = $(this).data('type');
      active[type] ? active[type].call(this) : '';
    });
  
  });
  </script>
</body>
</html>