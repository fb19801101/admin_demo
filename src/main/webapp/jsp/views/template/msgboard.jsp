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
  <title>留言板</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/template.css" media="all">
</head>
<body>


<div class="layui-fluid layadmin-message-fluid">
  <div class="layui-row">
    <div class="layui-col-md12">
      <form class="layui-form">
        <div class="layui-form-item layui-form-text">
          <div class="layui-input-block">
            <textarea name="desc"  placeholder="请输入内容" class="layui-textarea"></textarea>
          </div>
        </div>

        <div class="layui-form-item" style="overflow: hidden;">
          <div class="layui-input-block layui-input-right">
            <button class="layui-btn" lay-submit lay-filter="formDemo">发表</button>
          </div>
          <div class="layadmin-messag-icon">
            <a href="javascript:;"><i class="layui-icon layui-icon-face-smile-b"></i></a>
            <a href="javascript:;"><i class="layui-icon layui-icon-picture"></i></a>
            <a href="javascript:;"><i class="layui-icon layui-icon-link"></i></a>
          </div>
        </div>
      </form>
    </div>
    <div class="layui-col-md12 layadmin-homepage-list-imgtxt message-content">
       <div class="media-body">
          <a href="javascript:;" class="media-left" style="float: left;">
             <img src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/res/template/portrait.png" height="46px" width="46px">
          </a>
          <div class="pad-btm">
            <p class="fontColor"><a href="javascript:;">胡歌</a></p>
            <p class="min-font">
              <span class="layui-breadcrumb" lay-separator="-">
                <a href="javascript:;" class="layui-icon layui-icon-cellphone"></a>
                <a href="javascript:;">从移动</a>
                <a href="javascript:;">11分钟前</a>
              </span>
            </p>         
         </div>
          <p class="message-text">历经打磨，@索尼中国 再献新作品—OLED电视A8F完美诞生。很开心一起参加了A8F的“首映礼”！[鼓掌]正如我们演员对舞台的热爱，索尼对科技与艺术的追求才创造出了让人惊喜的作品。作为A1兄弟款，A8F沿袭了黑科技“屏幕发声技术”和高清画质，色彩的出众表现和高端音质，让人在体验的时候如同身临其境。A8F，这次的“视帝”要颁发给你！  索尼官网预售： O网页链接 索尼旗舰店预售：</p>
       </div>
       <div class="media-body">
          <a href="javascript:;" class="media-left" style="float: left;">
             <img src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/res/template/portrait.png" height="46px" width="46px">
          </a>
          <div class="pad-btm">
            <p class="fontColor"><a href="javascript:;">胡歌</a></p>
            <p class="min-font">
              <span class="layui-breadcrumb" lay-separator="-">
                <a href="javascript:;" class="layui-icon layui-icon-cellphone"></a>
                <a href="javascript:;">从移动</a>
                <a href="javascript:;">11分钟前</a>
              </span>
            </p>         
         </div>
          <p class="message-text">历经打磨，@索尼中国 再献新作品—OLED电视A8F完美诞生。很开心一起参加了A8F的“首映礼”！[鼓掌]正如我们演员对舞台的热爱，索尼对科技与艺术的追求才创造出了让人惊喜的作品。作为A1兄弟款，A8F沿袭了黑科技“屏幕发声技术”和高清画质，色彩的出众表现和高端音质，让人在体验的时候如同身临其境。A8F，这次的“视帝”要颁发给你！  索尼官网预售： O网页链接 索尼旗舰店预售：</p>
       </div>
       <div class="layui-row message-content-btn">
          <a href="javascript:;" class="layui-btn">更多</a>
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
  layui.use(['layer','form'],function(){
    var form = layui.form;
    form.on('submit(formDemo)', function(data){
      // layer.msg(JSON.stringify(data.field));
      return false;
    });
  })
  </script>
</body>
</html>