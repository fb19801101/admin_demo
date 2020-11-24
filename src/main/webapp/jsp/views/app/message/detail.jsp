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
  <title>消息详情标题</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>

  <div class="layui-fluid" id="LAY-app-message-detail">
    <div class="layui-card layuiAdmin-msg-detail">
      <script type="text/html" template lay-url="{{ layui.setter.base }}json/message/detail.js?id={{ layui.router().search.id }}">
        <div class="layui-card-header">
          <h1>{{ d.data.title }}</h1>
          <p>
            <span>{{ layui.util.timeAgo(d.data.time) }}</span>
          </p>
        </div>
        <div class="layui-card-body layui-text">
          <div class="layadmin-text">
            {{ d.data.content }}
            <blockquote class="layui-elem-quote">
              注：这里读取的是静态的模拟接口，实际应用时，您可以在该页面源代码中，修改成以下任意一种方式
              <ul>
                <li>将 <em>lay-url=""</em> 改成你的真实接口，系统会自动识别该动态模板，直接前端渲染。</li>
                <li>剔除 script 动态模板标签，改成服务端渲染。</li>
              </ul>
            </blockquote>
          </div>
          
          <div style="padding-top: 30px;">
            <a href="javascript:;" layadmin-event="back" class="layui-btn layui-btn-primary layui-btn-sm">返回上级</a>
          </div>
        </div>
      </script>
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