<%--
  Created by IntelliJ IDEA.
  User:    Administrator
  author:  信息化管理部-方波
  site:    http://www.cr121.com/
  company: 中铁十二局集团第一工程有限公司
  Date:    2020/4/1
  Time:    15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>

<div class="layui-card-header">版本信息</div>
<div class="layui-card-body layui-text layadmin-about">
  <script type="text/html" template>
    <p>当前版本：layuiAdmin-v{{ layui.admin.v }}</p>
    <p>基于框架：layui-v{{ layui.v }}</p>
  </script>
  <div class="layui-btn-container">
    <a href="http://www.layui.com/admin/" target="_blank" class="layui-btn layui-btn-danger">获取授权</a>
    <a href="http://fly.layui.com/download/layuiAdmin/" target="_blank" class="layui-btn">下载新版</a>
  </div>
</div>

<div class="layui-card-header">关于版权</div>
<div class="layui-card-body layui-text layadmin-about">
  
  <blockquote class="layui-elem-quote" style="border: none;">
    layuiAdmin 受国家计算机软件著作权保护，未经官网正规渠道授权擅自公开产品源文件、以及直接对产品二次出售的，我们将保留追究法律责任的权利。
  </blockquote>
  <p>© 2018 <a href="http://www.layui.com/">layui.com</a> 版权所有</p>
</div>
</body>
</html>