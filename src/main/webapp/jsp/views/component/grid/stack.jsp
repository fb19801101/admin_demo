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
  <title>低于桌面堆叠排�</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>

  <style>
  /* 这段样式只是用于演示 */
  #LAY-component-grid-stack .layui-card-body{display: flex; justify-content: center; flex-direction: column; text-align: center; height: 200px;}
  </style>

  <div class="layui-fluid" id="LAY-component-grid-stack">
    <div class="layui-row layui-col-space10">
      <div class="layui-col-md4">
        <!-- 填充内容 -->
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">1/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">2/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">3/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">4/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">5/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">6/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">7/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">8/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">9/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">10/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">11/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">12/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">13/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">14/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">15/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">16/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">17/18</div>
        </div>
      </div>
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-green"></div>
          <div class="layui-card-body layui-bg-blue">18/18</div>
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