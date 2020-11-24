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
  <title>功能演示2 - 通用分页组件</title>
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
      <a><cite>分页演示二</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">显示完整功能</div>
          <div class="layui-card-body">
            <div id="test-laypage-demo7"></div>
          </div>
        </div>
      </div>
      
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">自定义排版</div>
          <div class="layui-card-body">
            <div id="test-laypage-demo8"></div>
            <div id="test-laypage-demo9"></div>
            <div id="test-laypage-demo10"></div>
          </div>
        </div>
      </div>
      
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">自定义每页条数的选择项</div>
          <div class="layui-card-body">
            <div id="test-laypage-demo11"></div>
          </div>
        </div>
      </div>
      
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">将一段已知数组分页展示</div>
          <div class="layui-card-body">
            <div id="test-laypage-demo20"></div>
            <ul id="test-laypage-biuuu_city_list"></ul> 
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
  }).use(['index', 'laypage'], function(){
    var laypage = layui.laypage;
    
    //完整功能
    laypage.render({
      elem: 'test-laypage-demo7'
      ,count: 100
      ,layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
      ,jump: function(obj){
        console.log(obj)
      }
    });
    
    //自定义排版
    laypage.render({
      elem: 'test-laypage-demo8'
      ,count: 1000
      ,layout: ['limit', 'prev', 'page', 'next']
    });
    laypage.render({
      elem: 'test-laypage-demo9'
      ,count: 1000
      ,layout: ['prev', 'next', 'page']
    });
    laypage.render({
      elem: 'test-laypage-demo10'
      ,count: 1000
      ,layout: ['page', 'count']
    });
    
    //自定义每页条数的选择项
    laypage.render({
      elem: 'test-laypage-demo11'
      ,count: 1000
      ,limit: 100
      ,limits: [100, 300, 500]
    });
    
    
    //将一段数组分页展示
    
    //测试数据
    var testLayPageData = [
      '北京',
      '上海',
      '广州',
      '深圳',
      '杭州',
      '长沙',
      '合肥',
      '宁夏',
      '成都',
      '西安',
      '南昌',
      '上饶',
      '沈阳',
      '济南',
      '厦门',
      '福州',
      '九江',
      '宜春',
      '赣州',
      '宁波',
      '绍兴',
      '无锡',
      '苏州',
      '徐州',
      '东莞',
      '佛山',
      '中山',
      '成都',
      '武汉',
      '青岛',
      '天津',
      '重庆',
      '南京',
      '九江',
      '香港',
      '澳门',
      '台北'
    ];
    
    //调用分页
    laypage.render({
      elem: 'test-laypage-demo20'
      ,count: testLayPageData.length
      ,jump: function(obj){
        //模拟渲染
        document.getElementById('test-laypage-biuuu_city_list').innerHTML = function(){
          var arr = []
          ,thisData = testLayPageData.concat().splice(obj.curr*obj.limit - obj.limit, obj.limit);
          layui.each(thisData, function(index, item){
            arr.push('<li>'+ item +'</li>');
          });
          return arr.join('');
        }();
      }
    });
    
  });
  </script>
</body>