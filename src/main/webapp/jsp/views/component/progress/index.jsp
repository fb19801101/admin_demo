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
  <title>进度条</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>

  <style>
  /* 这段样式只是用于演示 */
  .layui-progress{margin: 20px 0;}
  </style>

  <div class="layui-fluid" id="LAY-component-progress">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">默认进度条</div>
          <div class="layui-card-body">
          
            <div class="layui-progress">
              <div class="layui-progress-bar" lay-percent="50%"></div>
            </div>
            <div class="layui-row layui-col-space15">
              <div class="layui-col-xs6">
                <div class="layui-progress">
                  <div class="layui-progress-bar" lay-percent="50%"></div>
                </div>
              </div>
              <div class="layui-col-xs6">
                <div class="layui-progress">
                  <div class="layui-progress-bar" lay-percent="50%"></div>
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">更多颜色进度条</div>
          <div class="layui-card-body">
          
            <div class="layui-progress">
              <div class="layui-progress-bar layui-bg-red" lay-percent="20%"></div>
            </div>

            <div class="layui-progress">
              <div class="layui-progress-bar layui-bg-orange" lay-percent="30%"></div>
            </div>

            <div class="layui-progress">
              <div class="layui-progress-bar layui-bg-green" lay-percent="40%"></div>
            </div>

            <div class="layui-progress">
              <div class="layui-progress-bar layui-bg-blue" lay-percent="50%"></div>
            </div>

            <div class="layui-progress">
              <div class="layui-progress-bar layui-bg-cyan" lay-percent="60%"></div>
            </div>
            
            <div class="layui-progress layui-progress-big">
              <div class="layui-progress-bar" lay-percent="20%"></div>
            </div>
            <div class="layui-progress layui-progress-big">
              <div class="layui-progress-bar layui-bg-green" lay-percent="35%"></div>
            </div>
            <div class="layui-progress layui-progress-big">
              <div class="layui-progress-bar layui-bg-cyan" lay-percent="75%"></div>
            </div>
            
          </div>
        </div>
      </div>
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">动态改变进度</div>
          <div class="layui-card-body">

              <div class="layui-progress layui-progress-big" lay-showpercent="true" lay-filter="component-progress-demo">
                <div class="layui-progress-bar layui-bg-red" lay-percent="0%"></div>
              </div>
               
              <div class="layui-btn-container" style="margin-top: 20px; margin-bottom: 0;">
                <button class="layui-btn site-demo-active" data-type="setPercent">设置50%</button>
                <button class="layui-btn site-demo-active" data-type="loading">模拟loading</button>
              </div>
            
          </div>
        </div>
      </div>
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">显示进度比文本</div>
          <div class="layui-card-body">

            <div class="layui-progress" lay-showpercent="true">
              <div class="layui-progress-bar" lay-percent="20%"></div>
            </div>
            <div class="layui-progress" lay-showpercent="true">
              <div class="layui-progress-bar" lay-percent="5 / 10"></div>
            </div>
            <div class="layui-progress layui-progress-big" lay-showpercent="true">
              <div class="layui-progress-bar" lay-percent="70%"></div>
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
  }).use(['index'], function(){
    var $ = layui.$
    ,admin = layui.admin
    ,element = layui.element
    ,router = layui.router();

    element.render('progress');
    
    //触发事件
    var active = {
      setPercent: function(){
        //设置50%进度
        element.progress('component-progress-demo', '50%')
      }
      ,loading: function(othis){
        var DISABLED = 'layui-btn-disabled';
        if(othis.hasClass(DISABLED)) return;
      
        //模拟loading
        var n = 0, timer = setInterval(function(){
          n = n + Math.random()*10|0;  
          if(n>100){
            n = 100;
            clearInterval(timer);
            othis.removeClass(DISABLED);
          }
          element.progress('component-progress-demo', n+'%');
        }, 300+Math.random()*1000);
        
        othis.addClass(DISABLED);
      }
    };
    
    $('#LAY-component-progress .site-demo-active').on('click', function(){
      var othis = $(this), type = $(this).data('type');
      active[type] ? active[type].call(this, othis) : '';
    });
    
  });
  </script>
</body>
</html>