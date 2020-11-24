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
  <title>搜索</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/template.css" media="all">
</head>
<body>

  <div class="layui-fluid">
    <div class="layadmin-caller">
      <form class="layui-form caller-seach" action="">
              <i class="layui-icon layui-icon-search caller-seach-icon caller-icon"></i>
              <input type="text" name="title" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input caller-pl32">
              <i class="layui-icon layui-icon-close caller-dump-icon caller-icon"></i>
      </form>
      <div class="layui-tab layui-tab-brief caller-tab" lay-filter="docDemoTabBrief">
        <ul class="layui-tab-title">
          <li class="layui-this">所有联系人</li>
          <li>联系方式</li>
          <li>联系地址</li>
        </ul>
      </div>
      <div class="caller-contar">
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/res/template/portrait.png" alt="" class="caller-img caller-fl">
          <div class="caller-main caller-fl">       
            <p><strong>胡歌</strong> <em>最近联系：1 小时前</em></p>
            <p class="caller-adds"><i class="layui-icon layui-icon-location"></i>浙江省广州市越秀区中山六路109</p>
            <div class="caller-iconset">
              <i class="layui-icon layui-icon-login-wechat"></i>
              <i class="layui-icon layui-icon-login-qq"></i>
              <i class="layui-icon layui-icon-login-weibo"></i>
            </div>
          </div>
          <button class="layui-btn layui-btn-sm caller-fr">
            <i class="layui-icon layui-icon-ok"></i>
            已收藏
          </button>
        </div>
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/res/template/portrait.png" alt="" class="caller-img caller-fl">
          <div class="caller-main caller-fl">       
            <p><strong>胡歌</strong> <em>最近联系：1 小时前</em></p>
            <p class="caller-adds"><i class="layui-icon layui-icon-location"></i>浙江省广州市越秀区中山六路109</p>
            <div class="caller-iconset">
              <i class="layui-icon layui-icon-login-wechat"></i>
              <i class="layui-icon layui-icon-login-qq"></i>
              <i class="layui-icon layui-icon-login-weibo"></i>
            </div>
          </div>
          <button class="layui-btn layui-btn-sm layui-btn layui-btn-primary caller-fr">
            已收藏
          </button>
        </div>
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/res/template/portrait.png" alt="" class="caller-img caller-fl">
          <div class="caller-main caller-fl">       
            <p><strong>胡歌</strong> <em>最近联系：1 小时前</em></p>
            <p class="caller-adds"><i class="layui-icon layui-icon-location"></i>浙江省广州市越秀区中山六路109</p>
            <div class="caller-iconset">
              <i class="layui-icon layui-icon-login-wechat"></i>
              <i class="layui-icon layui-icon-login-qq"></i>
              <i class="layui-icon layui-icon-login-weibo"></i>
            </div>
          </div>
          <button class="layui-btn layui-btn-sm caller-fr">
            <i class="layui-icon layui-icon-ok"></i>
            已收藏
          </button>
        </div>
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/res/template/portrait.png" alt="" class="caller-img caller-fl">
          <div class="caller-main caller-fl">       
            <p><strong>胡歌</strong> <em>最近联系：1 小时前</em></p>
            <p class="caller-adds"><i class="layui-icon layui-icon-location"></i>浙江省广州市越秀区中山六路109</p>
            <div class="caller-iconset">
              <i class="layui-icon layui-icon-login-wechat"></i>
              <i class="layui-icon layui-icon-login-qq"></i>
              <i class="layui-icon layui-icon-login-weibo"></i>
            </div>
          </div>
          <button class="layui-btn layui-btn-sm layui-btn layui-btn-primary caller-fr">
            已收藏
          </button>
        </div>
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/res/template/portrait.png" alt="" class="caller-img caller-fl">
          <div class="caller-main caller-fl">       
            <p><strong>胡歌</strong> <em>最近联系：1 小时前</em></p>
            <p class="caller-adds"><i class="layui-icon layui-icon-location"></i>浙江省广州市越秀区中山六路109</p>
            <div class="caller-iconset">
              <i class="layui-icon layui-icon-login-wechat"></i>
              <i class="layui-icon layui-icon-login-qq"></i>
              <i class="layui-icon layui-icon-login-weibo"></i>
            </div>
          </div>
          <button class="layui-btn layui-btn-sm caller-fr">
            <i class="layui-icon layui-icon-ok"></i>
            已收藏
          </button>
        </div>
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/res/template/portrait.png" alt="" class="caller-img caller-fl">
          <div class="caller-main caller-fl">       
            <p><strong>胡歌</strong> <em>最近联系：1 小时前</em></p>
            <p class="caller-adds"><i class="layui-icon layui-icon-location"></i>浙江省广州市越秀区中山六路109</p>
            <div class="caller-iconset">
              <i class="layui-icon layui-icon-login-wechat"></i>
              <i class="layui-icon layui-icon-login-qq"></i>
              <i class="layui-icon layui-icon-login-weibo"></i>
            </div>
          </div>
          <button class="layui-btn layui-btn-sm layui-btn layui-btn-primary caller-fr">
            已收藏
          </button>
        </div>
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/res/template/portrait.png" alt="" class="caller-img caller-fl">
          <div class="caller-main caller-fl">       
            <p><strong>胡歌</strong> <em>最近联系：1 小时前</em></p>
            <p class="caller-adds"><i class="layui-icon layui-icon-location"></i>浙江省广州市越秀区中山六路109</p>
            <div class="caller-iconset">
              <i class="layui-icon layui-icon-login-wechat"></i>
              <i class="layui-icon layui-icon-login-qq"></i>
              <i class="layui-icon layui-icon-login-weibo"></i>
            </div>
          </div>
          <button class="layui-btn layui-btn-sm caller-fr">
            <i class="layui-icon layui-icon-ok"></i>
            已收藏
          </button>
        </div>
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/res/template/portrait.png" alt="" class="caller-img caller-fl">
          <div class="caller-main caller-fl">       
            <p><strong>胡歌</strong> <em>最近联系：1 小时前</em></p>
            <p class="caller-adds"><i class="layui-icon layui-icon-location"></i>浙江省广州市越秀区中山六路109</p>
            <div class="caller-iconset">
              <i class="layui-icon layui-icon-login-wechat"></i>
              <i class="layui-icon layui-icon-login-qq"></i>
              <i class="layui-icon layui-icon-login-weibo"></i>
            </div>
          </div>
          <button class="layui-btn layui-btn-sm layui-btn layui-btn-primary caller-fr">
            已收藏
          </button>
        </div>
      </div>
      <div id="demo1"></div>
    </div>
  </div>
  
  <script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>  
  <script>
  layui.config({
    base: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'laypage','layer'], function(){
    var laypage = layui.laypage,layer = layui.layer;
      laypage.render({
    elem: 'demo1'
    ,count: 70 //数据总数

  });
    
  });
  </script>
</body>
</html>