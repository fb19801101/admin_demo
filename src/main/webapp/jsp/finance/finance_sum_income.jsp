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
  <title>收入信息查询</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
</head>

<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <div class="layui-input-inline">
    <legend>收入信息查询</legend>
  </div>
  <div class="layui-input-inline">
    <button id="demoDataSum" class="layui-btn">合计汇总</button>
    <font align="center" color="red" size="3">
      <label id="msg"></label>
    </font>
  </div>
  <table class="layui-hide" id="demoTable" lay-filter="test"></table>
</fieldset>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>收入信息汇总</legend>
  <table class="layui-hide" id="demoTableSum" lay-filter="testSum"></table>
</fieldset>

<script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>

<%--头工具栏--%>
<script type="text/html" id="toolbar">
  <div class="demoFilter layui-form-item" style="height: 30px;">
    <div class="layui-inline">
      <label class="layui-form-label" style="width: 100px; margin-top:5px;">查询条件</label>
      <div class="layui-input-inline" style="width:140px; margin-top:5px;">
        <select id="conditionField" lay-verify="required" lay-search="">
          <option value="">直接选择或搜索选择</option>
          <option selected="true" value="i_code">编号</option>
          <option value="i_date">日期</option>
          <option value="f_code">款项</option>
          <option value="m_code">成员</option>
        </select>
      </div>
    </div>

    <div class="layui-inline">
      <input class="layui-input" id="conditionValue" placeholder="输入关键字" autocomplete="off" value="" style="width:140px; margin-top:5px;">
    </div>

    <div class="layui-btn-group" style="margin-left:-15px;">
      <button class="layui-btn layui-btn-primary" lay-event="filter">
        <i class="layui-icon">&#xe615;</i>搜索</button>
      <button class="layui-btn layui-btn-primary" lay-event="clear">
        <i class="layui-icon">&#x1006;</i>清除</button>
    </div>
  </div>
</script>

<%--行工具栏--%>
<script type="text/html" id="rowbar">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>
    layui.use(['layer', 'table', 'jquery'], function(){
        var layer = layui.layer //layer弹层
            ,table = layui.table //table表格
            ,$ = layui.$; //jQuery

        //方法级渲染
        table.render({
            elem: '#demoTable'
            ,id: 'tableReload'
            ,method: 'post'
            ,title: '用户数据表'
            ,page: { //分页设定
                layout: ['prev', 'page', 'next', 'count', 'limit'] //自定义分页布局
                ,curr: 1 //设定初始在第 1 页
                ,limit: 10//每页多少数据
                ,limits:[10, 20, 30, 40, 50] //每页条数的选择项
                ,groups: 5 //连续出现的页码个数
                ,first: '首页' //自定义“首页”的内容  first: false //不显示首页
                ,last: '尾页' //自定义“尾页”的内容  false //不显示尾页
            }
            ,where: { field: 'i_code', value: ''} //请求后端接口的条件，该处就是条件错误点，按照官方给出的代码示例，原先写成了 where: { key : { type: "all" } }，结果并不是我想的那样，如此写，key 将是后端的一个类作为参数，里面有 type 属性，如果误以为 key 是 Layui 提供的格式，那就大错特错了
            ,toolbar: '#toolbar' //开启头部工具栏，并为其绑定左侧模板
            ,defaultToolbar: ['filter', 'exports', 'print']
            ,url: '${pageContext.request.contextPath}/income/searchIncomeBody' // 使用url加载（可与data加载同时存在）
            ,cellMinWidth: 100
            ,event: true
            ,cols: [[{type:'numbers', title:'序号', fixed: true},{checkbox: true, fixed: true}
                ,{field:'iCode', title:'编号', width:80, sort: true, fixed: true}
                ,{field:'iDate', title:'日期', Width:100, sort: true, fixed: true}
                ,{field:'funds', title:'款项', Width:80, sort: true, fixed: true}
                ,{field:'category', title:'类别', Width:80, sort: true, fixed: true}
                ,{field:'member', title:'成员', Width:80, sort: true, fixed: true}
                ,{field:'iQty', title:'数量', Width:100, sort: true, fixed: true}
                ,{field:'iMoney', title:'金额', Width:100, sort: true, fixed: true}
                ,{field:'iMethod', title:'方式', Width:100, sort: true, fixed: true}
                ,{field:'iInfo', title:'备注'}
                ,{fixed:'right', width:200, align:'center', toolbar:'#rowbar'}
            ]]
            ,parseData:function(res){ //这个函数非常实用，是2.4.0版本新增的，当后端返回的数据格式不符合layuitable需要的格式，用这个函数对返回的数据做处理，在2.4.0版本之前，只能通过修改table源码来解决这个问题
                return {//对返回数据的参数名称进行映射
                    code: res.code, //解析接口状态
                    msg: res.msg, //解析提示文本
                    count: res.count, //解析数据长度
                    data: res.data //解析数据列表
                };
            }
            ,request: {//请求参数名称映射配置
                pageName: 'page' //页码的参数名称，默认：page
                ,limitName: 'limit' //每页数据量的参数名，默认：limit
            }
        });

        table.render({
            elem: '#demoTableSum'
            ,id: 'tableReloadSum'
            ,method: 'post'
            ,title: '用户数据表'
            ,page: { //分页设定
                layout: ['prev', 'page', 'next', 'count', 'limit'] //自定义分页布局
                ,curr: 1 //设定初始在第 1 页
                ,limit: 10//每页多少数据
                ,limits:[10, 20, 30, 40, 50] //每页条数的选择项
                ,groups: 5 //连续出现的页码个数
                ,first: '首页' //自定义“首页”的内容  first: false //不显示首页
                ,last: '尾页' //自定义“尾页”的内容  false //不显示尾页
            }
            ,where: { field: 'funds', value: 'member'} //请求后端接口的条件，该处就是条件错误点，按照官方给出的代码示例，原先写成了 where: { key : { type: "all" } }，结果并不是我想的那样，如此写，key 将是后端的一个类作为参数，里面有 type 属性，如果误以为 key 是 Layui 提供的格式，那就大错特错了
            ,totalRow: true //开启合计行
            ,url: '${pageContext.request.contextPath}/finance/sumIncomeBody' // 使用url加载（可与data加载同时存在）
            ,cellMinWidth: 100
            ,event: true
            ,cols: [[{type:'numbers', title:'序号', fixed: true},{checkbox: true, fixed: true}
                ,{field:'iCode', title:'编号', width:80, sort: true, fixed: true, totalRowText: '金额合计'}
                ,{field:'iDate', title:'日期', Width:100, sort: true, fixed: true}
                ,{field:'funds', title:'款项', Width:80, sort: true, fixed: true}
                ,{field:'category', title:'类别', Width:80, sort: true, fixed: true}
                ,{field:'member', title:'成员', Width:80, sort: true, fixed: true}
                ,{field:'iQty', title:'数量', Width:100, sort: true, fixed: true}
                ,{field:'iMoney', title:'金额', Width:100, sort: true, fixed: true, totalRow: true}
                ,{field:'iMethod', title:'方式', Width:100, sort: true, fixed: true}
                ,{field:'iInfo', title:'备注'}
                ,{fixed:'right', width:200, align:'center', toolbar:'#rowbar'}
            ]]
            ,parseData:function(res){ //这个函数非常实用，是2.4.0版本新增的，当后端返回的数据格式不符合layuitable需要的格式，用这个函数对返回的数据做处理，在2.4.0版本之前，只能通过修改table源码来解决这个问题
                return {//对返回数据的参数名称进行映射
                    code: res.code, //解析接口状态
                    msg: res.msg, //解析提示文本
                    count: res.count, //解析数据长度
                    data: res.data //解析数据列表
                };
            }
            ,request: {//请求参数名称映射配置
                pageName: 'page' //页码的参数名称，默认：page
                ,limitName: 'limit' //每页数据量的参数名，默认：limit
            }
        });

        //监听头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'filter':
                    var field = $('#conditionField').val();
                    var value = $('#conditionValue').val();

                    //执行重载
                    table.reload('tableReload', {
                        method: 'post'
                        ,url: '${pageContext.request.contextPath}/income/searchIncomeBody'
                        ,where: {
                            field: field
                            ,value: value
                        }
                        ,page: {
                            curr: 1 //重新从第 1 页开始
                        }
                    });
                    break;
                case 'clear':
                    $('#conditionValue').val('');

                    //执行重载
                    table.reload('tableReload', {
                        method: 'post'
                        ,url: '${pageContext.request.contextPath}/income/searchIncomeBody'
                        ,where: {
                            field: 'i_code'
                            ,value: ''
                        }
                        ,page: {
                            curr: 1 //重新从第 1 页开始
                        }
                    });
                    break;
            }
        });

        //监听行工具栏事件
        table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                ,layEvent = obj.event; //获得 lay-event 对应的值
            if(layEvent === 'detail'){
                layer.msg(JSON.stringify(data));
                var pathName = parent.panelLeft.location.pathname.substring(1);
                var actionName = pathName == '' ? '' : pathName.substring(pathName.indexOf('/'));
                parent.panelLeft.location.href='${pageContext.request.contextPath}'+actionName+'?data='+encodeURI(JSON.stringify(data));
            } else if(layEvent === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del(); //删除对应行（tr）的DOM结构
                    layer.close(index);//关闭弹出层
                    //向服务端发送删除指令
                    $.getJSON('${pageContext.request.contextPath}/income/deleteIncomeBody',{
                        id: data.qyId
                    },function(data){
                        //根据后台返回的参数，来进行判断
                        if(data.code === 1){
                            layer.alert('删除成功',{icon:1,title:'提示'},function(i){
                                layer.close(i);
                                layer.close(index);//关闭弹出层
                            });

                            table.reload('tableReload',{//重载表格
                                page:{
                                    curr: 1
                                }
                            })
                        }
                    });
                });
            }
        });

        $("#demoDataSum").click(function(){
            table.reload('tableReloadSum', {
                method: 'post'
                ,url: '${pageContext.request.contextPath}/finance/sumIncomeBody'
                ,where: {
                    field: 'funds'
                    ,value: ''
                }
                ,page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
            var msg = '收入数据汇总成功！';
            document.getElementById('msg').innerHTML = msg;
        });
    });
</script>
</body>
</html>