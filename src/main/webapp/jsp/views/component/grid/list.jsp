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
  <title>等比例列表排列</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/global.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>


  <style>
  /* 这段样式只是用于演示 */
  #LAY-component-grid-list .demo-list .layui-card{height: 267px;}
  </style>

  <div class="layui-fluid" id="LAY-component-grid-list">
    <div class="layui-row layui-col-space10 demo-list">
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <!-- 填充内容 -->
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg1">1/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg1">2/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg1">3/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg1">4/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg1">5/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg1">6/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg2">7/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg2">8/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg2">9/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg2">10/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg2">11/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg2">12/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg3">13/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg3">14/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg3">15/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg3">16/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg3">17/18</div>
        </div>
      </div>
      <div class="layui-col-sm4 layui-col-md3 layui-col-lg2">
        <div class="layui-card">
          <div class="grid-demo grid-demo-bg3">18/18</div>
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