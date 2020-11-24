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
  <title>赋值已知数据 - 数据表格</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>

  <div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb">
      <a lay-href="">主页</a>
      <a><cite>组件</cite></a>
      <a><cite>数据表格</cite></a>
      <a><cite>简单用法</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">赋值已知数据</div>
          <div class="layui-card-body">
            <table class="layui-hide" id="test-table-data"></table>
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
  }).use(['index', 'table'], function(){
    var table = layui.table;
  
    //展示已知数据
    table.render({
      elem: '#test-table-data'
      ,cols: [[ //标题栏
        {field: 'id', title: 'ID', width: 80, sort: true}
        ,{field: 'username', title: '用户名', width: 120}
        ,{field: 'email', title: '邮箱', minWidth: 150}
        ,{field: 'sign', title: '签名', minWidth: 160}
        ,{field: 'sex', title: '性别', width: 80}
        ,{field: 'city', title: '城市', width: 100}
        ,{field: 'experience', title: '积分', width: 80, sort: true}
      ]]
      ,data: [{
        "id": "10001"
        ,"username": "杜甫"
        ,"email": "xianxin@layui.com"
        ,"sex": "男"
        ,"city": "浙江杭州"
        ,"sign": "人生恰似一场修行"
        ,"experience": "116"
        ,"ip": "192.168.0.8"
        ,"logins": "108"
        ,"joinTime": "2016-10-14"
      }, {
        "id": "10002"
        ,"username": "李白"
        ,"email": "xianxin@layui.com"
        ,"sex": "男"
        ,"city": "浙江杭州"
        ,"sign": "人生恰似一场修行"
        ,"experience": "12"
        ,"ip": "192.168.0.8"
        ,"logins": "106"
        ,"joinTime": "2016-10-14"
        ,"LAY_CHECKED": true
      }, {
        "id": "10003"
        ,"username": "王勃"
        ,"email": "xianxin@layui.com"
        ,"sex": "男"
        ,"city": "浙江杭州"
        ,"sign": "人生恰似一场修行"
        ,"experience": "65"
        ,"ip": "192.168.0.8"
        ,"logins": "106"
        ,"joinTime": "2016-10-14"
      }, {
        "id": "10004"
        ,"username": "贤心"
        ,"email": "xianxin@layui.com"
        ,"sex": "男"
        ,"city": "浙江杭州"
        ,"sign": "人生恰似一场修行"
        ,"experience": "666"
        ,"ip": "192.168.0.8"
        ,"logins": "106"
        ,"joinTime": "2016-10-14"
      }, {
        "id": "10005"
        ,"username": "贤心"
        ,"email": "xianxin@layui.com"
        ,"sex": "男"
        ,"city": "浙江杭州"
        ,"sign": "人生恰似一场修行"
        ,"experience": "86"
        ,"ip": "192.168.0.8"
        ,"logins": "106"
        ,"joinTime": "2016-10-14"
      }, {
        "id": "10006"
        ,"username": "贤心"
        ,"email": "xianxin@layui.com"
        ,"sex": "男"
        ,"city": "浙江杭州"
        ,"sign": "人生恰似一场修行"
        ,"experience": "12"
        ,"ip": "192.168.0.8"
        ,"logins": "106"
        ,"joinTime": "2016-10-14"
      }, {
        "id": "10007"
        ,"username": "贤心"
        ,"email": "xianxin@layui.com"
        ,"sex": "男"
        ,"city": "浙江杭州"
        ,"sign": "人生恰似一场修行"
        ,"experience": "16"
        ,"ip": "192.168.0.8"
        ,"logins": "106"
        ,"joinTime": "2016-10-14"
      }, {
        "id": "10008"
        ,"username": "贤心"
        ,"email": "xianxin@layui.com"
        ,"sex": "男"
        ,"city": "浙江杭州"
        ,"sign": "人生恰似一场修行"
        ,"experience": "106"
        ,"ip": "192.168.0.8"
        ,"logins": "106"
        ,"joinTime": "2016-10-14"
      }]
      //,skin: 'line' //表格风格
      ,even: true
      //,page: true //是否显示分页
      //,limits: [5, 7, 10]
      //,limit: 5 //每页默认显示的数量
    });
    
  });
  </script>
</body>
</html>