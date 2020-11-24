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
  <title>邮件服务</title>
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
          <div class="layui-card-header">邮件服务</div>
          <div class="layui-card-body">
            
            <div class="layui-form" wid100 lay-filter="">
              <div class="layui-form-item">
                <label class="layui-form-label">SMTP服务器</label>
                <div class="layui-input-inline">
                  <input type="text" name="smtp_server" value="smtp.aliyun.com" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">如：smtp.163.com</div>
              </div>
              <div class="layui-form-item">
                <label class="layui-form-label">SMTP端口号</label>
                <div class="layui-input-inline" style="width: 80px;">
                  <input type="text" name="cache" lay-verify="number" value="25" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">一般为 25 或 465</div>
              </div>
              <div class="layui-form-item">
                <label class="layui-form-label">发件人邮箱</label>
                <div class="layui-input-inline">
                  <input type="text" name="send_email" value="xianxin@layui-inc.com" lay-verify="email" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label class="layui-form-label">发件人昵称</label>
                <div class="layui-input-inline">
                  <input type="text" name="send_nickname" value="管理员" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label class="layui-form-label">邮箱登入密码</label>
                <div class="layui-input-inline">
                  <input type="password" name="send_nickname" value="123456" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <div class="layui-input-block">
                  <button class="layui-btn" lay-submit lay-filter="set_system_email">确认保存</button>
                </div>
              </div>
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
  }).use(['index', 'set']);
  </script>
</body>
</html>