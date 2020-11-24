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
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
  <title>款项信息添加</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/check.js"></script>
</head>

<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>款项信息添加</legend>
</fieldset>

<form class="layui-form" method="POST" action="insertFunds" lay-filter="demoForm" id="" name="myform" onSubmit="return checkGuidance(myform)">
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">编码</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="fCode" name="fCode" lay-verify="required" autocomplete="off" value="${message['funds'].fCode}">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">名称</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="fName" name="fName" lay-verify="required" autocomplete="off" value="${message['funds'].fName}">
      </div>
    </div>
  </div>

  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">类别</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="fCategory" name="fCategory" lay-verify="required" autocomplete="off" value="${message['funds'].fCategory}">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">商家</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="fBusiness" name="fBusiness" lay-verify="required" autocomplete="off" value="${message['funds'].fBusiness}">
      </div>
    </div>
  </div>

  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">单位</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="fUnit" name="fUnit" lay-verify="required" autocomplete="off" value="${message['funds'].fUnit}">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">单价</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="fPrice" name="fPrice" lay-verify="required|number" autocomplete="off" value="${message['funds'].fPrice}">
      </div>
    </div>
  </div>

  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-inline" style="width: 515px">
      <textarea class="layui-textarea" id="fInfo" name="fInfo" placeholder="请输入内容" value="${message['funds'].fInfo}"></textarea>
    </div>
  </div>

  <div class="layui-form-item">
    <div class="layui-input-block">
      <button type="submit" class="layui-btn" lay-submit="" lay-filter="demoForm">提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
      <font align="center" color="red" size="3">${message['msg']}</font>
    </div>
  </div>
</form>

<script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>

<script>
  layui.use(['form', 'layedit', 'laydate'], function(){
    var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate
            ,$ = layui.$;

    //日期
    laydate.render({
      elem: '#date'
    });
    laydate.render({
      elem: '#date1'
    });

    //监听下拉框
    form.on('select(selectContract)', function(data){
        // value：data.value
        // 文本：data.elem[data.elem.selectedIndex].text;
        $("#ctCode").val(data.value);

        if(data.value == 1){
            $("#searchSessionNum").attr("disabled","true");
            form.render('select');
        }else{
            $("#searchSessionNum").removeAttr("disabled");
            form.render('select');//select是固定写法 不是选择器
        }
    });

    //创建一个编辑器
    var editIndex = layedit.build('LAY_demo_editor');

    //自定义验证规则
    form.verify({
      title: function(value){
        if(value.length < 5){
          return '标题至少得5个字符啊';
        }
      }
      ,pass: [
        /^[\S]{6,12}$/
        ,'密码必须6到12位，且不能出现空格'
      ]
      ,content: function(value){
        layedit.sync(editIndex);
      }
    });

    //监听指定开关
    form.on('switch(switchTest)', function(data){
      layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
        offset: '6px'
      });
      layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
    });

    //监听提交
    form.on('submit(demoForm)', function(data){
      layer.alert(JSON.stringify(data), {
        title: '最终的提交信息'
      });
      return true;
    });

    //表单赋值
    var urlData = function () {
        var reg = new RegExp("(^|&)"+"data"+"=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
        var r = window.location.search.substr(1).match(reg); //匹配目标参数
        if(r != null) return decodeURI(r[2]); //decodeURI参数内容。
        return null; //返回参数值
    };
    form.val('demoForm', JSON.parse(urlData()));

    //表单取值
    layui.$('#LAY-component-form-getval').on('click', function(){
      var data = form.val('demoForm');
      alert(JSON.stringify(data));
    });
  });
</script>
</body>
</html>