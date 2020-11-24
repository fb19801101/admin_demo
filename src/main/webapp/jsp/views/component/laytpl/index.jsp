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
  <title>模板引擎</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>

  <style>
    .site-demo-laytpl{text-align: center;}
    .site-demo-laytpl textarea,
    .site-demo-laytpl div span{width: 40%;  padding: 15px; margin: 0 15px;}
    .site-demo-laytpl textarea{height: 300px; border: none; background-color: #3F3F3F; color: #E3CEAB; font-family: Courier New; resize: none;}
    .site-demo-laytpl div span{display: inline-block; text-align: center; background: #101010; color: #fff;}
    .site-demo-tplres{margin: 10px 0; text-align: center}
    .site-demo-tplres .site-demo-tplh2,
    .site-demo-tplres .site-demo-tplview{display: inline-block; width: 50%;}
    .site-demo-tplres h2{padding: 15px; background: #e2e2e2;}
    .site-demo-tplres h3{font-weight: 700;}
    .site-demo-tplres div{padding: 14px; border: 1px solid #e2e2e2; text-align: left;}
  </style>

  <div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb">
      <a lay-href="">主页</a>
      <a><cite>组件</cite></a>
      <a><cite>模板引擎</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">在线调试</div>
          <div class="layui-card-body">
            <div class="site-demo-laytpl">
        
              <div>
                <span>数据</span>
                <span>模版</span>
              </div>
            
              <textarea class="site-demo-text" id="data">
                {
                  "title": "Layui常用模块"
                  ,"list": [
                    {
                      "modname": "弹层"
                      ,"alias": "layer"
                      ,"site": "layer.layui.com"
                    }
                    ,{
                      "modname": "表单"
                      ,"alias": "form"
                    }
                    ,{
                      "modname": "分页"
                      ,"alias": "laypage"
                    }
                    ,{
                      "modname": "日期"
                      ,"alias": "laydate"
                    }
                    ,{
                      "modname": "上传"
                      ,"alias": "upload"
                    }
                  ]
                }
              </textarea>
            
              <textarea class="site-demo-text" id="tpl">
                <h3>{{ d.title }}</h3>
                <ul>
                {{#  layui.each(d.list, function(index, item){ }}
                  <li>
                    <span>{{ item.modname }}</span>
                    <span>{{ item.alias }}：</span>
                    <span>{{ item.site || '' }}</span>
                  </li>
                {{#  }); }}

                {{#  if(d.list.length === 0){ }}
                  无数据
                {{#  } }}
                </ul>
              </textarea>
          </div>
          <div class="site-demo-tplres">
            <h2 class="site-demo-tplh2">视图结果</h2>
            <div class="site-demo-tplview" id="view"></div>
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
  }).use(['index', 'laytpl'], function(){
    var laytpl = layui.laytpl;
  
    var view = document.getElementById('view')
    ,controller = function(){
      try{
        var html = laytpl(tpl.value).render(JSON.parse(data.value));
        view.innerHTML = html;
      } catch(e){
        view.innerHTML = '<span style="color: #c00;">'+ e.toString() + '</span>';
      }
    };
    
    controller();
    
    layui.each(document.getElementsByTagName('textarea'), function(index, item){
      item.onkeyup = function(){
        controller();
      }
    });
  
  });
  </script>
</body>
</html>