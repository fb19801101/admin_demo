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
  <title>功能演示一 - 上传组件</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>

  <style>
  .layui-upload-img{width: 92px; height: 92px; margin: 0 10px 10px 0;}
  </style>

  <div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb">
      <a lay-href="">主页</a>
      <a><cite>组件</cite></a>
      <a><cite>上传组件</cite></a>
      <a><cite>功能演示一</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">普通图片上传</div>
          <div class="layui-card-body">
            <div class="layui-upload">
              <button type="button" class="layui-btn" id="test-upload-normal">上传图片</button>
              <div class="layui-upload-list">
                <img class="layui-upload-img" id="test-upload-normal-img">
                <p id="test-upload-demoText"></p>
              </div>
            </div> 
            <blockquote class="layui-elem-quote">
            为节省服务器开销，以下示例均未配置真实上传接口，所以每次上传都会报提示：请求上传接口出现异常，这属于正常现象。 
            </blockquote>   
          </div>
        </div>
      </div>
      
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">上传多张图片</div>
          <div class="layui-card-body">
            <div class="layui-upload">
              <button type="button" class="layui-btn" id="test-upload-more">多图片上传</button> 
              <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
                预览图：
                <div class="layui-upload-list" id="test-upload-more-list"></div>
             </blockquote>
            </div>
          </div>
        </div>
      </div>
      
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">指定允许上传的文件类型</div>
          <div class="layui-card-body">
            <button type="button" class="layui-btn" id="test-upload-type1"><i class="layui-icon"></i>上传文件</button>
            <button type="button" class="layui-btn layui-btn-primary" id="test-upload-type2"><i class="layui-icon"></i>只允许压缩文件</button>
            <button type="button" class="layui-btn" id="test-upload-type3"><i class="layui-icon"></i>上传视频</button>
            <button type="button" class="layui-btn" id="test-upload-type4"><i class="layui-icon"></i>上传音频</button> 
          </div>
        </div>
      </div>
      
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">设定文件大小限制</div>
          <div class="layui-card-body">
            <button type="button" class="layui-btn layui-btn-danger" id="test-upload-size">
              <i class="layui-icon"></i>上传图片
            </button>
            <div class="layui-inline layui-word-aux">
              这里以限制 60KB 为例
            </div>
          </div>
        </div>
      </div>
      
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">同时绑定多个元素，并将属性设定在元素上</div>
          <div class="layui-card-body">
            <button class="layui-btn test-upload-demoMore" lay-data="{url: '/a/'}">上传A</button>
            <button class="layui-btn test-upload-demoMore" lay-data="{url: '/b/', size:5}">上传B</button>
            <button class="layui-btn test-upload-demoMore" lay-data="{url: '/c/', accept: 'file',size:10}">上传C</button>
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
  }).use(['index', 'upload'], function(){
    var $ = layui.jquery
    ,upload = layui.upload;
  
    //普通图片上传
    var uploadInst = upload.render({
      elem: '#test-upload-normal'
      ,url: '${pageContext.request.contextPath}/upload/'
      ,before: function(obj){
        //预读本地文件示例，不支持ie8
        obj.preview(function(index, file, result){
          $('#test-upload-normal-img').attr('src', result); //图片链接（base64）
        });
      }
      ,done: function(res){
        //如果上传失败
        if(res.code > 0){
          return layer.msg('上传失败');
        }
        //上传成功
      }
      ,error: function(){
        //演示失败状态，并实现重传
        var demoText = $('#test-upload-demoText');
        demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
        demoText.find('.demo-reload').on('click', function(){
          uploadInst.upload();
        });
      }
    });
    
    //多图片上传
    upload.render({
      elem: '#test-upload-more'
      ,url: '${pageContext.request.contextPath}/upload/'
      ,multiple: true
      ,before: function(obj){
        //预读本地文件示例，不支持ie8
        obj.preview(function(index, file, result){
          $('#test-upload-more-list').append('<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">')
        });
      }
      ,done: function(res){
        //上传完毕
      }
    });
    
    //指定允许上传的文件类型
    upload.render({
      elem: '#test-upload-type1'
      ,url: '${pageContext.request.contextPath}/upload/'
      ,accept: 'file' //普通文件
      ,done: function(res){
        console.log(res)
      }
    });
    upload.render({ //允许上传的文件后缀
      elem: '#test-upload-type2'
      ,url: '/upload/'
      ,accept: 'file' //普通文件
      ,exts: 'zip|rar|7z' //只允许上传压缩文件
      ,done: function(res){
        console.log(res)
      }
    });
    upload.render({
      elem: '#test-upload-type3'
      ,url: '${pageContext.request.contextPath}/upload/'
      ,accept: 'video' //视频
      ,done: function(res){
        console.log(res)
      }
    });
    upload.render({
      elem: '#test-upload-type4'
      ,url: '${pageContext.request.contextPath}/upload/'
      ,accept: 'audio' //音频
      ,done: function(res){
        console.log(res)
      }
    });
    
    //设定文件大小限制
    upload.render({
      elem: '#test-upload-size'
      ,url: '${pageContext.request.contextPath}/upload/'
      ,size: 60 //限制文件大小，单位 KB
      ,done: function(res){
        console.log(res)
      }
    });
    
    //同时绑定多个元素，并将属性设定在元素上
    upload.render({
      elem: '.test-upload-demoMore'
      ,before: function(){
        layer.tips('接口地址：'+ this.url, this.item, {tips: 1});
      }
      ,done: function(res, index, upload){
        var item = this.item;
        console.log(item); //获取当前触发上传的元素，layui 2.1.0 新增
      }
    })
  
  });
  </script>
</body>
</html>