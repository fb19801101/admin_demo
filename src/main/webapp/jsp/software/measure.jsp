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
  <title>平曲线计算</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <style>
    .label-width{width:120px}
    .layui-btn-group .layui-btn{margin-left: 3px!important;}
  </style>
</head>

<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>曲线要素录入</legend>
</fieldset>

<div class="demoSearch layui-form">
  <div class="layui-inline">
    <label class="layui-form-label">查询条件</label>
    <div class="layui-input-inline">
      <select name="conditionField" id="conditionField" lay-verify="required" lay-search="" lay-filter="conditionField">
        <option value="">直接选择或搜索选择</option>
        <option selected="true" value="ce_JD">交点编号</option>
        <option value="ce_DK">交点里程</option>
        <option value="ce_QX">曲线线路</option>
      </select>
    </div>
  </div>

  <div class="layui-inline" id="conditionInput" style="width: 300px">
    <input class="layui-input" name="conditionValue" id="conditionValue" autocomplete="off">
  </div>
  <div class="layui-input-inline" id="conditionSelect" style="width: 300px; display: none">
    <select name="conditionSelValue" id="conditionSelValue" lay-verify="required" lay-search="" lay-filter="conditionSelValue"></select>
  </div>

  <button type="button" class="layui-btn" id="conditionSearch" data-type="conditionSearch">搜索</button>
</div>

<table class="layui-hide" id="demoTable" lay-filter="test"></table>

<script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>

<%--头工具栏--%>
<script type="text/html" id="demoToolbar">
  <div class="layui-btn-container">
    <div class="layui-btn-group">
      <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
      <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
    </div>
    <div class="layui-btn-group">
      <button class="layui-btn layui-btn-sm" lay-event="clearAllData">清空所有行数据</button>
      <button class="layui-btn layui-btn-sm" lay-event="initCurveElement">初始化曲线要素</button>
    </div>
    <div class="layui-btn-group">
      <button class="layui-btn layui-btn-sm" lay-event="calculateCoordinate">逐桩坐标计算</button>
      <button class="layui-btn layui-btn-sm" lay-event="exportExcelCurveElement">导出Excel数据</button>
      <button class="layui-btn layui-btn-sm" id="excel-upload-import">导入Excel数据</button>
    </div>
  </div>
</script>
<script type="text/html" id="coordToolbar">
  <div class="layui-btn-container">
    <button class="layui-btn layui-btn-sm" lay-event="calculate">坐标计算</button>
    <button class="layui-btn layui-btn-sm" lay-event="transform">坐标转换</button>
  </div>
</script>

<%--行工具栏--%>
<script type="text/html" id="demoBar">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<div class="site-text" id="demoForm" style="margin-top: 10px; display: none" target="testForm">
  <form class="layui-form" id="formLayer" onsubmit="return false">
    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">交点编号<br>JD</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceJd" name="ceJd" lay-verify="required" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">交点里程<br>DK</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceDk" name="ceDk" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">交点坐标<br>EX</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceEx" name="ceEx" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">交点坐标<br>NY</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceNy" name="ceNy" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">前切线长<br>T1</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceT1" name="ceT1" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">后切线长<br>T2</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceT2" name="ceT2" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
  </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">前缓和曲线半径<br>R1</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceR1" name="ceR1" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">后缓和曲线半径<br>R2</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceR2" name="ceR2" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">前缓和曲线参数<br>A1</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceA1" name="ceA1" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">后缓和曲线参数<br>A2</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceA2" name="ceA2" autocomplete="off">
        </div>
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">前缓和曲线长<br>Ls1</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceLs1" name="ceLs1" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">后缓和曲线长<br>Ls2</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceLs2" name="ceLs2" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">圆曲线半径<br>Rc</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceRc" name="ceRc" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">圆曲线长<br>Lc</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceLc" name="ceLc" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">外失距<br>E</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceE" name="ceE" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">夹直线长<br>Lz</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceLz" name="ceLz" autocomplete="off">
        </div>
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">偏角<br>Pj</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="cePj" name="cePj" lay-verify="required|number" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">方位角<br>Fwj</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceFwj" name="ceFwj" autocomplete="off">
        </div>
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">起点里程<br>QD</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceQd" name="ceQd" disabled="true" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">直缓里程<br>QD</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceZh" name="ceZh" disabled="true" autocomplete="off">
        </div>
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">缓圆里程<br>ZD</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceHy" name="ceHy" disabled="true" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">圆缓里程<br>QD</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceYh" name="ceYh" disabled="true" autocomplete="off">
        </div>
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label label-width">缓直里程<br>ZD</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceHz" name="ceHz" disabled="true" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label label-width">终点里程<br>ZD</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="ceZd" name="ceZd" disabled="true" autocomplete="off">
        </div>
      </div>
    </div>
  </form>
</div>
<div class="site-text" id="coordForm" style="margin-top: 10px; display: none">
  <div class="layui-fluid layui-form">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md6">
        <div class="layui-row layui-col-space15">
          <div class="layui-card">
              <div class="layui-card-header">坐标计算参数</div>
              <div class="layui-card-body">
                <div class="layui-form-item">
                  <div class="layui-inline">
                    <label class="layui-form-label">断链起点</label>
                    <div class="layui-input-inline">
                      <input type="text" class="layui-input" id="dkBeginBreak" name="dkBeginBreak" lay-verify="required|number" placeholder="桩号格式为浮点数值" value="178065" autocomplete="off">
                    </div>
                  </div>
                  <div class="layui-inline">
                    <label class="layui-form-label">断链终点</label>
                    <div class="layui-input-inline">
                      <input type="text" class="layui-input" id="dkEndBreak" name="dkEndBreak" lay-verify="required|number" placeholder="桩号格式为浮点数值" value="178221.702" autocomplete="off">
                    </div>
                  </div>
                </div>
                <div class="layui-form-item">
                  <div class="layui-inline">
                    <label class="layui-form-label">断链标识</label>
                    <div class="layui-input-inline">
                      <input type="text" class="layui-input" id="dkLabelBreak" name="dkLabelBreak" lay-verify="required" placeholder="建议使用英文大写字母" value="A" autocomplete="off">
                    </div>
                  </div>
                  <div class="layui-inline">作为里程桩号格式化后，区分断链桩号显示使用</div>
                </div>
                <div class="layui-form-item">
                  <div class="layui-inline">
                    <label class="layui-form-label">起点桩号</label>
                    <div class="layui-input-inline">
                      <input type="text" class="layui-input" id="dkBegin" name="dkBegin" lay-verify="required|number" placeholder="桩号格式为浮点数值" autocomplete="off">
                    </div>
                  </div>
                  <div class="layui-inline">
                    <label class="layui-form-label">终点桩号</label>
                    <div class="layui-input-inline">
                      <input type="text" class="layui-input" id="dkEnd" name="dkEnd" lay-verify="required|number" placeholder="桩号格式为浮点数值" autocomplete="off">
                    </div>
                  </div>
                </div>
                <div class="layui-form-item">
                  <div class="layui-inline">
                    <label class="layui-form-label">桩间距</label>
                    <div class="layui-input-inline">
                      <input type="text" class="layui-input" id="dkGap" name="dkGap" lay-verify="required|number" placeholder="桩间距格式为浮点数值" value="20.0" autocomplete="off">
                    </div>
                  </div>
                  <div class="layui-inline">
                    <label class="layui-form-label">桩偏距</label>
                    <div class="layui-input-inline">
                      <input type="text" class="layui-input" id="dkDist" name="dkDist" lay-verify="required|number" placeholder="桩偏距：+值为左偏，-值为右偏" autocomplete="off">
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
        <div class="layui-row layui-col-space15">
          <div class="layui-card">
            <div class="layui-card-header">坐标计算结果</div>
            <div class="layui-card-body">
              <table class="layui-hide" id="calcTable" lay-filter="coord"></table>
            </div>
          </div>
        </div>
      </div>

      <div class="layui-col-md6">
        <div class="layui-row layui-col-space15">
          <div class="layui-card">
            <div class="layui-card-header">坐标转换参数</div>
            <div class="layui-card-body">
              <div class="layui-form-item">
                <div class="layui-inline">
                  <label class="layui-form-label">坐标系类型</label>
                  <div class="layui-input-inline">
                    <select name="xyTp" id="xyTp" lay-verify="required" lay-search="">
                      <option selected="true" value="1">1954北京坐标系</option>
                      <option value="2">1980西安坐标系</option>
                      <option value="3">WGS-84坐标系</option>
                      <option value="4">2000国家坐标系</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="layui-form-item">
                <div class="layui-inline">
                  <label class="layui-form-label">中央子午线</label>
                  <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="xyL0" name="xyL0" lay-verify="required|number" placeholder="子午线经度值" value="113.2" autocomplete="off">
                  </div>
                </div>
                <div class="layui-inline">
                  <label class="layui-form-label">投影面高程</label>
                  <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="xyH0" name="xyH0" lay-verify="required|number" placeholder="投影面高程值" autocomplete="off">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="layui-row layui-col-space15">
          <div class="layui-card">
            <div class="layui-card-header">坐标转换结果</div>
            <div class="layui-card-body">
              <table class="layui-hide" id="transTable" lay-filter="coord"></table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="site-text" id="breakForm" style="margin-top: 10px; display: none" target="testForm">
  <form class="layui-form" id="breakLayer" onsubmit="return false">
    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label">断链起点</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="dk-begin" name="dk-begin" lay-verify="required|number" placeholder="桩号格式为浮点数值" value="178065" autocomplete="off">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">断链终点</label>
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="dk-end" name="dk-end" lay-verify="required|number" placeholder="桩号格式为浮点数值" value="178221.702" autocomplete="off">
        </div>
      </div>
    </div>
  </form>
</div>

<script>
    layui.use(['layer', 'form', 'table', 'upload', 'jquery'], function(){
        var layer = layui.layer //layer弹层
            ,form = layui.form //form表单
            ,table = layui.table //table表格
            ,upload = layui.upload //上传组件
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
            ,where: { field: "ce_QX", value: ""} //请求后端接口的条件，该处就是条件错误点，按照官方给出的代码示例，原先写成了 where: { key : { type: "all" } }，结果并不是我想的那样，如此写，key 将是后端的一个类作为参数，里面有 type 属性，如果误以为 key 是 Layui 提供的格式，那就大错特错了
            ,totalRow: true //开启合计行
            ,toolbar: '#demoToolbar' //开启头部工具栏，并为其绑定左侧模板
            ,defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
                title: '提示'
                ,layEvent: 'layTable_Tips'
                ,icon: 'layui-icon-tips'
            },
                {
                    title: '添加'
                    ,layEvent: 'layTable_Add'
                    ,icon: 'layui-icon-add-circle'
                }]
            ,url: '${pageContext.request.contextPath}/software/searchCurveElementBody' // 使用url加载（可与data加载同时存在）
            ,cellMinWidth: 100
            ,event: true
            ,cols: [[{type:'numbers', title:'序号', fixed: true},{checkbox: true, fixed: true}
                ,{field:'ceJd', title:'交点编号 JD', width:100, sort: true, fixed: true}
                ,{field:'ceDk', title:'交点里程 DK', width:100, sort: true, fixed: true}
                ,{field:'ceEx', title:'交点坐标 EX', width:100} ,{field:'ceNy', title:'交点坐标 NY', width:100}
                ,{field:'ceT1', title:'前切线长 T1', width:100} ,{field:'ceT2', title:'后切线长 T2', width:100}
                ,{field:'ceR1', title:'前缓和曲线半径 R1', width:100} ,{field:'ceR2', title:'后缓和曲线半径 R2', width:100}
                ,{field:'ceA1', title:'前缓和曲线参数 A1', width:100} ,{field:'ceA1', title:'后缓和曲线参数 A2', width:100}
                ,{field:'ceLs1', title:'前缓和曲线长 Ls1', width:100} ,{field:'ceLs2', title:'后缓和曲线长 Ls2', width:100}
                ,{field:'ceRc', title:'圆曲线半径 Rc', width:100} ,{field:'ceLc', title:'圆曲线长 Lc', width:100}
                ,{field:'ceE', title:'外失距 E', width:100} ,{field:'ceLz', title:'夹直线长 Lz', width:100}
                ,{field:'cePj', title:'偏角 Pj', width:100} ,{field:'ceFwj', title:'方位角 Fwj', width:100}
                ,{field:'ceQd', title:'起点里程 QD', width:100} ,{field:'ceZh', title:'直缓里程 ZH', width:100}
                ,{field:'ceHy', title:'缓圆里程 HY', width:100} ,{field:'ceYh', title:'圆缓里程 YH', width:100}
                ,{field:'ceHz', title:'缓直里程 HZ', width:100} ,{field:'ceZd', title:'终点里程 ZD', width:100}
                ,{fixed:'right', width:200, align: 'center', toolbar: '#demoBar'}
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
            elem: '#calcTable'
            ,id: 'calcReload'
            ,method: 'post'
            ,title: '用户数据表'
            ,toolbar: '#coordToolbar' //开启头部工具栏，并为其绑定左侧模板
            ,cellMinWidth: 100
            ,data:[]
            ,event: true
            ,cols: [[{type:'numbers', title:'序号', fixed: true},
                {field:'dkS', title:'里程', width:200, sort: true, fixed: true}
                ,{field:'dkX', title:'坐标X', width:180}
                ,{field:'dkY', title:'坐标Y', width:180}
                ,{field:'dkD', title:'偏距', width:80}
            ]]
            ,parseData:function(res){ //这个函数非常实用，是2.4.0版本新增的，当后端返回的数据格式不符合layuitable需要的格式，用这个函数对返回的数据做处理，在2.4.0版本之前，只能通过修改table源码来解决这个问题
                return {//对返回数据的参数名称进行映射
                    code: res.code, //解析接口状态
                    msg: res.msg, //解析提示文本
                    count: res.count, //解析数据长度
                    data: res.data //解析数据列表
                };
            }
        });

        table.render({
            elem: '#transTable'
            ,id: 'transReload'
            ,method: 'post'
            ,title: '用户数据表'
            ,toolbar: '#coordToolbar' //开启头部工具栏，并为其绑定左侧模板
            ,cellMinWidth: 100
            ,data:[]
            ,event: true
            ,cols: [[{type:'numbers', title:'序号', fixed: true},
                {field:'dkS', title:'里程', width:120, sort: true, fixed: true}
                ,{field:'dkX', title:'坐标X', width:130}
                ,{field:'dkY', title:'坐标Y', width:130}
                ,{field:'dkL', title:'经度L', width:130}
                ,{field:'dkN', title:'维度N', width:130}
            ]]
            ,parseData:function(res){ //这个函数非常实用，是2.4.0版本新增的，当后端返回的数据格式不符合layuitable需要的格式，用这个函数对返回的数据做处理，在2.4.0版本之前，只能通过修改table源码来解决这个问题
                return {//对返回数据的参数名称进行映射
                    code: res.code, //解析接口状态
                    msg: res.msg, //解析提示文本
                    count: res.count, //解析数据长度
                    data: res.data //解析数据列表
                };
            }
        });

        //监听头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    layer.alert(JSON.stringify(checkStatus.data));
                    break;
                case 'getCheckLength':
                    layer.msg('选中了：'+ checkStatus.data.length + ' 个');
                    break;
                case 'clearAllData':
                    table.reload('tableReload', {
                        method: 'post'
                        ,url: '${pageContext.request.contextPath}/software/clearCurveElementBody'
                        ,page: {
                            curr: 1 //重新从第 1 页开始
                        }
                    });
                    break;
                case 'initCurveElement':
                    var qx = $('#conditionSelValue').val();
                    if(qx == null) {
                        alert("请先在搜索中选择曲线类型!")
                    } else {
                        layer.open({
                            type: 1
                            ,skin: 'layui-layer-molv'
                            ,title:"逐桩坐标计算参数"
                            ,area: ['700px', '180px']
                            ,shadeClose: true
                            ,btn: ['确定', '取消']
                            // ,content: $('body',parent.document).find('#panelLeft').contents().find('#demoInsert').html()
                            ,content: $('#breakForm')
                            ,yes: function(index){
                                layer.close(index);
                                table.reload('tableReload', {
                                    method: 'post'
                                    ,url: '${pageContext.request.contextPath}/software/initCurveElementBody'
                                    ,where: { ceQx: qx, dk_begin: $('#dk-begin').val(), dk_end: $('#dk-end').val()}
                                    ,page: {
                                        curr: 1 //重新从第 1 页开始
                                    }
                                });
                            }
                        });
                    }
                    break;
                case 'calculateCoordinate':
                    var qx = $('#conditionSelValue').val();
                    if(qx == null) {
                        alert("请先在搜索中选择曲线类型!")
                    } else {
                        layer.open({
                            type: 1
                            , skin: 'layui-layer-molv'
                            , title: "线路坐标计算转换"
                            , area: ['1500px', '800px']
                            , resize: false
                            , shadeClose: true
                            , btn: ['确定', '取消']
                            // ,content: $('body',parent.document).find('#panelLeft').contents().find('#demoInsert').html()
                            , content: $('#coordForm')
                            , yes: function (index) {
                                layer.close(index);
                            }
                        });
                    }
                    break;
                case 'exportExcelCurveElement':
                    window.location.href = "${pageContext.request.contextPath}/software/exportExcelCurveElement";
                    break;

                //自定义头工具栏右侧图标 - 提示
                case 'layTable_Tips':
                    layer.alert('这是工具栏右侧自定义的一个图标按钮');
                    break;

                case 'layTable_Add':
                    var qx = $('#conditionSelValue').val();
                    if(qx == null) {
                        alert("请先在搜索中选择曲线类型!")
                    } else {
                      layer.open({
                        type: 1
                        ,skin: 'layui-layer-molv'
                        ,title:"新增曲线要素参数信息"
                        ,area: ['750px', '1050px']
                        ,shadeClose: true
                        ,btn: ['确定', '取消']
                        // ,content: $('body',parent.document).find('#panelLeft').contents().find('#demoInsert').html()
                        ,content: $('#demoForm')
                        ,success: function () {
                            //自定义验证规则
                            form.verify({
                                title: function(value){
                                    if(value.length < 5){
                                        return '标题至少得5个字符啊';
                                    }
                                }
                                ,password: [ // 自定义密码验证
                                    /^[\S]{6,12}$/
                                    ,'密码必须6到12位，且不能出现空格'
                                ]
                                ,length: function(value){
                                    if(value.length > 5){
                                        return '姓名最多为5个字符啊！';
                                    }
                                }
                            });

                            layer.alert('请认真填写表单！');
                        }
                        ,yes: function(index){
                            $.getJSON('${pageContext.request.contextPath}/software/insertCurveElementBody',{
                                ceQx: qx
                                ,ceJd: $('#ceJd').val()
                                ,ceDk: $('#ceDk').val()
                                ,ceEx: $('#ceEx').val()
                                ,ceNy: $('#ceNy').val()
                                ,ceT1: $('#ceT1').val()
                                ,ceT2: $('#ceT2').val()
                                ,ceR1: $('#ceR1').val()
                                ,ceR2: $('#ceR2').val()
                                ,ceA1: $('#ceA1').val()
                                ,ceA2: $('#ceA2').val()
                                ,ceLs1: $('#ceLs1').val()
                                ,ceLs2: $('#ceLs2').val()
                                ,ceRc: $('#ceRc').val()
                                ,ceE: $('#ceE').val()
                                ,ceLc: $('#ceLc').val()
                                ,ceLz: $('#ceLz').val()
                                ,cePj: $('#cePj').val()
                                ,ceFwj: $('#ceFwj').val()
                                ,ceQd: $('#ceQd').val()
                                ,ceZh: $('#ceZh').val()
                                ,ceHy: $('#ceHy').val()
                                ,ceYh: $('#ceYh').val()
                                ,ceHz: $('#ceHz').val()
                                ,ceZd: $('#ceZd').val()
                            },function(data){
                                //根据后台返回的参数，来进行判断
                                if(data.code === 1){
                                    layer.alert('增加成功',{icon:1,title:'提示'},function(i){
                                        layer.close(i);
                                        layer.close(index);//关闭弹出层
                                        $("#formLayer")[0].reset()//重置form
                                    });

                                    table.reload('tableReload',{//重载表格
                                        method: 'post'
                                        ,url: '${pageContext.request.contextPath}/software/searchCurveElementBody'
                                        ,where: {
                                            field: 'ce_JD'
                                            ,value: $('#ceJd').val()
                                        }
                                        ,page:{
                                            curr: 1
                                        }
                                    })
                                }
                            });
                        }
                    });
                    }
                    break;
            }
        });

        //监听头工具栏事件
        table.on('toolbar(coord)', function(obj){
            switch(obj.event){
                case 'calculate':
                    table.reload('calcReload', {
                        method: 'post'
                        ,url: '${pageContext.request.contextPath}/software/calculateCoordinateBody'
                        ,where: {
                            action: 0,
                            ceQx: $('#conditionSelValue').val(),
                            dk_begin_break:$('#dkBeginBreak').val(),
                            dk_end_break:$('#dkEndBreak').val(),
                            dk_label_break:$('#dkLabelBreak').val(),
                            dk_begin:$('#dkBegin').val(),
                            dk_end:$('#dkEnd').val(),
                            dk_gap:$('#dkGap').val(),
                            dk_dist:$('#dkDist').val(),
                            xy_Tp:$('#xyTp').val(),
                            xy_L0:$('#xyL0').val(),
                            xy_H0:$('#xyH0').val()
                        }
                    });
                    break;
                case 'transform':
                    table.reload('transReload', {
                        method: 'post'
                        ,url: '${pageContext.request.contextPath}/software/calculateCoordinateBody'
                        ,where: {
                            action: 1,
                            ceQx: $('#conditionSelValue').val(),
                            dk_begin_break:$('#dkBeginBreak').val(),
                            dk_end_break:$('#dkEndBreak').val(),
                            dk_label_break:$('#dkLabelBreak').val(),
                            dk_begin:$('#dkBegin').val(),
                            dk_end:$('#dkEnd').val(),
                            dk_gap:$('#dkGap').val(),
                            dk_dist:$('#dkDist').val(),
                            xy_Tp:$('#xyTp').val(),
                            xy_L0:$('#xyL0').val(),
                            xy_H0:$('#xyH0').val()
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
                var qx = $('#conditionSelValue').val();
                if(qx == null) {
                    alert("请先在搜索中选择曲线类型!")
                } else {
                    layer.confirm('真的删除行么', function(index){
                        obj.del(); //删除对应行（tr）的DOM结构
                        layer.close(index);//关闭弹出层
                        //向服务端发送删除指令
                        $.getJSON('${pageContext.request.contextPath}/software/deleteCurveElementBody',{
                            ceQx: qx
                            ,ceJd: data.ceJd
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
            } else if(layEvent === 'edit'){
                var qx = $('#conditionSelValue').val();
                if(qx == null) {
                    alert("请先在搜索中选择曲线类型!")
                } else {
                    layer.open({
                    type: 1
                    ,skin: 'layui-layer-molv'
                    ,title:"修改曲线要素参数信息"
                    ,area: ['750px', '1050px']
                    ,shadeClose: true
                    ,btn: ['确定', '取消']
                    // ,content: $('body',parent.document).find('#panelLeft').contents().find('#demoInsert').html()
                    ,content: $('#demoForm')
                    ,success: function () {
                        //自定义验证规则
                        form.verify({
                            title: function(value){
                                if(value.length < 5){
                                    return '标题至少得5个字符啊';
                                }
                            }
                            ,password: [ // 自定义密码验证
                                /^[\S]{6,12}$/
                                ,'密码必须6到12位，且不能出现空格'
                            ]
                            ,length: function(value){
                                if(value.length > 5){
                                    return '姓名最多为5个字符啊！';
                                }
                            }
                        });

                        $('#ceJd').val(data.ceJd);
                        $('#ceDk').val(data.ceDk);
                        $('#ceEx').val(data.ceEx);
                        $('#ceNy').val(data.ceNy);
                        $('#ceT1').val(data.ceT1);
                        $('#ceT2').val(data.ceT2);
                        $('#ceR1').val(data.ceR1);
                        $('#ceR2').val(data.ceR2);
                        $('#ceA1').val(data.ceA1);
                        $('#ceA2').val(data.ceA2);
                        $('#ceLs1').val(data.ceLs1);
                        $('#ceLs2').val(data.ceLs2);
                        $('#ceRc').val(data.ceRc);
                        $('#ceE').val(data.ceE);
                        $('#ceLc').val(data.ceLc);
                        $('#ceLz').val(data.ceLz);
                        $('#cePj').val(data.cePj);
                        $('#ceFwj').val(data.ceFwj);
                        $('#ceQd').val(data.ceQd);
                        $('#ceZh').val(data.ceZh);
                        $('#ceHy').val(data.ceHy);
                        $('#ceYh').val(data.ceYh);
                        $('#ceHz').val(data.ceHz);
                        $('#ceZd').val(data.ceZd);
                    }
                    ,yes: function(index){
                        $.getJSON('${pageContext.request.contextPath}/software/modifyCurveElementBody',{
                            ceQx: qx
                            ,ceJd: $('#ceJd').val()
                            ,ceDk: $('#ceDk').val()
                            ,ceEx: $('#ceEx').val()
                            ,ceNy: $('#ceNy').val()
                            ,ceT1: $('#ceT1').val()
                            ,ceT2: $('#ceT2').val()
                            ,ceR1: $('#ceR1').val()
                            ,ceR2: $('#ceR2').val()
                            ,ceA1: $('#ceA1').val()
                            ,ceA2: $('#ceA2').val()
                            ,ceLs1: $('#ceLs1').val()
                            ,ceLs2: $('#ceLs2').val()
                            ,ceRc: $('#ceRc').val()
                            ,ceE: $('#ceE').val()
                            ,ceLc: $('#ceLc').val()
                            ,ceLz: $('#ceLz').val()
                            ,cePj: $('#cePj').val()
                            ,ceFwj: $('#ceFwj').val()
                            ,ceQd: $('#ceQd').val()
                            ,ceZh: $('#ceZh').val()
                            ,ceHy: $('#ceHy').val()
                            ,ceYh: $('#ceYh').val()
                            ,ceHz: $('#ceHz').val()
                            ,ceZd: $('#ceZd').val()
                        },function(data){
                            //根据后台返回的参数，来进行判断
                            if(data.code === 1){
                                layer.alert('修改成功',{icon:1,title:'提示'},function(i){
                                    layer.close(i);
                                    layer.close(index);//关闭弹出层
                                    $("#formLayer")[0].reset()//重置form
                                });

                                table.reload('tableReload',{//重载表格
                                    method: 'post'
                                    ,url: '${pageContext.request.contextPath}/software/searchCurveElementBody'
                                    ,where: {
                                        field: 'ce_JD'
                                        ,value: $('#ceJd').val()
                                    }
                                    ,page:{
                                        curr: 1
                                    }
                                })
                            }
                        });
                    }
                });
                }
            }
        });

        //监听单元格编辑
        table.on('edit(test)', function(obj){
            var value = obj.value //得到修改后的值
                ,data = obj.data //得到所在行所有键值
                ,field = obj.field; //得到字段
            layer.msg('[ID: '+ data.piId +'] ' + field + ' 字段更改为：'+ value);
        });

        //选完文件后不自动上传
        upload.render({
            elem: '#excel-upload-import'
            ,url: '${pageContext.request.contextPath}/software/importExcelCurveElement'
            ,auto: true
            ,accept:'file'
            ,done: function(res){
                table.reload('tableReload', {
                    method: 'post'
                    ,url: '${pageContext.request.contextPath}/software/searchCurveElementBody'
                    ,page: {
                        curr: 1 //重新从第 1 页开始
                    }
                });
                layer.alert(res.msg, {title: '上传', offset: 't', icon:4});
            }
        });


        //监听下拉框
        form.on('select(conditionField)', function(data){
            if(data.value === "ce_QX") {
                $("#conditionSearch").hide();
                $("#conditionSelect").show();
                $("#conditionInput").hide();
                $.getJSON('${pageContext.request.contextPath}/software/selectCurveLineBody'
                    ,function(data){
                      $('#conditionSelValue').append(new Option("直接选择或搜索选择", ""));
                      var opts = data.data;
                      for (var i = 0; i < opts.length; i++)
                          $('#conditionSelValue').append(new Option(opts[i], opts[i]));

                      $('#conditionSelValue').val(opts[0]);
                      layui.form.render("select");

                      table.reload('tableReload', {
                          method: 'post'
                          ,url: '${pageContext.request.contextPath}/software/searchCurveElementBody'
                          ,where: { field: "ce_QX", value: opts[0] }
                          ,page: {
                              curr: 1 //重新从第 1 页开始
                          }
                      });
                });
            } else {
                $("#conditionSearch").show();
                $("#conditionSelect").hide();
                $("#conditionInput").show();
                $('#conditionSelValue').empty();
            }
        });
        form.on('select(conditionSelValue)', function(data){
            table.reload('tableReload', {
                method: 'post'
                ,url: '${pageContext.request.contextPath}/software/searchCurveElementBody'
                ,where: { field: "ce_QX", value: data.value }
                ,page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
        });

        //监听重载事件事件
        var $ = layui.$, active = {
            conditionSearch: function() {
                var field = $('#conditionField').val();
                var value = $('#conditionValue').val();

                //执行重载
                table.reload('tableReload', {
                    method: 'post'
                    ,url: '${pageContext.request.contextPath}/software/searchCurveElementBody'
                    ,where: {
                        field: field
                        ,value: value
                    }
                    ,page: {
                        curr: 1 //重新从第 1 页开始
                    }
                });
            },
        };

        $('.layui-btn-sm').on('click', function(){
            var othis = $(this)
                ,method = othis.data('method');

            active[method] ? active[method].call(this, othis) : '';
        });

        //监听重载事件事件
        $('.demoSearch .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
</script>
</body>
</html>