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
  <title>工具模块 - 组件</title>
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
      <a><cite>工具模块</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">倒计时</div>
          <div class="layui-card-body">
            请选择要计算的日期：
            <div class="layui-inline">
              <input type="text" class="layui-input" id="test-util-countdown" value="2099-01-01 00:00:00">
            </div>
            <blockquote class="layui-elem-quote" style="margin-top: 10px;">
              <div id="test-util-countdown-ret"></div>
            </blockquote>
          </div>
        </div>
      </div>
      
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">某个时间在当前时间的多久前</div>
          <div class="layui-card-body">
            请选择要计算的日期：
            <div class="layui-inline">
              <input type="text" class="layui-input" id="test-util-timeago">
            </div>
            <span class="layui-word-aux" id="test-util-timeago-ret"></span>
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
  }).use(['index', 'util', 'laydate', 'layer'], function(){
    var util = layui.util
    ,laydate = layui.laydate
    ,layer = layui.layer;
    
    //倒计时
    var thisTimer, setCountdown = function(y, M, d, H, m, s){
      var endTime = new Date(y, M||0, d||1, H||0, m||0, s||0) //结束日期
      ,serverTime = new Date(); //假设为当前服务器时间，这里采用的是本地时间，实际使用一般是取服务端的
       
      clearTimeout(thisTimer);
      util.countdown(endTime, serverTime, function(date, serverTime, timer){
        var str = date[0] + '天' + date[1] + '时' +  date[2] + '分' + date[3] + '秒';
        lay('#test-util-countdown-ret').html(str);
        thisTimer = timer;
      });
    };
    setCountdown(2099,1,1);
    
    laydate.render({
      elem: '#test-util-countdown'
      ,type: 'datetime'
      ,done: function(value, date){
        setCountdown(date.year, date.month - 1, date.date, date.hours, date.minutes, date.seconds);
      }
    });
    
    
    //某个时间在当前时间的多久前
    var setTimeAgo = function(y, M, d, H, m, s){
      var str = util.timeAgo(new Date(y, M||0, d||1, H||0, m||0, s||0));
      lay('#test-util-timeago-ret').html(str);
    };
    
    laydate.render({
      elem: '#test-util-timeago'
      ,type: 'datetime'
      ,done: function(value, date){
        setTimeAgo(date.year, date.month - 1, date.date, date.hours, date.minutes, date.seconds);
      }
    });
    
  });
  </script>
</body>
</html>