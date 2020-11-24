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
  <title>layDate 日期组件功能演示</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>

  <style>
  .test-laydate-theme-box .layui-inline{margin: 0 20px 20px 0;}
  
  /* 定制 laydate 皮肤：gbw（由社区提供） */
  .layui-laydate-hint.laydate-theme-gbw,.layui-laydate.laydate-theme-gbw{border:1px solid #FFF;-webkit-box-shadow:0 2px 8px rgba(0,0,0,.15);-moz-box-shadow:0 2px 8px rgba(0,0,0,.15);box-shadow:0 2px 8px rgba(0,0,0,.15)}
  .layui-laydate.laydate-theme-gbw{border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;font-family:"Helvetica Neue For Number",-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"PingFang SC","Hiragino Sans GB","Microsoft YaHei","Helvetica Neue",Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;color:rgba(0,0,0,.65);-webkit-box-sizing:border-box;box-sizing:border-box;margin:0;padding:0;list-style:none;position:absolute;z-index:19850126}
  .laydate-theme-gbw .layui-laydate-header{border-bottom:1px solid #e8e8e8;padding-top:5px}
  .laydate-theme-gbw .layui-laydate-header i{font-size:12px;color:rgba(0,0,0,.45)}
  .laydate-theme-gbw .layui-laydate-header span{color:rgba(0,0,0,.85);font-weight:500}
  .laydate-theme-gbw .layui-laydate-header i:hover,.laydate-theme-gbw .layui-laydate-header span:hover{color:#40a9ff}
  .laydate-theme-gbw .layui-laydate-footer{border-top:0;padding-top:0;height:36px}
  .laydate-theme-gbw .layui-laydate-footer span:hover{color:#40a9ff}
  .laydate-theme-gbw .laydate-footer-btns{top:0}
  .laydate-theme-gbw .layui-laydate-content th{color:rgba(0,0,0,.65)}
  .laydate-theme-gbw .layui-laydate-content td{color:rgba(0,0,0,.65);border-radius:2px;-webkit-transition:background .3s ease;-o-transition:background .3s ease;transition:background .3s ease}
  .laydate-theme-gbw .layui-laydate-content .laydate-day-next,.laydate-theme-gbw .layui-laydate-content .laydate-day-prev{color:rgba(0,0,0,.25)}
  .layui-laydate.laydate-theme-gbw td.layui-this{background-color:transparent!important;border:1px solid #1890ff;border-radius:3px;font-weight:700;color:#1890ff!important}
  .layui-laydate.laydate-theme-gbw li.layui-this{background-color:#1890ff!important;color:#fff!important;border-radius:0;border:0}
  </style>
  
  <div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb">
      <a lay-href="">主页</a>
      <a><cite>组件</cite></a>
      <a><cite>日期时间</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">自定义按钮主题</div>
          <div class="layui-card-body" pad15>
            <div class="layui-form" wid100>
              <div class="layui-form-item">
                <div class="layui-inline">
                  <label class="layui-form-label">墨绿主题</label>
                  <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="test-laydate-theme-molv" placeholder="yyyy-MM-dd">
                  </div>
                </div>
                <div class="layui-inline">
                  <label class="layui-form-label">格子主题</label>
                  <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="test-laydate-theme-grid" placeholder="yyyy-MM-dd">
                  </div>
                </div>
                <div class="layui-inline">
                  <label class="layui-form-label">蓝色主题</label>
                  <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="test-laydate-theme-blue" placeholder="yyyy-MM-dd">
                  </div>
                </div>
                <div class="layui-inline">
                  <label class="layui-form-label">大红主题</label>
                  <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="test-laydate-theme-red" placeholder="yyyy-MM-dd">
                  </div>
                </div>
                <div class="layui-inline">
                  <label class="layui-form-label">自定义其它颜色</label>
                  <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="test-laydate-theme-other" placeholder="yyyy-MM-dd">
                  </div>
                </div>
                <div class="layui-inline">
                  <label class="layui-form-label">定制主题</label>
                  <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="test-laydate-theme-custom" placeholder="yyyy-MM-dd">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">直接嵌套显示</div>
          <div class="layui-card-body" pad15>
            <div class="test-laydate-theme-box">
              <div class="layui-inline" id="test-laydate-static-n1"></div>
              <div class="layui-inline" id="test-laydate-static-n2"></div>
              <div class="layui-inline" id="test-laydate-static-n3"></div>
              <div class="layui-inline" id="test-laydate-static-n4"></div>
              <div class="layui-inline" id="test-laydate-static-n5"></div>
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
  }).use(['index', 'laydate'], function(){
    var laydate = layui.laydate;
    
    //示例代码
    
    //墨绿主题
    laydate.render({
      elem: '#test-laydate-theme-molv'
      ,theme: 'molv'
    });
    
    //格子主题
    laydate.render({
      elem: '#test-laydate-theme-grid'
      ,theme: 'grid'
    });
    
    //蓝色主题
    laydate.render({
      elem: '#test-laydate-theme-blue'
      ,theme: '#1E9FFF'
    });
    
    //大红主题
    laydate.render({
      elem: '#test-laydate-theme-red'
      ,theme: '#c00'
    });
    
    //自定义其它颜色
    laydate.render({
      elem: '#test-laydate-theme-other'
      ,theme: '#393D49'
    });
    
    //定制主题
    laydate.render({
      elem: '#test-laydate-theme-custom'
      ,theme: 'gbw'
    });
    
    //直接嵌套显示
    laydate.render({
      elem: '#test-laydate-static-n1'
      ,position: 'static'
    });
    laydate.render({
      elem: '#test-laydate-static-n2'
      ,position: 'static'
      ,lang: 'en'
    });
    laydate.render({
      elem: '#test-laydate-static-n3'
      ,type: 'year'
      ,position: 'static'
    });
    laydate.render({
      elem: '#test-laydate-static-n4'
      ,type: 'month'
      ,position: 'static'
    });
    laydate.render({
      elem: '#test-laydate-static-n4'
      ,type: 'time'
      ,position: 'static'
    });
  });
  </script>
</body>
</html>