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
  <title>按移动端排列</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>

  <style>
  /* 这段样式只是用于演示 */
  #LAY-component-grid-mobile .layui-card-body{display: flex; justify-content: center; flex-direction: column; text-align: center; height: 200px;}
  </style>

  <div class="layui-fluid" id="LAY-component-grid-mobile">
    <div class="layui-row layui-col-space10">
      <div class="layui-col-xs6">
        <!-- 填充内容 -->
        <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-orange">1/2</div>
        </div>
      </div>
      <div class="layui-col-xs6">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-orange">2/2</div>
        </div>
      </div>
      <div class="layui-col-xs4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-cyan">1/3</div>
        </div>
      </div>
      <div class="layui-col-xs4">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-cyan">
            <div class="grid-demo grid-demo-bg2">2/3</div>
          </div>
        </div>
      </div>
      <div class="layui-col-xs4">
       <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-cyan">3/3</div>
        </div>
      </div>
    </div>
    <div class="layui-row layui-col-space10">
      <div class="layui-col-xs3">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-green">1/8</div>
        </div>
      </div>
      <div class="layui-col-xs3">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-green">2/8</div>
        </div>
      </div>
      <div class="layui-col-xs3">
       <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-green">3/8</div>
        </div>
      </div>
      <div class="layui-col-xs3">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-green">4/8</div>
        </div>
      </div>
      <div class="layui-col-xs3">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-green">5/8</div>
        </div>
      </div>
      <div class="layui-col-xs3">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-green">6/8</div>
        </div>
      </div>
      <div class="layui-col-xs3">
       <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-green">7/8</div>
        </div>
      </div>
      <div class="layui-col-xs3">
        <div class="layui-card">
          <div class="layui-card-header layui-bg-blue"></div>
          <div class="layui-card-body layui-bg-green">8/8</div>
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