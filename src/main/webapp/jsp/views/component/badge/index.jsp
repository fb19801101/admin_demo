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
  <title>徽章</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>


  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">小徽章大家族</div>
          <div class="layui-card-body">
            
            <br>小圆点：
            
            <span class="layui-badge-dot"></span>
            <span class="layui-badge-dot layui-bg-orange"></span>
            <span class="layui-badge-dot layui-bg-green"></span>
            <span class="layui-badge-dot layui-bg-cyan"></span>
            <span class="layui-badge-dot layui-bg-blue"></span>
            <span class="layui-badge-dot layui-bg-black"></span>
            <span class="layui-badge-dot layui-bg-gray"></span>
            
            <br><br>常规弧形徽章：
            
            <span class="layui-badge">6</span>
            <span class="layui-badge">99</span>
            <span class="layui-badge">61728</span>
            <span class="layui-badge">赤</span>
            <span class="layui-badge layui-bg-orange">橙</span>
            <span class="layui-badge layui-bg-green">绿</span>
            <span class="layui-badge layui-bg-cyan">青</span>
            <span class="layui-badge layui-bg-blue">蓝</span>
            <span class="layui-badge layui-bg-black">黑</span>
            <span class="layui-badge layui-bg-gray">灰</span>
            
            <br><br>边框徽章：
            
            <span class="layui-badge-rim">6</span>
            <span class="layui-badge-rim">Hot</span>
            
            <br><br>
          
          </div>
        </div>
      </div>
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">与其它元素的搭配</div>
          <div class="layui-card-body">
            
            <br>
            
            <button class="layui-btn">查看消息<span class="layui-badge layui-bg-gray">1</span></button>
            <button class="layui-btn">动态<span class="layui-badge-dot layui-bg-orange"></span></button>
             
            <br><br>
             
            <ul class="layui-nav style=" text-align:="" right;"=""> &lt;-- 小Tips：这里有没有发现，设置导航靠右对齐（或居中对齐）其实非常简单 --&gt;
              <li class="layui-nav-item">
                <a href="">控制台<span class="layui-badge">9</span></a>
              </li>
              <li class="layui-nav-item">
                <a href="">个人中心<span class="layui-badge-dot"></span></a>
              </li>
            </ul>
            <br>
             
            <div class="layui-tab layui-tab-brief">
              <ul class="layui-tab-title">
                <li class="layui-this">网站设置</li>
                <li>用户管理<span class="layui-badge-dot"></span></li>
                <li>最新邮件<span class="layui-badge">99+</span></li>
              </ul>
              <div class="layui-tab-content"></div>
            </div>
            
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
  }).use(['index']);
  </script>
</body>
</html>