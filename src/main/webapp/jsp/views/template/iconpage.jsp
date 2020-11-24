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
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
  <meta charset="utf-8">
  <title>图标</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/global.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/template.css" media="all">
</head>
<body>


  <div class="site-content">
    <h1 class="site-h1">字体图标</h1>
    <div class="site-tips site-text">
      <p>layui 的所有图标全部采用字体形式，取材于阿里巴巴矢量图标库（iconfont）。因此你可以把一个 icon 看作是一个普通的文字，这意味着你直接用 css 控制文字属性，如 color、font-size，就可以改变图标的颜色和大小。你可以通过 <em>font-class</em> 或 <em>unicode</em> 来定义不同的图标。</p>
    </div>

    <div style="margin: 15px 0; text-align: center; background-color: #F2F2F2;">
      <ins class="adsbygoogle" style="display:inline-block;width:728px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="9841027833"></ins>
    </div>

    <div class="site-title">
      <fieldset><legend><a name="use">使用方式</a></legend></fieldset>
    </div>
    <div class="site-text">
      <p>通过对一个内联元素（一般推荐用 <em>i</em>标签）设定 <em>class="layui-icon"</em>，来定义一个图标，然后对元素加上图标对应的 <em>font-class</em>（注意：layui 2.3.0 之前只支持采用 <em>unicode 字符</em>)，即可显示出你想要的图标，譬如：</p>
      <pre class="layui-code">
          从 layui 2.3.0 开始，支持 font-class 的形式定义图标：
          &lt;i class="layui-icon layui-icon-face-smile">&lt;/i>
          <pre class="layui-code">
              注意：在 layui 2.3.0 之前的版本，只能设置 unicode 来定义图标
              &lt;i class="layui-icon">&amp;#xe60c;&lt;/i>
              其中的 &amp;#xe60c; 即是图标对应的 unicode 字符
           </pre>
          你可以去定义它的颜色或者大小，如：<i class="layui-icon layui-icon-face-smile" style="font-size: 30px; color: #FF5722;"></i>
          &lt;i class="layui-icon layui-icon-face-smile" style="font-size: 30px; color: #1E9FFF;">&lt;/i>
        </pre>
    </div>


    <div class="site-title">
      <fieldset><legend><a name="table">内置图标一览表（168个）</a></legend></fieldset>
    </div>
    <ul class="site-doc-icon">
      <c:forEach items="${jsons}" var="json">
        <li>
          <i class="layui-icon ${json.font_class}"></i>
          <div class="doc-icon-name">${json.name}</div>
          <div class="doc-icon-code">&amp;${json.unicode};</div>
          <div class="doc-icon-fontclass">${json.font_class}</div>
        </li>
      </c:forEach>
    </ul>

    <div class="site-title">
      <fieldset><legend><a name="access">跨域问题的解决</a></legend></fieldset>
    </div>
    <div class="site-text">
      <p>由于浏览器存在同源策略，所以如果 layui（里面含图标字体文件）所在的地址与你当前的页面地址<em>不在同一个域下</em>，即会出现图标跨域问题。所以要么你就把 layui 与网站放在同一服务器，要么就对 layui 所在的资源服务器的 Response Headers 加上属性：<em>Access-Control-Allow-Origin: *</em> </p>
    </div>

    <div class="layui-elem-quote">
      <p>layui - 用心与你沟通</p>
    </div>
  </div>


  <script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>  
  <script>
  layui.config({
    base: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'code'], function(){ //加载code模块

    layui.code(); //引用code方法
  });
  </script>
</body>
</html>