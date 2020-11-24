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
  <title>VUE表单</title>
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/res/js/bootstrap-4.5.3/css/bootstrap.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/res/js/bootstrap-table-1.18.0/bootstrap-table.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/res/js/bootstrap-datepicker-1.9.0/css/bootstrap-datepicker.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/res/css/font-awesome-4.7.0/css/font-awesome.css">

  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/jquery-3.5.1/jquery.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/vue-v2.6.12/vue.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/bootstrap-table-1.18.0/bootstrap-table.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/popper.js-1.16.1/umd/popper.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/bootstrap-datepicker-1.9.0/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/bootstrap-datepicker-1.9.0/locales/bootstrap-datepicker.zh-CN.min.js"></script>

  <style>
    body {
      padding: 10px
    }
    .red {
      color: red !important;
    }
    .day1 {
      background-color: red !important;
      color: #fff !important;
    }
    .small {
      display: block;
    }
    .titles {
      display: block;
      float: right;
      clear: both;
    }
    .table-demo{
      width: 80%;
      height: 300px;
    }
    .fixed-table-header {
      border-right: solid 1px #ddd;
      border-top: solid 1px #ddd;
    }
    .fixed-table-header table {
      border-top: solid 0 #ddd !important;
      margin-top: -1px;
    }
    .fixed-table-header-content-type {
      border-right: solid 1px #ddd;
      border-top: solid 1px #ddd;
    }
    .fixed-table-header-content-type table  {
      border-top: solid 0 #ddd !important;
      margin-top:-1px;
    }
    /*定义类名为.thead-blue的样式*/
    .table .thead-blue th {
      color: #fff;
      background-color: #3195f1;
      border-color: #0d7adf;
    }
    .bg-blue {
      background-color: #0074D9 !important;
    }
    .bg-green {
      background-color: green !important;
    }
    .bg-red {
      background-color: red !important;
    }
    .classex {
      color: blue
    }
    .cs {
      background-color: red !important;
      color: #fff !important;
    }
    .btn {
      margin-top: 6px;
    }
    @media (min-width: 1200px) {
      .container{
        max-width: 550px;
        margin-left: 0;
      }
    }
  </style>
</head>

<body>
<h2 style="color: red">Bootstrap Table 表格插件 → 配置</h2>
<div>
  <hr>
  <h4>Bootstrap Table Jsp 前端加载数据</h4>
  <div class="table-demo">
    <table id="table-jsp"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Ajax 服务端加载数据</h4>
  <div class="table-demo">
    <table id="table-ajax"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Check 方法</h4>
  <div class="table-demo">
    <div id="toolbar-check">
      <button onclick="check()">选中第二行</button>
      <button onclick="uncheck()">取消选中第二行</button>
    </div>
    <table id="table-check"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Event 事件</h4>
  <div class="table-demo">
    <table id="table-event"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Row Attributes 设置行属性(鼠标行title提示)</h4>
  <div class="table-demo">
    <table id="table-row-attributes"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Sort 自定义排序</h4>
  <div class="table-demo">
    <table id="table-sort"></table>
  </div>

  <hr>
  <h4>Bootstrap Table 发送 Header 的 Content Type 设置</h4>
  <div class="table-demo">
    <table id="table-header-content-type"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Response Handler 数据预处理</h4>
  <div class="table-demo">
    <table id="table-response-handler"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Escape 显示html标签</h4>
  <div class="table-demo">
    <table id="table-escape"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Total/Data Field 服务器返回JSON格式</h4>
  <div class="table-demo">
    <table id="table-total-data-field"></table>
  </div>

  <hr>
  <h4>Bootstrap Table IdField 和 SelectItemName</h4>
  <form class="table-demo">
    <button class="btn btn-primary">提交表单</button>
    <table id="table-id-field-select-item-name"></table>
  </form>

  <hr>
  <h4>Bootstrap Table Card View 卡片视图模式</h4>
  <div class="table-demo">
    <table id="table-card-view"></table>
  </div>

  <hr>
  <h4>Bootstrap Table DetailView 详情视图树形模式</h4>
  <div class="table-demo">
    <table id="table-detail-view" data-toggle="table"
           data-detail-view="true"
           data-detail-formatter="detailFormatter"
    ></table>
  </div>

  <hr>
  <h4>Bootstrap Table Icons 图标相关设置</h4>
  <div class="table-demo">
    <div id="toolbar-icons">
      <button onclick="alert(1)">删除选中</button>
      <button onclick="alert(2)">查看详情</button>
    </div>
    <table id="table-icons"
           data-toggle="table"
           data-detail-view="true"
           data-detail-formatter="detailFormatter"
           data-show-refresh="true"
           data-show-columns="true"
    ></table>
  </div>

  <hr>
  <h4>Bootstrap Table Language 本地化中文设置</h4>
  <div class="table-demo">
    <table id="table-language"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Columns 设置要显示的列</h4>
  <div class="table-demo">
    <table id="table-columns"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Sortable 点击列排序</h4>
  <div class="table-demo">
    <table id="table-sortable-ajax"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Sortable iquery 点击列排序</h4>
  <div class="table-demo">
    <table id="table-sort-iquery"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ClickToSelect 点击行选中</h4>
  <div class="table-demo">
    <table id="table-click-to-select"></table>
  </div>

  <hr>
  <h4>Bootstrap Table IgnoreClickToSelect 忽略点击选中行的元素</h4>
  <div class="table-demo">
    <table id="table-ignore-click-to-select"></table>
  </div>

  <hr>
  <h4>Bootstrap Table SingleSelect 设置单选</h4>
  <div class="table-demo">
    <table id="table-single-select"></table>
  </div>

  <hr>
  <h4>Bootstrap Table CheckboxHeader 设置表格头部全选反选</h4>
  <div class="table-demo">
    <table id="table-checkbox-header"></table>
  </div>

  <hr>
  <h4>Bootstrap Table MaintainSelected 点击下一页时保持选中状态</h4>
  <div class="table-demo">
    <table id="table-maintain-selected"></table>
  </div>

  <hr>
  <h4>Bootstrap Table MultipleSelectRow 多选设置</h4>
  <div class="table-demo">
    <table id="table-multiple-select-row"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Pagination 服务器端分页</h4>
  <div class="table-demo">
    <table id="table-pagination"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Pagination Custom Ajax 自定义ajax请求</h4>
  <div class="table-demo">
    <table id="table-pagination-ajax"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Pagination Custom Ajax 属性ajax自定义函数</h4>
  <div class="table-demo">
    <table id="table-pagination-request"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Pagination JSP 前端分页</h4>
  <div class="table-demo">
    <table id="table-pagination-jsp"></table>
  </div>

  <hr>
  <h4>Bootstrap Table SearchOnEnterKey 回车后执行搜索</h4>
  <div class="table-demo">
    <table id="table-search-on-enter-key"></table>
  </div>

  <hr>
  <h4>Bootstrap Table StrictSearch 完全匹配索</h4>
  <div class="table-demo">
    <table id="table-strict-search"></table>
  </div>

  <hr>
  <h4>Bootstrap Table TrimOnSearch 去除关键词空格</h4>
  <div class="table-demo">
    <table id="table-trim-on-search"></table>
  </div>

  <hr>
  <h4>Bootstrap Table SearchAlign 搜索框位置</h4>
  <div class="table-demo">
    <table id="table-search-align"></table>
  </div>

  <hr>
  <h4>Bootstrap Table SearchText 默认搜索关键词</h4>
  <div class="table-demo">
    <table id="table-search-text"></table>
  </div>

  <hr>
  <h4>Bootstrap Table CustomSearch 自定义搜索</h4>
  <div class="table-demo">
    <table id="table-custom-search"></table>
  </div>

  <hr>
  <h4>Bootstrap Table SmartDisplay 自动设置PageSize</h4>
  <div class="table-demo">
    <table id="table-smart-display"></table>
  </div>

  <hr>
  <h4>Bootstrap Table PageSize 手工设置PageSize</h4>
  <div class="table-demo">
    <table id="table-page-size"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Pagination Select 分页时保持选择状态</h4>
  <div class="table-demo">
    <div id="toolbar-pagination">
      <button onclick="getPageSelect()">获取选中项目 </button>
    </div>
    <table id="table-pagination-select"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ShowHeader 显示表格头部</h4>
  <div class="table-demo">
    <table id="table-show-header"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ShowFooter 显示隐藏表格底部</h4>
  <div class="table-demo">
    <table id="table-show-footer"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ShowColumns 开启列刷选</h4>
  <div class="table-demo">
    <table id="table-show-columns"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ShowPaginationSwitch 开启显示和关闭分页按钮</h4>
  <div class="table-demo">
    <table id="table-show-pagination-switch"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ShowRefresh 显示刷选按钮</h4>
  <div class="table-demo">
    <table id="table-show-refresh"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ShowFullscreen 显示全屏按钮</h4>
  <div class="table-demo">
    <table id="table-show-fullscreen"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ButtonsToolbar 工具栏</h4>
  <div class="table-demo">
    <div id="toolbar-buttons">
      <button onclick="alert(1)">删除选中</button>
      <button onclick="alert(2)">查看详情</button>
    </div>
    <table id="table-buttons-toolbar"
           data-toggle="table"
           data-detail-view="true"
           data-detail-formatter="detailFormatter"
           data-show-refresh="true"
           data-show-columns="true"
    ></table>
  </div>

  <hr>
  <h4>Bootstrap Table Fixed 固定表头并美化表头</h4>
  <div class="table-demo">
    <table id="table-fixed"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Row Color 表格样式并隔行变色</h4>
  <div class="table-demo">
    <table id="table-row-color"></table>
  </div>

  <hr>
  <h4>Bootstrap Table RowStyle 设置行样式</h4>
  <div class="table-demo">
    <table id="table-row-style"></table>
  </div>

  <hr>
  <h4>Bootstrap Table TheadClass Esv 设置表头样式</h4>
  <div class="table-demo">
    <table id="table-thead-class-esv"></table>
  </div>

  <hr>
  <h4>Bootstrap Table FooterStyle 设置表格底部样式</h4>
  <div class="table-demo">
    <div id="toolbar-footer">
      <button onclick="alert(1)">删除选中</button>
      <button onclick="alert(2)">查看详情</button>
    </div>
    <table id="table-footer-style"
           data-toggle="table"
           data-detail-view="true"
           data-detail-formatter="detailFormatter"
           data-show-refresh="true"
           data-show-columns="true"
    ></table>
  </div>

</div>
<script>
    ////////////////////////////////////////////
    //Bootstrap Table Jsp 前端加载数据例子
    var columns = [{
        field: 'Id',
        title: '编号',
        sortable: true
    }, {
        field: 'ProductName',
        title: '产品名称',
        sortable: true
    }, {
        field: 'StockNum',
        title: '产品库存'
    }];
    var data = [{
        Id: 1,
        ProductName: '香蕉',
        StockNum: '100'
    }, {
        Id: 2,
        ProductName: '苹果',
        StockNum: '200'
    }, {
        Id: 3,
        ProductName: '草莓',
        StockNum: '300'
    }, {
        Id: 4,
        ProductName: '樱桃',
        StockNum: '400'
    }, {
        Id: 5,
        ProductName: '菠萝',
        StockNum: '500'
    }];
    $('#table-jsp').bootstrapTable({
        columns: columns,
        data: data,
        height: 300
    });


    ////////////////////////////////////////////
    //Bootstrap Table Ajax 服务端加载数据
    //设置需要显示的列
    //设置需要显示的列
    var url = '${pageContext.request.contextPath}/res/js/bootstrap-table-1.18.0/data.json';
    $('#table-ajax').bootstrapTable({
        url: url,
        height:300,
        // pagination: true,//开启分页
        search: true, //开启刷选
        columns: columns
    });


    ////////////////////////////////////////////
    //Bootstrap Table Check 方法
    // 常用方法列表
    // 我们罗列出来以下重要常用的方法。
    //------------------
    // 方法名称	说明	详情
    // refresh	刷新表格，会重新发送服务端请求
    // getSelections	获取选中行数据
    // checkAll	全选、反选uncheckAll
    // refreshOptions 	刷新配置和refresh不一样，此选项只刷新配置而不会发送请求
    // insertRow	插入行数据
    // updateRow	更新行数据
    // remove	删除行
    //设置需要显示的列
    var columns_check = [
        {
            checkbox:true
        },{
            field:"Id",
            title: '产品ID',
            sortable: true
        }, {
            field: 'ProductName',
            title: '产品名称',
            sortable: true
        }, {
            field: 'StockNum',
            title: '产品库存'
        }];
    $('#table-check').bootstrapTable({
        toolbar:"#toolbar-check",
        height:300,
        columns: columns_check,
        data: data
    });
    function check() {
        $('#table-check').bootstrapTable('check', 1);
    }
    function uncheck() {
        $('#table-check').bootstrapTable('uncheck', 1);
    }


    ////////////////////////////////////////////
    //Bootstrap Table Event 事件
    // bootstrap table 事件顾名思义就是bootstrap table表格的各种操作事件，如点击行、双击行、加载数据成功、排序刷新等等各种事件。我们要使用bootstrap table这款表格插件而不了解它事件的用法是寸步难行的。为了大家更好的查阅bootstrap table的事件，我们特制作了本教程。
    // bootstrap table 注册事件的方法 可以在初始化时注册或初始化完成后注册
    //初始化时注册事件
    //第一种方法，初始化时注册事件
    // onEventName 为事件名称，arg1、arg2bootstrap table为事件返回的数据对象
    // $('#table').bootstrapTable({
    //     onEventName: function (arg1, arg2, ...) {
    //         // ...
    //     }
    // });
    // //例如下面点击行事件
    // // onEventName 事件名称等于onClickRow，给事件传递了row行数据对象等
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data,
    //     onClickRow:function(row, $element, field)
    //     {
    //         alert(JSON.stringify(row));
    //     }
    // });
    // 初始化后注册事件
    // //第二种方法，初始化后注册事件
    // // onEventName 为事件名称，arg1、arg2bootstrap table为事件返回的数据对象
    // $('#table').on('event-name.bs.table', function (e, arg1, arg2, ...) {
    //     // ...
    // })
    // //例如下面点击行事件
    // $('#table').on('click-row.bs.table', function (e, row, $element) {
    //     alert(JSON.stringify(row));
    // })
    $('#table-event').bootstrapTable({
        url: url,
        // pagination: true,//开启分页
        search: true, //开启刷选
        columns: columns,
        height:300,
        onClickRow:function(row, $element, field) {
            alert(JSON.stringify(row));
        },
    });


    ////////////////////////////////////////////
    //Bootstrap Table Row Attributes 设置行属性(鼠标行title提示)
    $('#table-row-attributes').bootstrapTable({
        columns: columns,
        url: url,
        classes: "table table-bordered table-striped table-sm table-dark",
        height:300,
        rowAttributes: function (row, index) {
            return {
                'data-toggle': 'popover',
                'data-placement': 'bottom',
                'data-trigger': 'hover',
                'data-index': index,
                'title': [
                    'Index: ' + index,
                    'ID: ' + row.ProductName
                ].join(', ')
            }
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table Sort 自定义排序
    // Custom Sort自定义排序
    // 自定义排序，比如我需要把库存为3的产品排前面，首先需要自定义一个排序行数。sortName为用户点击排序列的列名，sortOrder为asc或desc,data你获取到的原始数据，自定义函数如下。
    // 注意：这只是前端排序，服务器端排序请点击>>> 服务器端排序
    //设置需要显示的列
    $('#table-sort').bootstrapTable({
        columns: columns,
        data: getData(),                      //请求后台的URL（*）
        method: 'GET',                      //请求方式（*）
        classes: "table table-bordered table-striped table-sm",
        height:300,
        customSort: customSort
    });
    function customSort(sortName, sortOrder, data) {
        var order = sortOrder === 'desc' ? -1 : 1;
        data.sort(function (a, b) {
            var v1 = a[sortName];
            var v2 = b[sortName];
            if (v1 ==3) {
                return -1;
            }
            if (v1 > v2) {
                return 1
            }
            return 0
        })
    }
    function getData() {
        var data = [];
        var fruits = ['melon','apple','banana','orange','cherry','chestnut','jujube','tomato','pear','pineapple'];
        for (var i = 0; i < 100; i++) {
            var item = {
                Id: i,
                ProductName: fruits[i%10],
                StockNum: '200'
            };

            data.push(item);
        }
        return data;
    }


    ////////////////////////////////////////////
    //Bootstrap Table 发送 Header 的 Content Type 设置
    // http 协议Header里的Content-Type有以下三种方式：
    // 1，application/x-www-form-urlencoded：数据编码为名称/值对，这是标准的编码格式。
    // 2，multipart/form-data： 数据被编码为一条消息，每个控件对应消息中的一个部分。
    // 3，text/plain： 数据以纯文本形式进行编码。
    // Bootstrap Table通过contentType属性设置，发送数据编码方式。
    // <table
    // id="table"
    // data-toggle="table"
    // data-height="460"
    // data-content-type="application/x-www-form-urlencoded"
    // data-url="json/data1.json">
    //     <thead>
    //     <tr>
    //     <th data-field="id">ID</th>
    //     <th data-field="name">Item Name</th>
    // <th data-field="price">Item Price</th>
    // </tr>
    // </thead></table>
    $('#table-header-content-type').bootstrapTable({
        columns: columns,
        url: url,
        contentType :"application/x-www-form-urlencoded",
        height:300,  //这里就是固定表头的设置
        // pagination: true,//开启分页
        search: true, //开启刷选
        // totalField:"count",
        // dataField:"data"
    });


    ////////////////////////////////////////////
    //Bootstrap Table Response Handler 数据预处理
    // bootstrap table 在服务器返回数据成功后，会回调responseHandler事件，利用responseHandler事件可以在表格渲染之前，对数据进行修改。如对日期进行格式把2019/1/1 12:10:1 转换成2019-01-01 12:10:01格式或者把浮点数18.12345格式化成18.12。
    $('#table-response-handler').bootstrapTable({
        url: url,
        // pagination: true,//开启分页
        columns: columns,
        height:300,
        responseHandler: function (data) {
            //**********注意**********
            for (var i = 0; i < data.rows.length; i++)
            {
                if (data.rows[i]["ProductName"] == "苹果") data.rows[i]["StockNum"] = data.rows[i]["StockNum"] + "个";
                if (data.rows[i]["ProductName"] == "香蕉") data.rows[i]["StockNum"] = data.rows[i]["StockNum"] + "斤";
            }
            return data;
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table Escape 显示html标签
    // 如果数据中包含</br> input等html标签，Bootstrap Table不会直接显示，而是让浏览器直接解析这些标签。如<br>会换行，input会显示成输入框，通过设置escape属性为true，这些html标签就会被转义直接显示。
    //----------------
    // 名称	说明
    // JS属性	escape
    // Html属性	data-escape
    // 类型
    // Boolean
    // 功能	默认值为false,设置true转义html标签
    // html设置方法
    // <table id="table" data-escape="true"></table>
    $('#table-escape').bootstrapTable({
        columns: columns,
        data: data,
        height:300,
        escape:true, //直接显示html标签
        // pagination: true,//开启分页
        search: true, //开启刷选
    });


    ////////////////////////////////////////////
    //Bootstrap Table Total/Data Field服务器返回JSON格式
    // 通过设置bootstrap table 的totalField 和 dataField 属性，来指定服务器返回数据的JSON格式，totalField默认total,dataField默认rows,JSON格式如下。
    // {
    //     "total": 3,
    //     "rows": [
    //     {
    //         "Id": 1,
    //         "ProductName": "香蕉",
    //         "StockNum": "100"
    //     },
    //     {
    //         "Id": 2,
    //         "ProductName": "苹果",
    //         "StockNum": "200"
    //     },
    //     {
    //         "Id": 3,
    //         "ProductName": "车厘子",
    //         "StockNum": "2010"
    //     }
    // ]
    // }
    // 我们可以把返回的JSON格式按我们自己的习惯返回给bootstrap table ，格式如下：
    //
    // {
    //     "count": 3,
    //     "data": [
    //     {
    //         "Id": 1,
    //         "ProductName": "香蕉",
    //         "StockNum": "100"
    //     },
    //     {
    //         "Id": 2,
    //         "ProductName": "苹果",
    //         "StockNum": "200"
    //     },
    //     {
    //         "Id": 3,
    //         "ProductName": "车厘子",
    //         "StockNum": "2010"
    //     }
    // ]
    // }
    //设置bootstrap table totalField 为count ,dataField 为 data
    // $('#table').bootstrapTable({
    //     url: '/package/bootstrap-table-1.14.1/data.json',
    //     pagination: true,//开启分页
    //     search: true, //开启刷选
    //     columns: columns,
    //     totalField:"count",
    //     dataField:"data"
    // });
    $('#table-total-data-field').bootstrapTable({
        columns: columns,
        url: url,
        height:300,
        totalField:"count",
        dataField:"data"
    });


    ////////////////////////////////////////////
    //Bootstrap Table IdField 和 SelectItemName
    // Bootstrap Table idField和selectItemName设置选择选中。这个和直接调用bootstrap table选中行接口有什么区别呢？其实这两个属性就是配合jquery的from serialize用，jquery的serialize()方法可以把from表单系列化成一个对象，如果不清楚serialize()方法作用可以先搜索一下相关文章，var data = $(form).serialize()。
    // 名称	js属性	html属性	说明
    // idField	idField	data-id-field	设置选择行的字段
    // selectItemName	selectItemName	data-select-item-name	选中选中的值名称
    // html设置方法
    // <table id="table" data-select-item-name="id" data-id-field="idName"></table>
    // <form>
    // <button class="btn btn-primary">提交表单</button>
    //
    //     <table
    // id="table"
    // data-toggle="table"
    // data-toolbar=".btn-primary"
    // data-id-field="Id"
    // data-select-item-name="ProductNamexx"
    // data-height="460" >
    //     <thead>
    //     <tr>
    //     <th data-radio="true"></th>
    //     <th data-field="Id">ID</th>
    //     <th data-field="ProductName">Item Name</th>
    // <th data-field="StockNum">Item Price</th>
    // </tr>
    // </thead>
    // </table>
    // </form>
    var columns_radio = [
        {
            radio:true
        },{
            field:"Id",
            title: '产品ID',
            sortable: true
        }, {
            field: 'ProductName',
            title: '产品名称',
            sortable: true
        }, {
            field: 'StockNum',
            title: '产品库存'
        }];
    $('#table-id-field-select-item-name').bootstrapTable({
        idField: "id",//设置列为选中列
        selectItemName: "idName",//设置列为选中列
        height:300,
        columns: columns_radio,
        data: data
    });
    $(function() {
        $('form').submit(function () {

            alert(JSON.stringify($(this).serialize()));
            return false
        })
    });


    ////////////////////////////////////////////
    //Bootstrap Table Card View 卡片视图模式
    // bootstrap table Card View 卡片视图模式，把table view的视图显示成卡片风格效果，效果图如下。
    // html设置方式
    // <table id="table" data-card-view="true"></table>
    $('#table-card-view').bootstrapTable({
        cardView:true, //卡片视图模式
        height:300,
        columns: columns,
        data: data
    });


    ////////////////////////////////////////////
    //Bootstrap Table DetailView 详情视图树形模式
    // bootstrap table detailView详情视图模式，当一个表格要显示很多列时（比如有20多列）通过电脑屏幕的宽度是一下子显示不了所有的列，这时有两种处理方法：
    //  1，固定列模式，把重要的列固定其他列可以通过表格底部滚动条左右拖动查看。
    //  2，detailView详情视图模式，只显示重要的列，当用户点击选中行时展开其他详情，有点类似树形控件的效果。
    // 实现条件
    // 1，设置detailView为true
    // 2，自定义detail-formatter函数detailFormatter
    // 3，引用fontawesome图标库 https://use.fontawesome.com/releases/v5.6.3/css/all.css
    // detailViewIcon隐藏显示图标列
    // 该属性需要配合detailViewByClick为true来使用，detailViewByClick点击行展开详情，该属性在1.15以下版本无效。
    // $('#table').bootstrapTable({
    //     detailView:true, //1，开启详情视树形图模式
    //     detailFormatter:"detailFormatter", //2，定义详情显示函数
    //     detailViewIcon:false,//3，隐藏图标列
    //     detailViewByClick:true,//4,隐藏图标列
    //     columns: columns,
    //     data: data
    // });
    // detailFilter详情展开条件
    // 可以定义一个自定义函数来控制那一行可以展开详情，比如下面的自定义函数来控制偶数行点击可以展开详情。
    // $('#table').bootstrapTable({
    //     detailView:true,
    //     detailFormatter:"detailFormatter",
    //     detailFilter:detailFilter
    //     columns: columns,
    //     data: data
    // });
    // function detailFilter(index, row) {
    //     return index % 2 === 0
    // }
    // 如何使detail View默认展开呢
    // 官方并没有提供相关设置选项，但是我们可以通过以下方法间接实现
    // for(var i=0;i<行数;i++)
    // {
    //     $('#table').bootstrapTable('toggleDetailView', i);//展开详情行
    // }
    $('#table-detail-view').bootstrapTable({
        detailView: true, //1，开启详情视树形图模式
        detailFormatter: "detailFormatter", //2，定义详情显示函数
        detailViewIcon: false,//3，隐藏图标列
        detailViewByClick: true,//4,隐藏图标列
        height:300,
        detailFilter: detailFilter,
        columns: columns,
        data: data
    });
    function detailFilter(index, row) {
        return index % 2 === 0
    }
    function detailFormatter(index, row) {
        var html = [];
        $.each(row, function (key, value) {
            html.push('<p><b>' + key + ':</b> ' + value + '</p>')
        });
        return html.join('');
    }


    ////////////////////////////////////////////
    //Bootstrap Table Icons 图标相关设置
    //     icons图标
    //     通过icons属性设置的图标，以下代码为默认图标。
    //
    //     var icons={
    //     paginationSwitchDown: 'fa-caret-square-down',
    //     paginationSwitchUp: 'fa-caret-square-up',
    //     refresh: 'fa-sync',
    //     toggleOff: 'fa-toggle-off',
    //     toggleOn: 'fa-toggle-on',
    //     columns: 'fa-th-list',
    //     fullscreen: 'fa-arrows-alt',
    //     detailOpen: 'fa-plus',
    //     detailClose: 'fa-minus'
    //     };
    //
    //     //bootstrap table初始化数据
    //     $('#table').bootstrapTable({
    //         icons:icons,   // 1,设置修改图标
    //         columns: columns, //表格列
    //         data: data //需要显示的数据
    //     });
    //     iconSize设置图标大小
    //     $('#table').bootstrapTable({
    //         iconSize:"sm",   // 1,设置修改图标  sm小图标 lg大图标
    //         columns: columns,//表格列
    //         data: data//需要显示的数据
    //     });
    $('#table-icons').bootstrapTable({
        toolbar:"#toolbar-icons",
        height:300,
        columns: columns,
        data: data
    });


    ////////////////////////////////////////////
    //Bootstrap Table Language 本地化中文设置
    $('#table-language').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark", //设置表格样式
        height:300,
        //******前端分页设置****
        pagination:true,
        pageNumber:2,
        pageSize:5,
        pageList:"[5, 10, 20, 50, 200]",
        paginationHAlign:"left",
        paginationDetailHAlign:"right",
        //******前端分页设置****
        formatShowingRows:function(pageFrom, pageTo, totalRows) {
            return "第"+pageFrom+"-"+pageTo+"行，总共"+totalRows+"";
        },
        formatRecordsPerPage:function(pageNumber) {
            return pageNumber+'行每页';
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table Columns 设置要显示的列
    // 基础设置
    // 使用columns属性设置表格的列，以下代码表示bootstrap table将显示3列，title表示列名称，field表示该列要绑定的数据字段,align 对齐方式center居中left靠左right靠右。
    // 进阶教程
    // 1，单元表格字符串长度大于10个字符就加省略号。
    // 2，状态字段需要把数字转换成中文，如0显示待审核 1显示已审核 2标示已删除。
    var columns_cols = [{
        field: 'Id',
        title: '编号'
    }, {
        field: 'ProductName',
        title: '产品名称'
    }
        , {
            field: 'Status',
            title: '状态原始数据'
        }
        , {
            field: 'Status',
            title: '状态转换后列',
            formatter: formatter_cols /*****注意这里是刷选函数****/
        }];
    $('#table-columns').bootstrapTable({
        columns: columns_cols,
        data: getData_cols(),
        method: 'GET',
        classes: "table table-bordered table-striped table-sm",
        height: 300
    });
    function formatter_cols(value, row, index) {
        if (row.Status == 0) return "待审核";
        if (row.Status == 1) return "已审核";
        if (row.Status == 2) return "已删除";
    }
    function getData_cols() {
        var data = [];
        for (var i = 0; i < 5; i++) {
            var item = {
                Id: i,
                ProductName: '香蕉' + i,
                Status: i > 2 ? 0 : i
            };

            data.push(item);
        }
        return data;
    }


    ////////////////////////////////////////////
    //Bootstrap Table Sortable 点击列排序
    // 在表格的前端应用中点击列名进行排序，是一个非常重要的功能，常用的场景比如点击列顺序或者倒序查看销量、库存、用户量等。bootstrap table提供了列的sortable属性来进行排序非常简单，把需要排序的列属性sortable设置成true即可。
    // 前端排序
    // 注意：这个只是前端排序，比如bootstrap table有10页数据，在第一页你点击销量排序只对当前页的数据起作用。
    // 服务器端排序
    // 注意：通常我们还是要使用服务器端排序才有意义，因为不可能把所有数据在一页里显示完成。
    // 服务器端排序需要用到以下条件
    // 1，onSort事件，当用户点击列排序时触发的事件，返回列名和排序方式
    // 2，然后通过refreshOptions方法去刷新sortName和sortOrder字段即可
    // 服务器端同时对多个字段进行排序
    // 有时我们需要对多个字段进行排序如 order by id asc,num desc,name asc ，bootstrap table任何实现这样的排序呢，其实只要在上面的基础上借助queryParams属性即可，代码如下：
    $('#table-sortable-ajax').bootstrapTable({
        url: url,
        pagination: true,//开启分页
        search: true, //开启刷选
        columns: columns,
        height:300,
        onSort:function(name,order)
        {
            $('#table-sortable-ajax').bootstrapTable('refreshOptions', {
                sortName:name,
                sortOrder:order
            });
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table Sortable iquery 点击列排序
    $('#table-sort-iquery').bootstrapTable({
        iquery:{},
        url: url,
        pagination: true,//开启分页
        search: true, //开启刷选
        columns: columns,
        height:300,
        onSort:function(name,order) {
            $('#table-sort-iquery').bootstrapTable('refreshOptions', {
                sortName:name,
                sortOrder:order
            });

        },
        queryParams:function (params) {

            this.iquery[this.sortName]=this.sortOrder;
            $.extend(params,  this.iquery);
            return params
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table ClickToSelect 点击行选中
    // Bootstrap Table Column的相关列属性和设置例如field、title、titleTooltip、width、class等属性，要使用Bootstrap Table首先要定义列，一般我们如下进行列的定义。
    //
    // //设置需要显示的列
    // var columns = [{
    //     field: 'Id',
    //     title: '编号'
    // },{
    //     field: 'CatalogName',
    //     title: '分类'}];
    //
    // //bootstrap table初始化数据
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data
    // });
    // 属性列表
    // 以下重要或非常有用的属性用√进行了标记
    //
    // 列属性名称	html属性	说明
    // field	data-field	√设置该列要绑定显示的字段如field:"id"
    // title	data-title	√设置该列显示的文字标题，比如你绑定了num字段，你好显示num吧，设置title:"库存" 用户一看就明白了
    // titleTooltip	data-titleTooltip	titleTooltip:"本月销售剩余库存"，鼠标移动到列头上就会出现提示文字“本月销售剩余库存”
    // class	data-class	对某列设置单独的样式
    // width	data-width	√width:200",该列的宽度为200 ，注意这里是数字类型不带单位px或者%
    // widthUnit	data-widthUnit	widthUnit:"px" 列的宽度的单位如px或%
    // rowspan	data-rowspan	rowspan:2 合两2行
    // colspan	data-colspan	colspan:2 合并两列
    // halign	data-halign	表格头部列名对齐方式 'left', 'right', 'center'
    // align	data-align	表格数据的对齐方式 'left', 'right', 'center'
    // falign	data-falign	表格底部列对齐方式 'left', 'right', 'center'
    // valign	data-valign	垂直方向对齐方式 'top', 'middle', 'bottom'
    // cellStyle	data-cellStyle	自定义函数，单元格自定义样式function(value, row, index){ return "样式类名";}
    // radio	data-radio	radio:true 表示该列为单选选择列
    // checkbox	data-checkbox	√checkbox:true 表示该列为复选框选择列
    // checkboxEnabled	data-checkboxEnabled	checkboxEnabled:false 禁用复选框列
    // clickToSelect	data-clickToSelect	√{field:"name",clickToSelect:false}表示点击name这列时不会触发选中事件。
    // showSelectTitle	data-showSelectTitle	showSelectTitle:"操作"，在选择列的列头显示的名称
    // sortable	data-sortable	sortable:true把该列设置为排序列，这时列头就会出现上下两个排序箭头
    // sortname	data-sortname	指定按那列进行排序，例如<th data-field="name" data-sortable="true" data-sort-name="id" data-sort-order="desc">Item Name</th> 表示用户点击name这列的排序事件 按id字段进行倒序进行排序
    // order	data-order	排序方式 order:"asc"或者 order:"desc" 顺序或倒序进行排序
    // visible	data-visible	visible:false 或者 true 隐藏或显示列
    // switchable	data-switchable	true/false 当开启了列刷选时，switchable可以控制当前列是否可被刷选，默认为true
    // cardVisible	data-cardVisible	true/false 当开启卡片模式时，设置该列是否在卡片中显示，默认true
    // searchable	data-searchable	true/false 设置当前列数据是否可以被搜索，这里说的搜索是前端查询匹配非服务器端。
    // formatter	data-formatter	√自定义函数，比如状态字段在数据库中是0，1 可以通过formatter转换成 启用/停用 这样的文字显示而不是显示0或者1这样的数字，   formatter: function(value, item, index) {
    //     if (value==0) {
    //         return '正常';
    //     }
    //     else if (value==1) {
    //         return '禁用';
    //     }
    // }
    // footerFormatter	data-footerFormatter	√列底部格式化函数，可以用来做合计等功能
    // function nameFormatter(data) {
    //     return data.length
    // }
    $('#table-click-to-select').bootstrapTable({
        clickToSelect:true,
        height:300,
        columns: columns_check,
        data: data
    });


    ////////////////////////////////////////////
    //Bootstrap Table IgnoreClickToSelectOn 忽略点击选中行的元素
    // 设置clickToSelect为true后用户点击当前行的任何一个元素都会选中该行，但是通常这行会有其他的操作按钮，如果删除、查看详情、审核按钮，点击这类按钮不应该选中该行，而是响应其他的事件。
    $('#table-ignore-click-to-select').bootstrapTable({
        clickToSelect:true,
        ignoreClickToSelectOn: ignoreClickToSelectOn, //对a和button标签忽略clickToSelect事件
        height:300,
        columns: columns_check,
        data: data
    });
    function ignoreClickToSelectOn(e) {
        return ['A', 'BUTTON'].indexOf(e.tagName) > -1;
    }


    ////////////////////////////////////////////
    //Bootstrap Table SingleSelect 设置单选
    $('#table-single-select').bootstrapTable({
        singleSelect:true,
        height:300,
        columns: columns_check,
        data: data
    });


    ////////////////////////////////////////////
    //Bootstrap Table CheckboxHeader 设置表格头部全选反选
    // checkboxHeader设置表格头部全选反选
    // singleSelect为true时该属性无效,checkboxHeader设置为false不出现全选复选框。
    $('#table-checkbox-header').bootstrapTable({
        checkboxHeader:false,
        height:300,
        columns: columns_check,
        data: data
    });


    ////////////////////////////////////////////
    //Bootstrap Table MaintainSelected 点击下一页时保持选中状态
    // maintainSelected点击下一页时保持选中状态
    // 设置maintainSelected为true可以保持选中状态，用户点击下一页再返回时还可以保持选中状态，非常有用的功能。不管是客户端分页还是服务器端分页都支持该属性。
    $('#table-maintain-selected').bootstrapTable({
        maintainSelected:false,
        height: 300,
        columns: columns_check,
        data: data,
        //******前端分页设置****
        pagination:true,
        pageNumber:2,
        pageSize:2,
        pageList:"[2, 3, 5, 10, 20]",
        paginationHAlign:"left",
        paginationDetailHAlign:"right",
        //******前端分页设置****
        formatShowingRows:function(pageFrom, pageTo, totalRows) {
            return "第"+pageFrom+"-"+pageTo+"行，总共"+totalRows+"";
        },
        formatRecordsPerPage:function(pageNumber) {
            return pageNumber+'行每页';
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table MultipleSelectRow 多选设置
    // multipleSelectRow多选设置
    // 设置multipleSelectRow为true字面意思就可以理解到是多选相关设置，按ctrl+click可以多选多个行， shift+click可以选中一个范围内的行，可理解成和windows的文件夹选中文件的快捷键是一样的
    $('#table-multiple-select-row').bootstrapTable({
        multipleSelectRow:true,
        height:300,
        columns: columns_check,
        data: data
    });


    ////////////////////////////////////////////
    //Bootstrap Table Pagination 服务器端分页
    // 当bootstrap Table数据获取方式为服务器端时，可以通过method属性设置http请求方式是POST还是GET方式请求服务器数据
    // 使用dataType属性，设置服务器端返回的数据格式，例如返回json格式,text文本格式等，该属性通过配合responseHandler事件使用。例如下面的代码把服务器返回的字符串转换成功JSON格式。
    // 参数名称	说明
    // order	排序方式asc需要你服务器按顺序排序，desc倒序排序
    // offset	起始行，比如你数据库有100条数据，offset等于10表示你服务器需要从第10条数据返回结果
    // limit	每次读取多少条数据
    // search	用户在输入框搜索的关键词
    // queryParams	分页时你可以传入你的自定义参数，例如你想每次往服务器请求时带action="getlist"参数function(params) { return params }
    $('#table-pagination').bootstrapTable({
        columns: columns,
        classes: "table table-bordered table-striped table-sm table-dark", //设置表格样式
        height:300,
        //******服务器端分页设置****
        url: url, //服务器返回数据的网址
        method: 'GET',   //数据请求方式
        sidePagination:'server',
        search:true, //******开启搜索框****//
        searchOnEnterKey:false, //******回车后执行搜索****//
        pagination:true,
        pageNumber:1,
        pageSize:2,
        pageList:"[10, 20, 50, 200]",
        paginationHAlign:"left",
        paginationDetailHAlign:"right",
        queryParams:function(params) {
            /******获取分页数据时，这里你可以带上你自定义的参数******/
            params.action="getlist";
            params.catalogId=0;
            return params; }
        //******服务器端分页设置****
    });


    ////////////////////////////////////////////
    //Bootstrap Table Pagination Custom Ajax 自定义ajax请求
    // jquery ajax方法，需要你自己实现分页（服务器端和CSS分页效果都要自己实现）
    // 如果你不想用bootstrap table自带的ajax请求数据，你可以ajax属性自定义你的数据请求函数。那么这个bootstrap table的ajax属性定义的函数和利用jquery ajax请求有什么区别呢？其实bootstrap table的ajax属性的方法也是调用jquery的ajax,其实他们的区别是纯粹jquery ajax方法请求的数据分页需要自己首先，而ajax属性不需要，非常拗口，我们来看一下两个例子来说明。
    $.ajax({
        type: "get",
        url: url,
        data: {},
        dataType: "json",
        success: function (res) {

            //bootstrap table初始化数据
            $('#table-pagination-ajax').bootstrapTable({
                height:300,
                columns: columns,
                data: res.rows
            });

        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table Pagination Custom Request 属性ajax自定义函数
    // bootstrap table 属性ajax自定义函数，服务器端分页需要自己实现，但是CSS样式有bootstrap table 自带
    $('#table-pagination-request').bootstrapTable({
        columns: columns,
        height:300,
        ajax: ajaxRequest
    });
    function ajaxRequest(params) {
        $.get(url + '?' + $.param(params.data)).then(function (res) {
            params.success(res)
        })
    }


    ////////////////////////////////////////////
    //Bootstrap Table Pagination JSP 前端分页
    // bootstrap table前端分页属性设置
    // 前端分页就是一次把所有数据从服务器返回给网页，通过JS进行分页，用户点击下页不会发送新的请求到服务器。bootstrap table前端分页 需要用到以下属性。
    // 属性名称	值	说明
    // pagination	true	是否开启分页，开启后表格底部会自动生成分页码
    // pageNumber	1	初始化时，显示第几页
    // pageSize	20	每页显示20条数据
    // pageList	[20, 50, 100, 200, All]	用户可以选择每页显示多少条数据
    // paginationHAlign	left	页码显示在左边
    // paginationDetailHAlign	right	分页详情显示在右边
    $('#table-pagination-jsp').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark", //设置表格样式
        height:300,
        //******前端分页设置****
        pagination:true,
        pageNumber:2,
        pageSize:10,
        pageList:"[10, 20, 50, 200]",
        paginationHAlign:"left",
        paginationDetailHAlign:"right"
        //******前端分页设置****
    });


    ////////////////////////////////////////////
    //Bootstrap Table SearchOnEnterKey 回车后执行搜索
    // search开启搜索框  searchOnEnterKey回车后执行搜索
    // bootstrap table查询搜索配置
    // bootstrap table查询搜索指的是表格内容前端搜索，而不是查询数据库进行搜索，如果要对数据库服务端进行搜索可以queryParams属性相对应的教程。bootstrap table表格搜索可以通过以下属性进行设置。
    // 属性名称	值	说明
    // search	true	开启搜索输入框
    // searchOnEnterKey	true	回车后执行搜索
    // strictSearch	true
    // 完全匹配搜索，不是like模糊查询
    // trimOnSearch	true	自动去除关键词两边空格
    // searchAlign	left/right	left搜索框在左边 right在右边
    // searchTimeOut	1000	设置搜索超时时间，数据量很大时才有用
    // searchText	字符串	初始化时默认搜索的关键词
    // customSearch	自定义方法	自定义搜索
    $('#table-search-on-enter-key').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark",
        height:300,
        search:true, //******开启搜索框****
        searchOnEnterKey:false, //******回车后执行搜索****
    });


    ////////////////////////////////////////////
    //Bootstrap Table SStrictSearch 完全匹配
    $('#table-strict-search').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark",
        height:300,
        search:true, //******开启搜索框****
        searchOnEnterKey:false, //******回车后执行搜索****
        strictSearch:true //完全匹配
    });


    ////////////////////////////////////////////
    //Bootstrap Table STrimOnSearch 去除关键词空格
    $('#table-trim-on-search').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark",
        height:300,
        search:true, //******开启搜索框****//
        searchOnEnterKey:false, //******回车后执行搜索****//
        strictSearch:true,  //******完全匹配****//
        trimOnSearch:true //去除关键词空格//
    });


    ////////////////////////////////////////////
    //Bootstrap Table SSearchAlign 搜索框位置
    $('#table-search-align').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark",
        height:300,
        search:true, //******开启搜索框****//
        searchOnEnterKey:false, //******回车后执行搜索****//
        strictSearch:true,  //******完全匹配****//
        trimOnSearch:true, //去除关键词空格//
        searchAlign:"left"
    });

    ////////////////////////////////////////////
    //Bootstrap Table SSearchText 默认搜索关键词
    $('#table-search-text').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark",
        height:300,
        search:true, //******开启搜索框****//
        searchOnEnterKey:false, //******回车后执行搜索****//
        strictSearch:true,  //******完全匹配****//
        trimOnSearch:true, //去除关键词空格//
        searchAlign:"left",
        searchText:"apple"
    });


    ////////////////////////////////////////////
    //Bootstrap Table SCustomSearch 自定义搜索
    $('#table-custom-search').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark",
        height:300,
        search:true, //******开启搜索框****//
        searchOnEnterKey:false, //******回车后执行搜索****//
        strictSearch:true,  //******完全匹配****//
        trimOnSearch:true, //去除关键词空格//
        searchAlign:"left",
        customSearch:customSearch,//自定义搜索，比如只搜索ID字段
    });
    function  customSearch(data, text) {
        return data.filter(function (row) {
            return (row.Id+"").indexOf(text) > -1
        })
    }


    ////////////////////////////////////////////
    //Bootstrap Table SmartDisplay 自动设置PageSize
    // smartDisplay作用
    // bootstrap table可以通过pageSize和pageList来设置表格每页固定显示多少条数据，用户通过pageList来选择每页显示多少条数据。这通常会遇到一个问题，假设你设置每页显示10条数据，那么表格的高度就是固定的如500px,由于用户屏幕分辨率不一样那么网页底部剩下的空白高度就不一样。一是影响美观，二是没充分利用网页空间。
    // 那么通过设置smartDisplay为true，bootstrap table会自动根据网页容器高度计算出pageSize和pageList的值你无需设置这两个值。
    $('#table-smart-display').bootstrapTable({
        columns: columns,
        data: getData(),
        height:300,
        pagination: true,
        smartDisplay:true
    });


    ////////////////////////////////////////////
    //Bootstrap Table Size 手工设置PageSize
    $('#table-page-size').bootstrapTable({
        columns: columns,
        data: getData(),
        height:300,
        pagination: true,
        pageNumber:2,
        pageSize:10,
        pageList:"[10, 20, 50, 200]",
        paginationHAlign:"left",
        paginationDetailHAlign:"right"
    });


    ////////////////////////////////////////////
    //Bootstrap Table Select 分页时保持选择状态
    // 设置maintainSelected为true可以保持选中状态，当用户点击下一页然后再次返回上一页时还可以保持选中状态，不管是客户端分页还是服务器端分页都支持该属性。非常实用的功能，实际应用中通常需要在好几个分页中来回查找需要删除或者审核的数据，有了这个属性就不用一页一页的来回切换了。
    $('#table-pagination-select').bootstrapTable({
        columns: columns_check,
        data: data,
        height: 300,
        pagination: true,//开启分页
        search: true, //开启刷选
        pageSize:2,
        maintainSelected :true,
        toolbar:"#toolbar-pagination"
    });
    function getPageSelect() {
        var rows = $('#table-pagination-select').bootstrapTable('getSelections');
        alert(JSON.stringify(rows));
    }


    ////////////////////////////////////////////
    //Bootstrap Table ShowHeader显示表格头部
    // bootstrap table showHeader显示和隐藏表格头部，showHeader设置ture显示，设置false隐藏。
    // 方法一在html中使用
    // <table id="table" data-show-header="false"></table>
    $('#table-show-header').bootstrapTable({
        columns: columns,
        data: data,
        height:300,
        showHeader:false //显示隐藏头部
    });


    ////////////////////////////////////////////
    //Bootstrap Table ShowFooter 显示隐藏表格底部
    // bootstrap table showFooter显示和隐藏表格底部，showFooter设置ture显示，设置false隐藏，默认值为false不显示。这个属性通常用配合列的footerFormatter属性来做统计行用，比如数量合计多少多少。
    // 方法一在html中使用
    // <table id="table" data-show-footer="false"></table>
    var columns_footer = [{
        field: 'Id',
        title: '编号'
    }, {
        field: 'ProductName',
        title: '产品名称'
    }, {
        field: 'StockNum',
        title: 'Item 库存',
        footerFormatter:stockNumFormatter_footer

    }];
    $('#table-show-footer').bootstrapTable({
        columns: columns_footer,
        data: data,
        height:300,
        showFooter:true , //显示隐藏头部

    });
    function stockNumFormatter_footer(data) {
        return "总计："+data.length
    }


    ////////////////////////////////////////////
    //Bootstrap Table ShowColumns 开启列刷选
    // 通过设置data-show-columns属性为true开启选择列功能
    // <table id="table" data-show-columns="true"></table>
    // 效果如下，注意你可能设置了showColumns为true也无法像下图一样弹出下拉框选项，这可能是你缺少引用popper.min.js和bootstrap.min.js文件。
    // 可以配合minimumCountColumns来设置当列大于设置数量时才显示选择列的按钮
    //
    // $('#table').bootstrapTable({
    //     showColumns:true,//显示列刷选
    //     columns: columns,
    //     minimumCountColumns:3//当列的数量大于等于3时 才显示列选择按钮
    //     data: data
    // });
    $('#table-show-columns').bootstrapTable({
        columns: columns,
        data: data,
        height:300,
        showColumns:true,
        onColumnSwitch: function (field, checked) {
            alert(JSON.stringify(field));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table ShowPaginationSwitch 开启显示和关闭分页按钮
    // showPaginationSwitch开启显示和关闭分页按钮,该属性需要配合pagination（开启分页）使用,效果图如下：
    // html设置方式
    // <table id="table"   data-pagination="true" data-show-pagination-switch="true"></table>
    $('#table-show-pagination-switch').bootstrapTable({
        url: url,
        height:300,
        pagination: true,//开启分页
        search: true, //开启刷选
        columns: columns
    });


    ////////////////////////////////////////////
    //Bootstrap Table ShowRefresh 显示刷选按钮
    // Bootstrap Table showRefresh属性控制是否显示刷选按钮，默认为false不显示,一般配合服务器端分页使用。
    // 名称	说明
    // JS属性	showRefresh
    // Html属性	data-show-refresh
    // 类型
    // Boolean
    // 功能	控制是否显示刷选按钮
    // html设置方法
    // <table id="table" data-show-refresh="true"></table>
    $('#table-show-refresh').bootstrapTable({
        url: url,
        height:300,
        pagination: true,//开启分页
        search: true, //开启刷选
        columns: columns
    });


    ////////////////////////////////////////////
    //Bootstrap Table ShowFullscreen 显示全屏按钮
    // Bootstrap Table showFullscreen属性控制是否显示全屏按钮，默认为false不显示。
    // 名称	说明
    // JS属性	showFullscreen
    // Html属性	data-show-fullscreen
    // 类型
    // Boolean
    // 功能	控制是否显示全屏按钮,点击按钮表格会全屏展示
    // html设置方法
    // <table id="table" data-show-fullscreen="true"></table>
    $('#table-show-fullscreen').bootstrapTable({
        url: url,
        height:300,
        pagination: true,//开启分页
        search: true, //开启刷选
        columns: columns
    });


    ////////////////////////////////////////////
    //Bootstrap Table ButtonsToolbar工具栏
    // 通过bootstrap table的toolbar和buttonsToolbar属性可以把网页其他元素插入到bootstrap table的容器里，而不用自己写div布局，我们先通过下图来说明以下bootstrap table的功能区域。
    // toolbar工具栏
    // 把你自定义的工具栏容器div的id或者样式赋值给toolbar属性，如data-toolbar=".toolbar"或data-toolbar="#toolbar"。
    // 1，自定义工具栏 html代码
    //
    // <div id="toolbar" class="toolbar">
    //     <button>删除选中</button>
    //     <button>查看详情</button>
    //     </div>
    // toolbarAlign工具栏对其方式
    // toolbarAlign属性有以下几个值：
    // 1，left往左对齐  toolbarAlign:"left"
    // 2，right往右对齐 toolbarAlign:"right"
    //
    // buttonsPrefix与buttonsClass设置按钮工具栏的样式
    // buttonsPrefix与buttonsClass都可以设置按钮的class样式，区别就是buttonsClass把样式追加到原有样式后面，buttonsPrefix追加到原有样式之前（测试结果是覆盖原有样式）。为什么要区分前后，因为CSS的优先级是从从前往后的，后面定义的样式可以覆盖前面定义的样式。
    $('#table-buttons-toolbar').bootstrapTable({
        toolbar:"#toolbar-buttons",
        height:300,
        columns: columns,
        data: data
    });


    ////////////////////////////////////////////
    //Bootstrap Table Fixed 固定表头并美化表头
    // Bootstrap Table要固定表头只需要设置高度就可以实现，但是滚动条引起的效果实在不美观
    $('#table-fixed').bootstrapTable({
        columns: columns,
        data: getData(),
        height:300  //这里就是固定表头的设置
    });


    ////////////////////////////////////////////
    //Bootstrap Table Row Color 设置表格样式并隔行变色
    // 设置bootstrap-table表格样式可以通过设置classess属性进行设置，官方默认支持黑色主题、隔行变色等样式，你也可以自定义样式把你的样式类名传进去。
    //
    // table-bordered设置表格边框
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: getData(),
    //     classes: "table table-bordered", //这里设置表格样式
    //     height:400
    // });
    // table-striped设置隔行变色
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: getData(),
    //     classes: "table table-bordered table-striped", //table-striped表示隔行变色
    //     height:400
    // });
    // table-sm设置表格更精致
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: getData(),
    //     classes: "table table-bordered table-striped table-sm", // 设置table-sm样式
    //     height:400
    // });
    // table-dark设置表格为黑色主题
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: getData(),
    //     classes: "table table-bordered table-striped table-sm table-dark",
    //     height:400
    // });
    $('#table-row-color').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark", //这里设置表格样式
        height:300
    });


    ////////////////////////////////////////////
    //Bootstrap Table RowStyle 设置行样式
    // 日常开发中我们通常会用到隔行变色来美化表格，也会根据每行的数据显示特定的背景颜色，如果库存低于100的行显示红色背景，Bootstrap Table中可以通过设置rowStyle属性设置行的样式。
    $('#table-row-style').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark",
        height:300,
        rowStyle: function(row, index) {
            var classes = [
                'bg-blue',
                'bg-green',
                'bg-red'
            ];

            if (index % 2 === 0 && index / 2 < classes.length) {
                return {
                    classes: classes[index / 2]
                }
            }
            return {
                css: {
                    color: 'blue'
                }
            }
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table TheadClasses 设置表头样式
    // 通过theadClasses属性设置表头样式。
    //
    // thead-light设置灰色背景
    // //bootstrap table初始化数据
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: getData(),
    //     theadClasses: "thead-light",//这里设置表头样式
    //     classes: "table table-bordered table-striped table-sm table-dark",
    //     height:400
    // });
    // thead-dark设置黑色背景
    // //bootstrap table初始化数据
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: getData(),
    //     theadClasses: "thead-dark",//这里设置表头样式
    //     classes: "table table-bordered table-striped table-sm table-dark",
    //     height:400
    // });
    $('#table-thead-class-esv').bootstrapTable({
        columns: columns,
        data: getData(),
        theadClasses: "thead-blue",//这里设置表头样式
        classes: "table table-bordered table-striped table-sm table-dark",
        height:300
    });


    ////////////////////////////////////////////
    //Bootstrap Table FooterStyle 设置表格底部样式
    // 上一篇我们讲解了通过showFooter和footerFormatter来显示表格底部。这节我们通过footerStyle来设置底部行每一列的样式，footerStyle支持设置style内联样式和定义class名称。通过以下代码设置StockNum列的class为 classex、ProductName列为红色。
    var columns_footer_style = [{
        field: 'Id',
        title: '编号'
    }, {
        field: 'ProductName',
        title: '产品名称',
        footerFormatter: productNameFormatter_footer_style
    }, {
        field: 'StockNum',
        title: '产品库存',
        footerFormatter: stockNumFormatter_footer_style

    }];
    $('#table-footer-style').bootstrapTable({
        columns: columns_footer_style,
        height:280,
        data: data,
        showFooter: true, //显示隐藏头部
        footerStyle: footerStyle
    });
    function productNameFormatter_footer_style(data) {
        return "总类：" + data.length
    }
    function stockNumFormatter_footer_style(data) {
        var total = 0;
        var field = this.field;
        for (var i = 0; i < data.length; i++) {
            total = total + parseInt(data[i][field]);
        }
        return "总计：" + total
    }
    function footerStyle(column) {
        return {
            StockNum:
                {
                    classes: 'classex'
                },
            ProductName:
                {
                    css: { color: 'red' }
                }
        }[column.field]
    }

</script>

<h2 style="color: red">Bootstrap Table 表格插件 → 方法</h2>
<div>
  <hr>
  <h4>Bootstrap Table GetOptions 获取配置对象方法</h4>
  <div class="table-demo">
    <div id="toolbar-get-options">
      <button onclick="getOptions('table-get-options')">点击获取配置</button>
    </div>
    <table id="table-get-options"></table>
  </div>

  <hr>
  <h4>Bootstrap Table RefreshOptions 刷新配置的方法</h4>
  <div class="table-demo">
    <div id="toolbar-refresh-options">
      <button onclick="refreshOptions()">更新配置</button>
    </div>
    <table id="table-refresh-options"></table>
  </div>

  <hr>
  <h4>Bootstrap Table GetData 获取表格数据的方法</h4>
  <div class="table-demo">
    <div id="toolbar-get-data">
      <button onclick="getTableData()">获取数据</button>
    </div>
    <table id="table-get-data"></table>
  </div>

  <hr>
  <h4>Bootstrap Table GetSelections 获取选中行数据的方法</h4>
  <div class="table-demo">
    <div id="toolbar-get-selections">
      <button onclick="getSelections('table-get-selections')">获取选中项目 </button>
    </div>
    <table id="table-get-selections"></table>
  </div>

  <hr>
  <h4>Bootstrap Table GetAllSelections 获取所有选中行数据的方法</h4>
  <div class="table-demo">
    <div id="toolbar-get-all-selections">
      <button onclick="getAllSelections('table-get-all-selections')">获取所有选中项目 </button>
      <span>测试流程，先随便选中第1行，任何搜索框输入200再选中这行，点击按钮看结果</span>
    </div>
    <table id="table-get-all-selections"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Load 加载数据到表格的方法</h4>
  <div class="table-demo">
    <div id="toolbar-load">
      <button onclick="loadData()">load加载新数据</button>
    </div>
    <table id="table-load"></table>
  </div>

  <hr>
  <h4>Bootstrap Table MergeCells 合并行和列的方法</h4>
  <div class="table-demo">
    <div id="toolbar-merge-cells">
      <button onclick="mergeCells()">合并行</button>
    </div>
    <table id="table-merge-cells"></table>
  </div>

  <hr>
  <h4>Bootstrap Table CheckAll 全选选中所有行的方法</h4>
  <div class="table-demo">
    <div id="toolbar-check-all">
      <button onclick="checkAll('table-check-all',1)">checkAll选中所有行</button>
      <button onclick="checkAll('table-check-all',2)">uncheckAll全选所有选中项</button>
    </div>
    <table id="table-check-all"></table>
  </div>

  <hr>
  <h4>Bootstrap Table UncheckAll 反选选中所有行的方法</h4>
  <div class="table-demo">
    <div id="toolbar-uncheck-all">
      <button onclick="checkAll('table-uncheck-all',1)">checkAll选中所有行</button>
      <button onclick="checkAll('table-uncheck-all',2)">uncheckAll全选所有选中项</button>
    </div>
    <table id="table-uncheck-all"></table>
  </div>

  <hr>
  <h4>Bootstrap Table CheckBy 根据条件选中行</h4>
  <div class="table-demo">
    <div id="toolbar-check-by">
      <button onclick="checkBy('table-check-by',1)">选中1,3行</button>
      <button onclick="checkBy('table-check-by',2)">取消选中1,3行</button>
    </div>
    <table id="table-check-by"></table>
  </div>

  <hr>
  <h4>Bootstrap Table uncheckBy根据条件取消中行的方法</h4>
  <div class="table-demo">
    <div id="toolbar-uncheck-by">
      <button onclick="checkBy('table-uncheck-by',1)">选中21,3行</button>
      <button onclick="checkBy('table-uncheck-by',2)">取消选中21,3行</button>
    </div>
    <table id="table-uncheck-by"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Refresh 重新加载数据的方法</h4>
  <div class="table-demo">
    <div id="toolbar-refresh">
      <button onclick="checkRefresh(1)">refresh刷新请求</button>
      <button onclick="checkRefresh(2)">refresh刷新请求同时更新pageSize</button>
      <button onclick="getOptions('table-refresh')">点击获取配置</button>
    </div>
    <table id="table-refresh"></table>
  </div>

  <hr>
  <h4>Bootstrap Table CheckInvert 反选反向选中行的方法</h4>
  <div class="table-demo">
    <div id="toolbar-check-invert">
      <button onclick="checkInvert(1)">选中1,3行</button>
      <button onclick="checkInvert(2)">反选</button>
    </div>
    <table id="table-check-invert"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Destroy 注销表格方法</h4>
  <div class="table-demo">
    <div id="toolbar-destroy">
      <button onclick="destroy()">销毁表格</button>
    </div>
    <table id="table-destroy"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ResetView 刷新表格视图的方法</h4>
  <div class="table-demo">
    <div id="toolbar-refresh-view">
      <button onclick="refreshView()">刷新视图</button>
    </div>
    <table id="table-refresh-view"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ResetWidth 重新适配表格宽度的方法</h4>
  <div class="table-demo">
    <div id="toolbar-reset-width">
      <button onclick="resetWidth()">重新适配表格宽度</button>
    </div>
    <table id="table-reset-width"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ShowLoading/HideLoading 隐藏显示加载进度提示，并自定义提示文字</h4>
  <div class="table-demo">
    <div id="toolbar-loading-show-hide">
      <button onclick="showLoading()">显示加载提示</button>
      <button onclick="hideLoading()">隐藏加载提示</button>
    </div>
    <table id="table-loading-show-hide"></table>
  </div>

  <hr>
  <h4>Bootstrap Table TogglePagination 隐藏显示分页</h4>
  <div class="table-demo">
    <div id="toolbar-toggle-pagination">
      <button class="btn btn-secondary" onclick="togglePagination()">隐藏显示分页</button>
    </div>
    <table id="table-toggle-pagination"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ToggleFullscreen 全屏显示</h4>
  <div class="table-demo">
    <div id="toolbar-toggle-fullscreen">
      <button class="btn btn-secondary" onclick="toggleFullscreen()">触发或取消全屏显示</button>
    </div>
    <table id="table-toggle-fullscreen"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ToggleView 切换卡片视图方法</h4>
  <div class="table-demo">
    <div id="toolbar-toggle-view">
      <button class="btn btn-secondary" onclick="toggleView()">切换卡片视图</button>
    </div>
    <table id="table-toggle-view"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ResetSearch 重置搜索框</h4>
  <div class="table-demo">
    <div id="toolbar-reset-search">
      <button class="btn btn-secondary" onclick="resetSearch()">重置搜索框为空</button>
      <button class="btn btn-secondary" onclick="resetSearch2()">重置搜索框为1000</button>
    </div>
    <table id="table-reset-search"></table>
  </div>

  <hr>
  <h4>Bootstrap Table FilterBy 数据刷选过滤器和查询条件</h4>
  <div class="table-demo">
    <div id="toolbar-filter-by">
      <button onclick="filterBy1()">Id字段10和20的数据</button>
      <button onclick="filterBy2()">刷选Id字段 10和20 和 Car字段为C6 的数据</button>
      <button onclick="filterBy3()">刷选出Id字段 大于等于10和小于等于30的数据</button>
      <button onclick="filterBy4()">恢复数据</button>
    </div>
    <table id="table-filter-by"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ScrollTo 滚动到指定位置</h4>
  <div class="table-demo">
    <div id="toolbar-scroll-to">
      <button onclick="scrollTo1()">滚动到第8行</button>
      <button onclick="scrollTo2()">滚动到500px</button>
      <button onclick="scrollTo3()">获取当前位置</button>
    </div>
    <table id="table-scroll-to"></table>
  </div>

  <hr>
  <h4>Bootstrap Table GetScrollPosition 获取当前位置</h4>
  <div class="table-demo">
    <div id="toolbar-get-scroll-position">
      <button onclick="getScrollPosition()">获取当前位置</button>
    </div>
    <table id="table-get-scroll-position"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Append 追加数据到表格末尾方法</h4>
  <div class="table-demo">
    <div id="toolbar-append">
      <button onclick="appendData()">append追加数据到最后</button>
    </div>
    <table id="table-append"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Prepend 追加数据到表格头部方法</h4>
  <div class="table-demo">
    <div id="toolbar-prepend">
      <button onclick="prependData()">prepend追加数据到前面</button>
    </div>
    <table id="table-prepend"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Remove 把数据从表格中删除的方法</h4>
  <div class="table-demo">
    <div id="toolbar-remove">
      <button onclick="removeSelection()">删除选中的数据</button>
    </div>
    <table id="table-remove"></table>
  </div>

  <hr>
  <h4>Bootstrap Table RemoveAll 把数据从表格中删除的方法</h4>
  <div class="table-demo">
    <div id="toolbar-remove-all">
      <button onclick="removeAllSelections()">删除所有数据</button>
    </div>
    <table id="table-remove-all"></table>
  </div>

  <hr>
  <h4>Bootstrap Table InsertRow 插入一行数据的方法</h4>
  <div class="table-demo">
    <div id="toolbar-insert-row">
      <button onclick="insertRow()">插入数据到第1行</button>
    </div>
    <table id="table-insert-row"></table>
  </div>

  <hr>
  <h4>Bootstrap Table UpdateRow 更新一行数据的方法</h4>
  <div class="table-demo">
    <div id="toolbar-update-row">
      <button onclick="updateRow(false)">更新第1行数据 false</button>
      <button onclick="updateRow(true)">更新第1行数据参数replace为true</button>
      <button onclick="getSelections('table-update-row')">获取选中行数据</button>
    </div>
    <table id="table-update-row"></table>
  </div>

  <hr>
  <h4>Bootstrap Table GetRowByUniqueId 根据唯一Id获取行数据的方法</h4>
  <div class="table-demo">
    <div id="toolbar-get-row-unique-id">
      <button onclick="getRowByUniqueId()">根据唯一字段获取行数据</button>
    </div>
    <table id="table-get-row-unique-id"></table>
  </div>

  <hr>
  <h4>Bootstrap Table UpdateByUniqueId 根据唯一Id更新行数据的方法</h4>
  <div class="table-demo">
    <div id="toolbar-update-unique-id">
      <button onclick="updateByUniqueId(false)">更新第1行数据 false</button>
      <button onclick="updateByUniqueId(true)">更新第1行数据参数replace为true</button>
      <button onclick="getSelections('table-update-unique-id')">获取选中行数据</button>
    </div>
    <table id="table-update-unique-id"></table>
  </div>

  <hr>
  <h4>Bootstrap Table  RemoveByUniqueId 根据唯一Id删除数据的方法</h4>
  <div class="table-demo">
    <div id="toolbar-remove-unique-id">
      <button onclick="removeByUniqueId()">删除第Id为2的数据</button>
    </div>
    <table id="table-remove-unique-id"></table>
  </div>

  <hr>
  <h4>Bootstrap Table UpdateCell 更新单元格数据的方法</h4>
  <div class="table-demo">
    <div id="toolbar-update-cell">
      <button onclick="updateCell()">更新第二行的catalog字段为 newValue</button>
    </div>
    <table id="table-update-cell"></table>
  </div>

  <hr>
  <h4>Bootstrap Table UpdateCellByUniqueId 根据唯一字段更新单元格数据的方法</h4>
  <div class="table-demo">
    <div id="toolbar-update-cell-unique-id">
      <button onclick="updateCellByUniqueId()">更新第Id为11的单元格数据</button>
    </div>
    <table id="table-update-cell-unique-id"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ShowRow 显示行的方法</h4>
  <div class="table-demo">
    <div id="toolbar-show-row">
      <button onclick="hideRowByIndex('table-show-row')">根据index隐藏第2行</button>
      <button onclick="showRowByIndex('table-show-row')">根据index显示第2行</button>
      <button onclick="hideRowByUniqueId('table-show-row')">根据uniqueId隐藏第2行</button>
      <button onclick="showRowByUniqueId('table-show-row')">根据uniqueId显示第2行</button>
    </div>
    <table id="table-show-row"></table>
  </div>

  <hr>
  <h4>Bootstrap Table HideRow 显示行的方法</h4>
  <div class="table-demo">
    <div id="toolbar-hide-row">
      <button onclick="hideRowByIndex('table-hide-row')">根据index隐藏第2行</button>
      <button onclick="showRowByIndex('table-hide-row')">根据index显示第2行</button>
      <button onclick="hideRowByUniqueId('table-hide-row')">根据uniqueId隐藏第2行</button>
      <button onclick="showRowByUniqueId('table-hide-row')">根据uniqueId显示第2行</button>
    </div>
    <table id="table-hide-row"></table>
  </div>

  <hr>
  <h4>Bootstrap Table GetHiddenRows 获取隐藏的行的方法</h4>
  <div class="table-demo">
    <div id="toolbar-get-hidden-rows">
      <button onclick="getHideRows(1)">获取隐藏的行</button>
      <button onclick="getHideRows(2)">显示隐藏的行</button>
    </div>
    <table id="table-get-hidden-rows"></table>
  </div>

  <hr>
  <h4>Bootstrap Table Show/Hide Column 隐藏显示列的方法</h4>
  <div class="table-demo">
    <div id="toolbar-show-hide-column">
      <button onclick="showColumn('table-show-hide-column',1)">隐藏的列</button>
      <button onclick="showColumn('table-show-hide-column',2)">显示的列</button>
    </div>
    <table id="table-show-hide-column"></table>
  </div>

  <hr>
  <h4>Bootstrap Table GetVisibleColumns 获取显示的列的方法</h4>
  <div class="table-demo">
    <div id="toolbar-get-visible-columns">
      <button onclick="showColumn('table-get-visible-columns',1)">隐藏列</button>
      <button onclick="showColumn('table-get-visible-columns',2)">显示列</button>
      <button onclick="getVisibleColumns()">获取显示的列</button>
    </div>
    <table id="table-get-visible-columns"></table>
  </div>

  <hr>
  <h4>Bootstrap Table GetHiddenColumns 获取隐藏的列的方法</h4>
  <div class="table-demo">
    <div id="toolbar-get-hidden-columns">
      <button onclick="showColumn('table-get-hidden-columns',1)">隐藏列</button>
      <button onclick="showColumn('table-get-hidden-columns',2)">显示列</button>
      <button onclick="getHiddenColumns()">获取隐藏的列</button>
    </div>
    <table id="table-get-hidden-columns"></table>
  </div>

  <hr>
  <h4>Bootstrap Table ShowAllColumns 显示所有列的方法</h4>
  <div class="table-demo">
    <div id="toolbar-show-all-columns">
      <button onclick="showAllColumns('table-show-all-columns',2)">隐藏所有列</button>
      <button onclick="showAllColumns('table-show-all-columns',1)">显示所有列</button>
    </div>
    <table id="table-show-all-columns"></table>
  </div>

  <hr>
  <h4>Bootstrap Table HideAllColumns 隐藏所有列的方法</h4>
  <div class="table-demo">
    <div id="toolbar-hide-all-columns">
      <button onclick="showAllColumns('table-hide-all-columns',2)">隐藏所有列</button>
      <button onclick="showAllColumns('table-hide-all-columns',1)">显示所有列</button>
    </div>
    <table id="table-hide-all-columns"></table>
  </div>
</div>
<script>
    ////////////////////////////////////////////
    //Bootstrap Table GetOptions 获取配置对象方法
    // bootstrap table getOptions 获取配置对象方法，没有参数，返回配置对象，这个对象包含你未手动设置的默认值。
    //
    // //tableId 表格对象的ID
    // var options=$("#tableId").bootstrapTable('getOptions');
    // //获取每页显示多少条数据
    // var pageSize=options.pageSize;
    // //获取表格的列对象
    // var columns=options.columns;
    //
    // //返回对象格式如下,看不看的懂下面的对象无所谓
    // {
    //     ajaxOptions: {}
    //     buttonsAlign: "right"
    //     buttonsClass: "secondary"
    //     cache: true
    //     cardView: false
    //     detailView: false
    //     escape: false
    //     showColumns: false
    //     showFooter: false
    //     showFullscreen: false
    //     showHeader: true
    //     showPaginationSwitch: false
    //     showRefresh: false
    //     showToggle: false
    //     sidePagination: "client"
    //     silentSort: true
    //     singleSelect: false
    //     smartDisplay: true
    //     sortOrder: "asc"
    //     sortStable: false
    //     sortable: true
    //     strictSearch: false
    //     theadClasses: ""
    //     toolbar: "#toolbar"
    // ......等等......
    // }
    $('#table-get-options').bootstrapTable({
        toolbar:"#toolbar-options",
        columns: columns,
        data: data,
        height: 300,
    });
    function getOptions($elem) {
        $elem = $("#" + $elem);
        var ops = $elem.bootstrapTable('getOptions');
        alert(JSON.stringify(ops));
        alert("获取每页显示条数："+ops.pageSize);
    }


    ////////////////////////////////////////////
    //Bootstrap Table RefreshOptions 刷新配置的方法
    // bootstrap table refreshOptions 刷新配置，比如把某列从表中删除、设置新的服务器端分页网址、把每页显示10条数据修改成每页50条，都每页使用refreshOptions方法。刷新数据有refresh和refreshOptions方法，那么此函数和refresh的区别就是refresh没有参数，refresh在现有配置的情况下刷新数据重新获取数据更新UI。
    //
    // 使用方法
    // //把每页显示2条数据更新为每页显示5条数据
    // $('#table').bootstrapTable('refreshOptions', {pageSize:5});
    $('#table-refresh-options').bootstrapTable({
        toolbar:"#toolbar-refresh-options",
        columns: columns,
        data: data,
        height: 300,
        pageSize:2,
        pagination:true
    });
    function refreshOptions() {
        $('#table-refresh-options').bootstrapTable('refreshOptions', {pageSize:5});
    }


    ////////////////////////////////////////////
    //Bootstrap Table GetData 获取表格数据的方法
    // bootstrap table getData获取表格的数据,该方法新版和老版本有区别，因为新版本增加了隐藏行的功能而老版本没有。老版本1个参数是否获取包含分页的数据，新版本增加了一个是否获取包含隐藏行的数据。
    // 注：当然这里说的分页是指前端分页，想想也不可能是指服务器端分页的数据
    //
    // 老版本getData
    // //只获取当前页的数据,比如有10页数据，当前一页只获取第一页的数据
    // var data= $('#table').bootstrapTable('getData',true);
    // //获取包含分页的数据，比如有10页数据，获取全部10页的数据
    // var data= $('#table').bootstrapTable('getData',false);
    // 新版本getData
    // 参数名称	参数说明
    // useCurrentPage	设置为true获取当前页码的数据；设置为false获取表格全部页码的数据
    // includeHiddenRows	设置true包含隐藏行的数据；设置false不包含隐藏行的数据
    //
    // //只获取当前页的数据,包含隐藏行
    // var data= $('#table').bootstrapTable('getData',{useCurrentPage:true,includeHiddenRows:true});
    // //获取包含分页的全部数据，但是不包含隐藏行的数据
    // var data= $('#table').bootstrapTable('getData',{useCurrentPage:false,includeHiddenRows:false});
    $('#table-get-data').bootstrapTable({
        toolbar:"#toolbar-get-data",
        columns: columns,
        data: data,
        height:300,
        pageSize:2,
        pagination:true
    });
    function getTableData() {
        var data= $('#table-get-data').bootstrapTable('getData',{useCurrentPage:true,includeHiddenRows:true});
        alert(JSON.stringify(data));
    }


    ////////////////////////////////////////////
    //Bootstrap Table GetSelections 获取选中行数据的方法
    // getSelections是一个bootstrap table一个重要而经常用到的方法，该方法获取获取你选中行的数据，需要注意和getAllSelections方法的区别，getAllSelections会返回包含搜索刷选后的选中的数据。
    // 方法返回的对象格式如下：
    //
    // [{"Id":1,"ProductName":"香蕉","StockNum":"100","checked":true},
    //     {"Id":3,"ProductName":"车厘子","StockNum":"2010","checked":true}]
    // 前端分页getSelections
    // 如果使用的是前端分页模式，为了把属性maintainSelected设置为ture,getSelections也可以同时获取多页选中的数据。
    //
    //
    // //获取选中行的数据
    // var rows = $('#table').bootstrapTable('getSelections');
    // //rows选中行的数据对象数组
    // alert(JSON.stringify(rows));
    // // rows对象的格式
    // // [{"Id":1,"ProductName":"香蕉","StockNum":"100","checked":true},{"Id":3,"ProductName":"车厘子","StockNum":"2010","checked":true}]
    // 服务器端分页getSelections
    // 服务器端分页如果需要同时获取多给分页选中的行数据，需要先设置保持状态属性。
    //
    // //首先，设置maintainSelected :true开启保持分页状态
    // $('#table').bootstrapTable({
    //     url: '/package/bootstrap-table-1.14.1/data.json',
    //     pagination: true,
    //     search: true,
    //     columns: columns,
    //     pageSize:2,
    //     maintainSelected :true,
    //     toolbar:"#toolbar"
    // });
    // //获取选中的数据
    // var rows = $('#table').bootstrapTable('getSelections');
    $('#table-get-selections').bootstrapTable({
        url: url,
        pagination: true,//开启分页
        search: true, //开启刷选
        columns: columns_check,
        pageSize:2,
        height: 300,
        maintainSelected :true,
        toolbar:"#toolbar-get-selections"
    });
    function getSelections($elem) {
        $elem = $("#" + $elem);
        var rows = $elem.bootstrapTable('getSelections');
        alert(JSON.stringify(rows));
    }


    ////////////////////////////////////////////
    //Bootstrap Table GetAllSelections 获取所有选中行数据的方法
    // getAllSelections 是一个bootstrap table一个经常用到的方法，该方法获取获取你所有选中行的数据，需要注意和getSelections方法的区别，getSelections不会返回包含搜索刷选后的选中的数据。
    // 方法返回的对象格式如下：
    //
    // [{"Id":1,"ProductName":"香蕉","StockNum":"100","checked":true},
    // {"Id":3,"ProductName":"车厘子","StockNum":"2010","checked":true}]
    // getAllSelections用法
    // 如果使用的是前端分页模式，无效把属性maintainSelected设置为ture,getSelections也可以同时获取多页选中的数据。
    //
    //
    // //获取所有选中行的数据
    // var rows = $('#table').bootstrapTable('getAllSelections ');
    // //rows选中行的数据对象数组
    // alert(JSON.stringify(rows));
    // // rows对象的格式
    // // [{"Id":1,"ProductName":"香蕉","StockNum":"100","checked":true},{"Id":3,"ProductName":"车厘子","StockNum":"2010","checked":true}]
    // 服务器端分页getAllSelections
    // 服务器端分页如果需要同时获取多给分页选中的行数据，需要先设置保持状态属性。
    //
    // //首先，设置maintainSelected :true开启保持分页状态
    // $('#table').bootstrapTable({
    //     url: '/package/bootstrap-table-1.14.1/data.json',
    //     pagination: true,
    //     search: true,
    //     columns: columns,
    //     pageSize:2,
    //     maintainSelected :true,
    //     toolbar:"#toolbar"
    // });
    // //获取选中的数据
    // var rows = $('#table').bootstrapTable('getAllSelections ');
    $('#table-get-all-selections').bootstrapTable({
        url: url,
        pagination: true,//开启分页
        search: true, //开启刷选
        columns: columns_check,
        height: 300,
        pageSize:2,
        maintainSelected :true,
        toolbar:"#toolbar-get-all-selections"
    });
    function getAllSelections($elem) {
        $elem = $("#" + $elem);
        var rows = $elem.bootstrapTable('getAllSelections');
        alert(JSON.stringify(rows));
    }


    ////////////////////////////////////////////
    //Bootstrap Table Load 加载数据到表格的方法
    // bootstrap table load加载数据到表格的方法
    // bootstrap table本身自带了一套加载服务器端数据的机制，你无需自己用jquery的ajax方法去加载服务器端的数据，但是如果你仍然习惯jquery的ajax方法加载数据或你有自己的特殊需求，你可以用bootstrap table load方法来填充数据到表格。load方法会把旧的数据覆盖。如果你想用bootstrap table自带机制，请点击bootstrap table 服务器端分页
    //
    // load方法
    // 参数名称	参数说明
    // data	格式[{id:1,name:"x1"},{id:2,name:"x2"}]
    // 代码例子
    // 注意：在使用laod加载数据之前不要忘记初始化bootstrap table,比如显示哪些列之类的。
    //
    // //第1步，定义要显示的列
    // var columns = [
    //     {
    //         field:"Id",
    //         title: 'ID'
    //     }, {
    //         field: 'Car',
    //         title: '品牌'
    //     } ];
    // //第2步，初始化bootstrap table
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     columns: columns,
    // });
    // //第3部，使用load方法
    // //newData你从服务器上返回的新数据
    // var newData = [{
    //     Id: 2000,
    //     Car: '雅阁',
    // }, {
    //     Id: 2002,
    //     Car: '帕萨特',
    // }, {
    //     Id: 2003,
    //     Car: '思域',
    // } ];
    //
    // $('#table').bootstrapTable('load', newData);
    $('#table-load').bootstrapTable({
        toolbar:"#toolbar-load",
        data:data,
        columns: columns,
        height: 300
    });
    function loadData() {
        //newData你从服务器上返回的新数据
        var newData = [{
            Id: 1,
            ProductName: 'new-香蕉',
            StockNum: '100'
        }, {
            Id: 2,
            ProductName: 'new-苹果',
            StockNum: '200'
        }, {
            Id: 3,
            ProductName: 'new-草莓',
            StockNum: '300'
        }, {
            Id: 4,
            ProductName: 'new-樱桃',
            StockNum: '400'
        }, {
            Id: 5,
            ProductName: 'new-菠萝',
            StockNum: '500'
        }];

        $('#table-load').bootstrapTable('load', newData);
    }


    ////////////////////////////////////////////
    //Bootstrap Table MergeCells 合并行和列的方法
    // bootstrap table mergeCells合并行和列的方法，通过这个方法可以合并指定单元格的行和列，该方法为不可逆向操作合并后无法恢复。
    //
    // mergeCells方法
    // 参数名称
    // index	从第几行开始合并
    // field	从那一列开始合并
    // colspan	要合并几列
    // rowspan	要合并几行
    // 代码例子
    // //从第2行的name列开始合并2列和3行
    // $('#table').bootstrapTable('mergeCells', {index: 1, field: 'name', colspan: 2, rowspan: 3});
    var columns_merge = [
        {
            checkbox:true
        },
        {
            field:"Id",
            title: 'ID'
        }, {
            field: 'name',
            title: '姓名'
        } , {
            field: 'clog',
            title: '目录'
        } ];
    var data_merge= [{
        Id: 1,
        clog: '目录 A1',
        name:"li",
    }, {
        Id: 2,
        clog: '目录 A2',
        name:"yu",
    }, {
        Id: 3,
        clog: '目录 A3',
        name:"pe",
    } , {
        Id: 4,
        clog: '目录 A3',
        name:"pe",
    } , {
        Id: 5,
        clog: '目录 A3',
        name:"pe",
    } ];
    $('#table-merge-cells').bootstrapTable({
        toolbar:"#toolbar-merge-cells",
        data:data_merge,
        columns: columns_merge,
        height: 300
    });
    function mergeCells() {
        $('#table-merge-cells').bootstrapTable('mergeCells', {index: 1, field: 'name', colspan: 2, rowspan: 3});
    }


    ////////////////////////////////////////////
    //Bootstrap Table CheckAll 全选选中所有行的方法
    // bootstrap table checkAll选中所有行的方法，注如果有分页只会全部选中当前页，而不是选中全部页码的数据。
    //
    // checkAll方法
    // 参数名称
    // 无
    // 代码例子
    // //全部选中当前页所有行
    // $('#table').bootstrapTable('checkAll');
    $('#table-check-all').bootstrapTable({
        toolbar:"#toolbar-check-all",
        data:data,
        columns: columns_check,
        height: 300
    });
    function checkAll($elem, icase) {
        $elem = $("#" + $elem);
        if(icase===1) {
            $elem.bootstrapTable('checkAll');
        }
        if(icase===2) {
            $elem.bootstrapTable('uncheckAll');
        }
    }


    ////////////////////////////////////////////
    //Bootstrap Table UncheckAll 反选选中所有行的方法
    // bootstrap table uncheckAll 反选所有行的方法，注如果有分页只会反选当前页，而不是选中全部页码的数据。
    //
    // uncheckAll方法
    // 参数名称
    // 无
    // 代码例子
    // //取消选中当前页所有行
    // $('#table').bootstrapTable('uncheckAll');
    $('#table-uncheck-all').bootstrapTable({
        toolbar:"#toolbar-uncheck-all",
        data:data,
        columns: columns_check,
        height: 300
    });


    ////////////////////////////////////////////
    //Bootstrap Table CheckBy 根据条件选中行
    // bootstrap table checkBy根据设置的条件选中行，比如将id为1，5，8的行选中。
    //
    // checkBy方法
    // 参数名称
    // field	根据那个字段来选中行
    // values	据这个字段的哪些值来选中，格式：[1,5,8]
    // 代码例子
    // //选中Id为1和23的行
    // $('#table').bootstrapTable('checkBy', {field: 'Id', values:[1, 23]});
    $('#table-check-by').bootstrapTable({
        toolbar:"#toolbar-check-by",
        data:data,
        columns: columns_check,
        height: 300
    });
    function checkBy($elem, icase) {
        $elem = $("#" + $elem);
        if(icase===1) {
            $elem.bootstrapTable('checkBy', {field: 'Id', values:[1, 3]});
        }
        if(icase===2) {
            $elem.bootstrapTable('uncheckBy', {field: 'Id', values:[1, 3]});
        }
    }


    ////////////////////////////////////////////
    //Bootstrap Table uncheckBy根据条件取消中行的方法
    // bootstrap table checkBy根据设置的取消选中行，比如将id为1，5，8的行选中。
    //
    // uncheckBy方法
    // 参数名称
    // field	根据那个字段来选中行
    // values	据这个字段的哪些值来选中，格式：[1,51,18]
    // 代码例子
    // //取消选中Id为1和23的行
    // $('#table').bootstrapTable('uncheckBy', {field: 'Id', values:[22,23]});
    $('#table-uncheck-by').bootstrapTable({
        toolbar:"#toolbar-uncheck-by",
        data:data,
        columns: columns_check,
        height: 300
    });


    ////////////////////////////////////////////
    //Bootstrap Table Refresh 重新加载数据的方法
    // bootstrap table refresh重新加载数据的方法，同时也可重新设置分页相关的配置和refreshOptions方法类似。
    //
    // refresh方法
    // 参数名称
    // params	需要更新的配置
    // 代码例子
    // //重新加载数据
    // $('#table').bootstrapTable('refresh');
    // //重新加载数据,并设置每页显示10
    // $('#table').bootstrapTable('refresh', {pageSize:10});
    $('#table-refresh').bootstrapTable({
        toolbar:"#toolbar-refresh",
        columns: columns,
        classes: "table table-bordered table-striped table-sm table-dark", //设置表格样式
        height:300,
        //******服务器端分页设置****
        url: url, //服务器返回数据的网址
        method: 'GET',   //数据请求方式
        sidePagination:'server',
        pagination:true,
        pageNumber:1,
        pageSize:2,
        pageList:"[10, 20, 50, 200]",
        paginationHAlign:"left",
        paginationDetailHAlign:"right",
        queryParams:function(params) {
            /******获取分页数据时，这里你可以带上你自定义的参数******/
            params.action="getlist";
            params.catalogId=0;
            return params; }
        //******服务器端分页设置****
    });
    function checkRefresh(icase) {
        if(icase===1) {
            $('#table-refresh').bootstrapTable('refresh');
        }
        if(icase===2) {
            $('#table-refresh').bootstrapTable('refresh', {pageSize:10});
        }
    }


    ////////////////////////////////////////////
    //Bootstrap Table CheckInvert 反选反向选中行的方法
    // bootstrap table checkInvert反选反向选中行的方法，反选就是比如你手动选中了1，2行，执行checkInvert反选方法方法后就会变成1，2行不选中其他行选中。
    //
    // checkInvert方法
    // 参数名称
    // 无
    // 代码例子
    // //反选反向选中行的方法
    // $('#table').bootstrapTable('checkInvert');
    $('#table-check-invert').bootstrapTable({
        toolbar:"#toolbar-check-invert",
        data:data,
        columns: columns_check,
        height: 300
    });
    function checkInvert(icase) {
        if(icase===1) {
            $('#table-check-invert').bootstrapTable('checkInvert', {field: 'Id', values:[1, 5]});
        }
        if(icase===2) {
            $('#table-check-invert').bootstrapTable('checkInvert');
        }
    }


    ////////////////////////////////////////////
    //Bootstrap Table Destroy 注销表格方法
    // bootstrap table destroy注销销毁表格的方法，销毁后如果要继续使用就需要重新初始化bootstrap table。
    //
    // updateCell方法
    // 参数名称	参数说明
    // 无
    // 代码例子
    // //初始化
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     data:data,
    //     columns: columns,
    // });
    // //销毁表格
    // $('#table').bootstrapTable('destroy');
    $('#table-destroy').bootstrapTable({
        toolbar:"#toolbar-destroy",
        data:data,
        columns: columns,
        height: 300
    });
    function destroy() {
        $('#table-destroy').bootstrapTable('destroy');
    }


    ////////////////////////////////////////////
    //Bootstrap Table ResetView 刷新表格视图的方法
    // bootstrap table resetView刷新表格视图如宽度高度，bootstrap table本身不提供设置表格的width属性，只能设置某列的宽度，如果表格的父容器大小发生了变化（如缩小放大了窗口） 这时就可以用resetView方法刷新表格视图并会触发onResetView事件。
    //
    // resetView方法
    // 参数名称	参数说明
    // height	表格的新高度
    // 代码例子
    // //初始化
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     data:data,
    //     columns: columns,
    // });
    // //刷新视图
    // $('#table').bootstrapTable('resetView');
    // //刷新高度
    // $('#table').bootstrapTable('resetView',{height:200});
    $('#table-refresh-view').bootstrapTable({
        toolbar:"#toolbar-refresh-view",
        data:data,
        columns: columns,
        height: 300,
        onResetView:function(){
            alert("你刷新了视图");
        }
    });
    function refreshView() {
        $(".table-demo").css({width:"100%"});
        $('#table-refresh-view').bootstrapTable('resetView');
    }


    ////////////////////////////////////////////
    //Bootstrap Table ResetWidth 重新适配表格宽度的方法
    // bootstrap table resetWidth更新单元格数据,参数列表如下。
    //
    // resetWidth方法
    // 参数名称	参数说明
    // 无
    // 代码例子
    // //resetWidth重新适配宽度
    // $('#table').bootstrapTable('resetWidth')
    $('#table-reset-width').bootstrapTable({
        toolbar:"#toolbar-reset-width",
        data:data,
        columns: columns,
        height: 300
    });
    function resetWidth() {
        $('#table-reset-width').bootstrapTable('resetWidth');
    }


    ////////////////////////////////////////////
    //Bootstrap Table ShowLoading/HideLoading 隐藏显示加载进度提示，并自定义提示文字
    // bootstrap table showLoading/hideLoading隐藏显示加载进度提示，并自定义提示文字。
    //
    // 代码例子
    // //显示加载进度提示
    // $('#table').bootstrapTable('showLoading');
    // //隐藏加载进度提示
    // $('#table').bootstrapTable('hideLoading');
    // 自定义提示文字
    // //初始化
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     data:data,
    //     columns: columns,
    //     formatLoadingMessage: function(){
    //         return "自定义提示文字支持html，<br>正在加载中。。。";
    //     }
    // });
    $('#table-loading-show-hide').bootstrapTable({
        toolbar:"#toolbar-loading-show-hide",
        columns: columns,
        classes: "table table-bordered table-striped table-sm table-dark", //设置表格样式
        height:300,
        //******服务器端分页设置****
        url: url, //服务器返回数据的网址
        method: 'GET',   //数据请求方式
        sidePagination:'server',
        search:true, //******开启搜索框****//
        searchOnEnterKey:false, //******回车后执行搜索****//
        pagination:true,
        pageNumber:1,
        pageSize:2,
        pageList:"[10, 20, 50, 200]",
        paginationHAlign:"left",
        paginationDetailHAlign:"right",
        queryParams:function(params) {
            /******获取分页数据时，这里你可以带上你自定义的参数******/
            params.action="getlist";
            params.catalogId=0;
            return params; },
        //******服务器端分页设置****
        formatLoadingMessage: function(){
            return "自定义提示文字支持html，<br>正在加载中...";
        }
    });
    function showLoading() {
        $('#table-loading-show-hide').bootstrapTable('showLoading');
    }
    function hideLoading() {
        $('#table-loading-show-hide').bootstrapTable('hideLoading');
    }


    ////////////////////////////////////////////
    //Bootstrap Table TogglePagination 隐藏显示分页
    // bootstrap table togglePagination隐藏显示分页器，如果已显示就会隐藏，如果没显示就会显示，效果图如下。
    //
    // togglePagination方法
    // 参数名称
    // 无
    // 代码例子
    // //隐藏或显示分页器
    // $('#table').bootstrapTable('togglePagination');
    $('#table-toggle-pagination').bootstrapTable({
        toolbar:"#toolbar-toggle-pagination",
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm", //设置表格样式
        height:300,
        //******前端分页设置****
        pagination:true,
        pageNumber:1,
        pageSize:130,
        pageList:"[10, 20, 50, 200]",
        paginationHAlign:"left",
        paginationDetailHAlign:"right"
        //******前端分页设置****
    });
    function togglePagination() {
        $('#table-toggle-pagination').bootstrapTable('togglePagination')
    }


    ////////////////////////////////////////////
    //Bootstrap Table ToggleFullscreen 全屏显示
    // bootstrap table toggleFullscreen全屏显示或取消全屏显示。
    //
    // toggleFullscreen方法
    // 参数名称
    // 无
    // 代码例子
    // //隐藏或显示分页器
    // $('#table').bootstrapTable('toggleFullscreen');
    $('#table-toggle-fullscreen').bootstrapTable({
        toolbar:"#toolbar-toggle-fullscreen",
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm", //设置表格样式
        height:300,
        //******前端分页设置****
        pagination:true,
        pageNumber:1,
        pageSize:100,
        pageList:"[20, 100, 200]",
    });
    function toggleFullscreen() {
        $('#table-toggle-fullscreen').bootstrapTable('toggleFullscreen')
    }


    ////////////////////////////////////////////
    //Bootstrap Table ToggleView 切换卡片视图方法
    // bootstrap table toggleView把列表模式切换到卡片视图模式。
    //
    // toggleView方法
    // 参数名称
    // 无
    // 代码例子
    // //隐藏或显示分页器
    // $('#table').bootstrapTable('toggleView');
    $('#table-toggle-view').bootstrapTable({
        toolbar:"#toolbar-toggle-view",
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm", //设置表格样式
        height:300,
    });
    function toggleView() {
        $('#table-toggle-view').bootstrapTable('toggleView')
    }


    ////////////////////////////////////////////
    //Bootstrap Table ResetSearch 重置搜索框
    // 如果你开启了搜索框，可以通过resetSearch重置搜索框。
    //
    // resetSearch方法
    // 参数名称
    // text	设置搜索框的值，也可以不设置
    // 代码例子
    // //重置搜索框为空
    // $('#table').bootstrapTable('resetSearch');
    // //重置搜索框字符串为1000
    // $('#table').bootstrapTable('resetSearch');
    $('#table-reset-search').bootstrapTable({
        toolbar:"#toolbar-reset-search",
        search:"true",
        searchText:"2",
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm", //设置表格样式
        height:300,
    });
    function resetSearch() {
        $('#table-reset-search').bootstrapTable('resetSearch')
    }
    function resetSearch2() {
        $('#table-reset-search').bootstrapTable('resetSearch','1000')
    }


    ////////////////////////////////////////////
    //Bootstrap Table FilterBy 数据刷选过滤器和查询条件
    // bootstrap table filterBy数据刷选过滤器，对表格数据进行刷选，比如找出ID为1、10 用户名为itxst的数据。注意这个方法只针对前端有效，如果要服务器后端刷选请参考我们的服务器端分页教程。
    //
    // filterBy方法
    //     参数名称
    //     filter	刷选条件，如果刷选Id字段为1和10的数据{Id:[1,10]}
    //     options	刷选方法
    //     默认为 {'filterAlgorithm': 'and'}
    //     还是支持 {'filterAlgorithm': 'or'}
    //     当然你也可以自定义刷选方法,文章后半段会详解。
    // {'filterAlgorithm': function(row,filters){
    //     return ture;
    // }}
    // 代码例子
    // //刷选Id字段 10和20的数据
    // $('#table').bootstrapTable('filterBy', {Id: [10,20]); }
    //
    // //刷选Id字段 10和20 和 Car字段为C7 的数据
    // $('#table').bootstrapTable('filterBy',
    //     {'Id': [10,20],'Car':['C7']},
    //     { 'filterAlgorithm': 'and'}  );
    //
    // //刷选Id字段 1和10 或 Car字段为C7 的数据
    // $('#table').bootstrapTable('filterBy',
    //     {'Id': [10,20],'Car':['C7']},
    //     { 'filterAlgorithm': 'or'}  );
    // 自定义刷选函数
    // //刷选出Id字段 大于等于10和小于等于30的数据
    // $('#table').bootstrapTable('filterBy', {Id: [10,30]},
    //     {
    //         'filterAlgorithm': function(row,filters)
    //         {
    //
    //             if(row.Id>=filters.Id[0] && row.Id<=filters.Id[1]) return true;
    //             // alert(JSON.stringify(filters));
    //             return false;
    //         }
    //     });
    // 恢复原始数据
    // $('#table').bootstrapTable('filterBy', {},
    //     {
    //         'filterAlgorithm': function(row,filters)
    //         {
    //             return true;
    //         }
    //     });
    $('#table-filter-by').bootstrapTable({
        toolbar:"#toolbar-filter-by",
        data:data,
        columns: columns,
        height: 300
    });
    function filterBy1() {
        $('#table-filter-by').bootstrapTable('filterBy', {Id: [10,20]});
    }
    function filterBy2() {

        $('#table-filter-by').bootstrapTable('filterBy',
            {'Id': [10,20],'Car':['C6']},
            { 'filterAlgorithm': 'and'});

    }
    function filterBy3() {
        $('#table-filter-by').bootstrapTable('filterBy', {Id: [10,30]},
            {
                'filterAlgorithm': function(row,filters)
                {

                    if(row.Id>=filters.Id[0] && row.Id<=filters.Id[1]) return true;
                    // alert(JSON.stringify(filters));
                    return false;
                }
            });
    }
    function filterBy4() {
        $('#table-filter-by').bootstrapTable('filterBy', {},
            {
                'filterAlgorithm': function(row,filters)
                {

                    return true;
                }
            });
    }


    ////////////////////////////////////////////
    //Bootstrap Table ScrollTo 滚动到指定位置
    // bootstrap table scrollTo滚动滚动条到指定位置,可以设置px或者行的索引来实现，参数 object或value二选一。
    //
    // scrollTo方法
    // 参数名称
    // value	需要滚动到的位置，单位为px,如果设置为bottom表示滚动到底部
    // object	{unit: 'px', value: 100}  滚动到100px位置
    // {unit: 'rows', value: 6}  滚动到第6行
    // 代码例子
    // //滚动到100px的位置,测试后好像没有效果
    // $('#table').bootstrapTable('scrollTo',100);
    // //滚动到底部 有效
    // $('#table').bootstrapTable('scrollTo','bottom');
    //
    // //滚动到800px的位置,测试后有效果但是感觉不准确
    // $('#table').bootstrapTable('scrollTo',{unit: 'px', value: 800});
    // //滚动到第8行 这个方法最准确
    // $('#table').bootstrapTable('scrollTo',{unit: 'rows', value: 8});
    $('#table-scroll-to').bootstrapTable({
        toolbar:"#toolbar-scroll-to",
        columns: columns,
        data: getData(),
        height:300,
        pagination:true,
        pageNumber:1,
        pageSize:100,
    });
    function scrollTo1() {
        $('#table-scroll-to').bootstrapTable('scrollTo',{unit: 'rows', value: 8});
    }
    function scrollTo2() {
        $('#table-scroll-to').bootstrapTable('scrollTo',{unit: 'px', value: 500});
    }
    function scrollTo3() {
        var pos= $('#table-scroll-to').bootstrapTable('getScrollPosition');
        alert(pos);
    }


    ////////////////////////////////////////////
    //Bootstrap Table GetScrollPosition 获取当前位置
    // bootstrap table getScrollPosition获取当前位置，配合滚动事件判断是否快到底部了，可以实现滚动到底部加载更多的数据，类似于手机上往下滑动加载更多数据。
    //
    // getScrollPosition方法
    // 参数名称
    // 无
    // 代码例子
    // //获取当前位置
    // var pos= $('#table').bootstrapTable('getScrollPosition');
    $('#table-get-scroll-position').bootstrapTable({
        toolbar:"#toolbar-get-scroll-position",
        columns: columns,
        data: getData(),
        height:300,
        pagination:true,
        pageNumber:1,
        pageSize:60,
    });
    function getScrollPosition() {
        var pos= $('#table-get-scroll-position').bootstrapTable('getScrollPosition');
        alert(pos);
    }


    ////////////////////////////////////////////
    //Bootstrap Table Append 追加数据到表格末尾方法
    // bootstrap table append把数据追加到表格末尾的方法，比如表格的原始数据是data数组，append方法相当于往data数组末尾追加数据。
    //
    // append方法
    // 参数名称	参数说明
    // data	格式[{id:1,name:"x1"},{id:2,name:"x2"}]
    // 代码例子
    // //第1步，定义要显示的列
    // var columns = [
    //     {
    //         field:"Id",
    //         title: 'ID'
    //     }, {
    //         field: 'Car',
    //         title: '品牌'
    //     } ];
    // //第2步，初始化bootstrap table
    // var data= [{
    //     Id: 10,
    //     Car: 'C5',
    // }, {
    //     Id: 20,
    //     Car: 'C6',
    // }, {
    //     Id: 30,
    //     Car: 'C7',
    // } ];
    //
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     columns: columns,
    //     data:data
    // });
    // //第3部，使用load方法
    // //newData你从服务器上返回的新数据
    // var newData = [{
    //     Id: 3000,
    //     Car: 'CAR001',
    // }, {
    //     Id: 3002,
    //     Car: 'CAR001',
    // }, {
    //     Id: 3003,
    //     Car: 'CAR001',
    // } ];
    //
    // $('#table').bootstrapTable('append', newData);
    $('#table-append').bootstrapTable({
        toolbar:"#toolbar-append",
        data:data,
        columns: columns,
        pageSize:2,
        pagination:true,
        height: 300
    });
    function appendData() {
        //newData需要追加的新数据
        var newData = [{
            Id: 1,
            ProductName: 'new-香蕉',
            StockNum: '100'
        }, {
            Id: 2,
            ProductName: 'new-苹果',
            StockNum: '200'
        }, {
            Id: 3,
            ProductName: 'new-草莓',
            StockNum: '300'
        }, {
            Id: 4,
            ProductName: 'new-樱桃',
            StockNum: '400'
        }, {
            Id: 5,
            ProductName: 'new-菠萝',
            StockNum: '500'
        }];

        $('#table-append').bootstrapTable('append', newData);
    }

    ////////////////////////////////////////////
    //Bootstrap Table Prepend 追加数据到表格头部方法
    // bootstrap table prepend把数据追加到表格头部的方法，这个方法刚好和append方法相反。
    //
    // prepend方法
    // 参数名称	参数说明
    // data	格式[{id:2,name:"Y1"},{id:21,name:"Y2"}]
    // 代码例子
    // //第1步，定义要显示的列
    // var columns = [
    //     {
    //         field:"Id",
    //         title: 'ID'
    //     }, {
    //         field: 'Car',
    //         title: '品牌'
    //     } ];
    // //第2步，初始化bootstrap table
    // var data= [{
    //     Id: 600,
    //     Car: 'Car-X1',
    // }, {
    //     Id: 601,
    //     Car: 'Car-X2',
    // }, {
    //     Id: 30,
    //     Car: 'Car-X3',
    // } ];
    //
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     columns: columns,
    //     data:data
    // });
    // //第3部，使用load方法
    // //newData你从服务器上返回的新数据
    // var newData = [{
    //     Id: 7000,
    //     Car: 'CAR005',
    // }, {
    //     Id: 7002,
    //     Car: 'CAR006',
    // }, {
    //     Id: 7003,
    //     Car: 'CAR007',
    // } ];
    //
    // $('#table').bootstrapTable('prepend', newData);
    $('#table-prepend').bootstrapTable({
        toolbar:"#toolbar-prepend",
        data:data,
        columns: columns,
        pageSize:2,
        pagination:true,
        height: 300
    });
    function prependData() {
        //newData需要追加的新数据
        var newData = [{
            Id: 1,
            ProductName: 'new-香蕉',
            StockNum: '100'
        }, {
            Id: 2,
            ProductName: 'new-苹果',
            StockNum: '200'
        }, {
            Id: 3,
            ProductName: 'new-草莓',
            StockNum: '300'
        }, {
            Id: 4,
            ProductName: 'new-樱桃',
            StockNum: '400'
        }, {
            Id: 5,
            ProductName: 'new-菠萝',
            StockNum: '500'
        }];

        $('#table-prepend').bootstrapTable('prepend', newData);
    }


    ////////////////////////////////////////////
    //Bootstrap Table Remove 把数据从表格中删除的方法
    // bootstrap table remove方法根据你设置的字段和对应的值把相应的数据从表格中删除掉。比如把选中的数据行从表格中删除就是很常见的操作，这是一个比较重要的方法，当然你删除一条数据（同时也把数据库对应的数据也删除了）也可以通过refresh方法重新请求数据库数据来刷新表格UI但是这种做法会多请求一次服务器，会增加服务器的额外开销。
    //
    // remove方法
    // 参数名称	参数说明
    // field	根据那个字段来删除，如ID字段
    // values	根据这个字段哪些值来删除，如把id为2的数据删除
    // 代码例子
    // //获取对象
    // var obj=$('#table');
    // //获取选中的ID
    // var ids = $.map(obj.bootstrapTable('getSelections'), function (row) {
    //     return row.Id
    // });
    // //根据Id字段删除对应的数据
    // obj.bootstrapTable('remove', {field: 'Id',values: ids });
    $('#table-remove').bootstrapTable({
        toolbar:"#toolbar-remove",
        data:data,
        columns: columns_check,
        height: 300
    });
    function removeSelection() {
        var obj=$('#table-remove');
        var ids = $.map(obj.bootstrapTable('getSelections'), function (row) {
            return row.Id
        });

        obj.bootstrapTable('remove', {field: 'Id',values: ids });
    }


    ////////////////////////////////////////////
    //Bootstrap Table RemoveAll 把数据从表格中删除的方法
    // bootstrap table removeAll方法删除表格所有数据，无需参数。
    //
    // 代码例子
    // //删除表格所有数据
    // $('#table').bootstrapTable('removeAll');
    $('#table-remove-all').bootstrapTable({
        toolbar:"#toolbar-remove-all",
        data:data,
        columns: columns_check,
        height: 300
    });
    function removeAllSelections() {
        $('#table-remove-all').bootstrapTable('removeAll');
    }


    ////////////////////////////////////////////
    //Bootstrap Table InsertRow 插入一行数据的方法
    // 通过bootstrap table insertRow方法插入一行数据到表格，需要传递两个参数一个是插入到哪一行以及需要插入的行对象。
    //
    // insertRow方法
    // 参数名称	参数说明
    // index	需要把数据插入到那以后，从0开始
    // row	行数据对象，比如{id:1,name:"丽莎"}
    // 代码例子
    // //获取对象
    // var obj=$('#table');
    // //插入数据到第一行
    // obj.bootstrapTable('insertRow', {
    //     index: 1,
    //     row: {
    //         Id: 100,
    //         catalog: 'new car'
    //     }
    // });
    $('#table-insert-row').bootstrapTable({
        toolbar:"#toolbar-insert-row",
        data:data,
        columns: columns,
        height: 300
    });
    function insertRow() {
        $('#table-insert-row').bootstrapTable('insertRow', {
            index: 0,
            row: {
                Id: 100,
                StockNum: '被插入的行'
            }
        });
    }


    ////////////////////////////////////////////
    //Bootstrap Table UpdateRow 更新一行数据的方法
    // 通过bootstrap table updateRow方法更新行数据，使用场景通常是选中一行弹出窗，在窗口表单修改完数据后，使用updateRow更新bootstrap table选中行的数据，需要注replace参数的用法。
    //
    // updateRow方法
    // 参数名称	参数说明
    // index	需要更新的数据索引，从0开始
    // row	新的行数据对象，比如{id:1,name:"丽莎"}
    // replace	可选项，新的数据对象是否替换旧的对象，设置true直接替换，设置false合并对象，默认为false
    // 关于replace参数说明：英文不好的同学看官方文档很难理解这个参数的作用，其实replace参数还是很好理解的。
    // 旧的行数据对象如下：
    // var oldRow={id:100,name:"itxst.com"};
    // 新的的行数据对象如下：
    // var newRow={id:101};
    // 如果设置replace为true那么更新后的行数据对象如下
    // {id:101}; //看明白了没 oldRow对象被完全替换
    // 如果设置replace为false那么更新后的行数据对象如下
    // {id:101,name:"itxst.com"};
    // 其实就是
    // oldRow=newRow;
    // 或者
    // $.extend(oldRow, newRow);
    //
    // 代码例子
    // //更新第一行数(合并替换行数据，replace默认为false)
    // $('#table').bootstrapTable('updateRow', {
    //     index: 0,
    //     row: {
    //         Id: 100,
    //     }
    // });
    $('#table-update-row').bootstrapTable({
        toolbar:"#toolbar-update-row",
        data:data,
        columns: columns,
        height: 300
    });
    function updateRow(replace) {
        $('#table-update-row').bootstrapTable('updateRow', {
            index: 0,
            replace:replace,
            row: {
                Id: 100,
            }
        });
    }
    $('#table-update-row').bootstrapTable('updateRow', {
        index: 0,
        replace:true,
        row: {
            Id: 100,
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table GetRowByUniqueId 根据唯一Id获取行数据的方法
    // bootstrap table getRowByUniqueId根据唯一Id获取行数据，使用此方法的前提是要指定那列字段为唯一字段（主键字段）。
    //
    // getRowByUniqueId方法
    // 参数名称	参数说明
    // id	唯一字段列对应的值,（主键字段对应的值）
    // 代码例子
    // //设置code为唯一字段（主键字段）
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     uniqueId:"code",
    //     data:data,
    //     columns: columns,
    // });
    // //获取code字段值为C6的行数据
    // function getByUID()
    // {
    //     var rs=$('#table').bootstrapTable('getRowByUniqueId','C6');
    //     alert(JSON.stringify(rs));
    // }
    $('#table-get-row-unique-id').bootstrapTable({
        toolbar:"#toolbar-get-row-unique-id",
        uniqueId:"Id",
        data:data,
        columns: columns,
        height: 300
    });
    function getRowByUniqueId() {
        var rs=$('#table-get-row-unique-id').bootstrapTable('getRowByUniqueId','2');
        alert(JSON.stringify(rs));
    }


    ////////////////////////////////////////////
    //Bootstrap Table UpdateByUniqueId 根据唯一Id更新行数据的方法
    // 通过bootstrap table updateByUniqueId方法更新行数据 ,根据唯一字段（主键字段）更新行数据，需要注replace参数的用法,注意不要忘记通过uniqueId属性设置唯一字段。
    //
    // updateByUniqueId方法
    // 参数名称	参数说明
    // id	唯一字段（主键字段）对应的值
    // row	新的行数据对象，比如{id:1,name:"丽莎"}
    // replace	可选项，新的数据对象是否替换旧的对象，设置true直接替换，设置false合并对象，默认为false
    // 关于replace参数说明：英文不好的同学看官方文档不是很好理解。
    // 旧的行数据对象如下：
    // var oldRow={id:100,name:"itxst.com"};
    // 新的的行数据对象如下：
    // var newRow={id:101};
    // 如果设置replace为true那么更新后的行数据对象如下
    // {id:101}; //看明白了没 oldRow对象被完全替换
    // 如果设置replace为false那么更新后的行数据对象如下
    // {id:101,name:"itxst.com"};
    //
    // 代码例子
    // //设置Id字段为唯一字段
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     uniqueId:"Id",
    //     data:data,
    //     columns: columns,
    // });
    //
    // //更新第2行数(合并替换行数据，replace默认为false)
    // $('#table').bootstrapTable('updateByUniqueId', {
    //     id: 1,
    //     row: {
    //         Id: 100,
    //     }
    // });
    //
    // //替换第2行数(replace为true)
    // $('#table').bootstrapTable('updateByUniqueId', {
    //     id: 1,
    //     replace:true,
    //     row: {
    //         Id: 100,
    //     }
    // });
    $('#table-update-unique-id').bootstrapTable({
        toolbar:"#toolbar-update-unique-id",
        uniqueId:"Id",
        data:data,
        columns: columns_check,
        height: 300
    });
    function updateByUniqueId(replace) {
        $('#table-update-unique-id').bootstrapTable('updateByUniqueId', {
            id: 2,
            replace:replace,
            row: {
                StockNum: '新数据'+ ~~(Math.random() * 100)
            }
        });
    }


    ////////////////////////////////////////////
    //Bootstrap Table  RemoveByUniqueId 根据唯一Id删除数据的方法
    // removeByUniqueId根据唯一字段（主键字段）删除数据。参数id:唯一字段（主键字段）对应的值
    //
    // removeByUniqueId方法
    // 参数名称	参数说明
    // id	唯一字段（主键字段）对应的值
    // 代码例子
    // //设置Id字段为唯一字段
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     uniqueId:"Id",
    //     data:data,
    //     columns: columns,
    // });
    // //删除Id为11的数据
    // $('#table').bootstrapTable('removeByUniqueId',11);
    $('#table-remove-unique-id').bootstrapTable({
        toolbar:"#toolbar-remove-unique-id",
        uniqueId:"Id",
        data:data,
        columns: columns,
        height: 300
    });
    function removeByUniqueId() {
        $('#table-remove-unique-id').bootstrapTable('removeByUniqueId', 2);
    }


    ////////////////////////////////////////////
    //Bootstrap Table UpdateCell 更新单元格数据的方法
    // bootstrap table updateCell更新单元格数据,参数列表如下。
    //
    // updateCell方法
    // 参数名称	参数说明
    // index	行索引0开始，需要更新那行数据
    // field	需要更新的字段
    // value	该字段需要被更新的值
    // 代码例子
    // //初始化
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     data:data,
    //     columns: columns,
    // });
    // //更新第二行的catalog字段为 newValue
    // $('#table').bootstrapTable('updateCell', {
    //     index: 1,
    //     field: 'catalog',
    //     value: 'newValue'
    // })
    $('#table-update-cell').bootstrapTable({
        toolbar:"#toolbar-update-cell",
        data:data,
        columns: columns,
        height: 300
    });
    function updateCell() {
        $('#table-update-cell').bootstrapTable('updateCell', {
            index: 2,
            field: 'StockNum',
            value: 'newValue'
        })
    }


    ////////////////////////////////////////////
    //Bootstrap Table UpdateCellByUniqueId 根据唯一字段更新单元格数据的方法
    // bootstrap table updateCellByUniqueId更新单元格数据,参数列表如下。
    //
    // updateCellByUniqueId方法
    // 参数名称	参数说明
    // id	唯一字段（或主键）对应的值
    // field	需要更新的字段
    // value	该字段需要被更新的值
    // 代码例子
    // //设置唯一字段
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     uniqueId:"code",//设置唯一字段
    //     data:data,
    //     columns: columns,
    // });
    // //更新Id为11的行 的catalog字段为newValue
    // $('#table').bootstrapTable('updateCellByUniqueId', {
    //     id: 'x6',
    //     field: 'catalog',
    //     value: 'newValue'
    // })
    $('#table-update-cell-unique-id').bootstrapTable({
        toolbar:"#toolbar-update-cell-unique-id",
        uniqueId:"Id",
        data:data,
        columns: columns,
        height: 300
    });
    function updateCellByUniqueId() {
        $('#table-update-cell-unique-id').bootstrapTable('updateCellByUniqueId', {
            id: '2',
            field: 'StockNum',
            value: 'newValue'
        });
    }


    ////////////////////////////////////////////
    //Bootstrap Table ShowRow 显示行的方法
    // bootstrap table showRow方法用来控制显示某一行数据（之前被隐藏的行），可以根据index索引和uniqueId唯一ID来控制。
    //
    // showRow方法
    // 参数名称	参数说明
    // index	行索引0开始，需要显示的行
    // uniqueId	唯一字段值
    // 代码例子
    // //根据index显示行
    // $('#table').bootstrapTable('showRow', { index: 1 });
    //
    // //根据唯一字段显示行
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     uniqueId:"Id",//设置唯一字段
    //     data:data,
    //     columns: columns,
    // });
    // $('#table').bootstrapTable('showRow', { uniqueId: 12 })
    $('#table-show-row').bootstrapTable({
        toolbar:"#toolbar-show-row",
        uniqueId:"Id",
        data:data,
        columns: columns,
        height: 300
    });
    function hideRowByIndex($elem) {
        $elem = $("#" + $elem);
        $elem.bootstrapTable('hideRow', { index: 1 })
    }
    function showRowByIndex($elem) {
        $elem = $("#" + $elem);
        $elem.bootstrapTable('showRow', { index: 1 })
    }
    function hideRowByUniqueId($elem) {
        $elem = $("#" + $elem);
        $elem.bootstrapTable('hideRow', { uniqueId: 2 })
    }
    function showRowByUniqueId($elem) {
        $elem = $("#" + $elem);
        $elem.bootstrapTable('showRow', { uniqueId: 2 })
    }


    ////////////////////////////////////////////
    //Bootstrap Table HideRow 显示行的方法
    // bootstrap table hideRow方法用来控制移除某一行数据），可以根据index索引和uniqueId唯一ID条件来隐藏行。
    //
    // hideRow方法
    // 参数名称	参数说明
    // index	行索引0开始，需要显示的行
    // uniqueId	唯一字段值
    // 代码例子
    // //根据index显示行
    // $('#table').bootstrapTable('hideRow', { index: 1 });
    //
    // //根据唯一字段显示行
    // $('#table').bootstrapTable({
    //     toolbar:"#toolbar",
    //     uniqueId:"Id",//设置唯一字段
    //     data:data,
    //     columns: columns,
    // });
    // $('#table').bootstrapTable('hideRow', { uniqueId: 12 })
    $('#table-hide-row').bootstrapTable({
        toolbar:"#toolbar-hide-row",
        uniqueId:"Id",
        data:data,
        columns: columns,
        height: 300
    });


    ////////////////////////////////////////////
    //Bootstrap Table GetHiddenRows 获取隐藏的行的方法
    // bootstrap table getHiddenRows获取隐藏的行，如果参数传入true会把隐藏的行显示但是不会返回隐藏的行，这点设计有点不合理。
    //
    // getHiddenRows方法
    // 参数名称	参数说明
    // show	默认为false,设置为true会把隐藏的行显示
    // 代码例子
    // //获取隐藏的行
    // var rows=$('#table').bootstrapTable('getHiddenRows');
    // //显示全部隐藏的行，但是不会返回之前隐藏的行
    // $('#table').bootstrapTable('getHiddenRows',true);
    $('#table-get-hidden-rows').bootstrapTable({
        toolbar:"#toolbar-get-hidden-rows",
        data:data,
        columns: columns,
        height: 300
    });
    $('#table-get-hidden-rows').bootstrapTable('hideRow', { index: 1 });
    function getHideRows(icase) {
        var rows;
        if(icase===1) {
            rows=$('#table-get-hidden-rows').bootstrapTable('getHiddenRows');
        }
        if(icase===2) {
            rows=$('#table-get-hidden-rows').bootstrapTable('getHiddenRows',true);
        }
        alert(JSON.stringify(rows));
    }


    ////////////////////////////////////////////
    //Bootstrap Table Show/Hide Column 隐藏显示列的方法
    // bootstrap table showColumn显示指定的列，hideColumn隐藏指定的列。
    //
    // showColumn显示列方法
    // 参数名称	参数说明
    // name	需要显示的列
    // showColumn代码例子
    // //显示catalog列
    // $table.bootstrapTable('showColumn', 'catalog')
    // hideColumn隐藏列方法
    // 参数名称	参数说明
    // name	需要显示的列
    // hideColumn代码例子
    // //隐藏catalog列
    // $table.bootstrapTable('hideColumn', 'catalog')
    $('#table-show-hide-column').bootstrapTable({
        toolbar:"#toolbar--show-hide-column",
        data:data,
        columns: columns,
        height: 300
    });
    function showColumn($elem, icase) {
        $elem = $("#" + $elem);
        if(icase===1) {
            $elem.bootstrapTable('hideColumn','StockNum');
        }
        if(icase===2) {
            $elem.bootstrapTable('showColumn','StockNum');
        }
    }


    ////////////////////////////////////////////
    //Bootstrap Table GetVisibleColumns 获取显示的列的方法
    // bootstrap table getVisibleColumns获取显示的列，即获取哪些列当前可见的列，因为有的列可以通过工具栏或者方法被隐藏了。
    //
    // getVisibleColumns方法
    // 参数名称	参数说明
    // 无
    // 代码例子
    // //获取显示的列 返回值为数组对象
    // var cols= $('#table').bootstrapTable('getVisibleColumns');
    //
    // //返回值cols的格式如下
    // [
    //     {"widthUnit":"px","radio":false,"checkbox":true,"checkboxEnabled":true,"clickToSelect":true,
    //         "showSelectTitle":false,"sortable":false,"order":"asc","visible":true,"switchable":true,
    //         "cardVisible":true,"searchable":true,"searchFormatter":true,"escape":false,"colspanIndex":0,
    //         "fieldIndex":0,"field":0},
    //     {"widthUnit":"px","radio":false,"checkbox":false,"checkboxEnabled":true,"clickToSelect":true,
    //         "showSelectTitle":false,"sortable":false,
    //         "order":"asc","visible":true,"switchable":true,"cardVisible":true,"searchable":true,
    //         "searchFormatter":true,"escape":false,"field":"Id",
    //         "title":"ID","colspanIndex":1,"fieldIndex":1
    //     }]
    $('#table-get-visible-columns').bootstrapTable({
        toolbar:"#toolbar-get-visible-columns",
        data:data,
        columns: columns,
        height: 300
    });
    function getVisibleColumns() {
        var cols= $('#table-get-visible-columns').bootstrapTable('getVisibleColumns');
        alert(JSON.stringify(cols));
    }


    ////////////////////////////////////////////
    //Bootstrap Table GetHiddenColumns 获取隐藏的列的方法
    // bootstrap table getHiddenColumns获取表格隐藏的列，即获取哪些列当前不可见的列，因为有的列可以通过工具栏或者方法可以设置列隐藏，如何隐藏某个列请查看左侧菜单。
    //
    // getHiddenColumns方法
    // 参数名称	参数说明
    // 无
    // 代码例子
    // //获取隐藏的列 返回值为数组
    // var cols= $('#table').bootstrapTable('getHiddenColumns');
    //
    // //返回值cols的格式如下
    // [{
    //     "widthUnit":"px","radio":false,"checkbox":false,"checkboxEnabled":true,"clickToSelect":true,
    //     "showSelectTitle":false,"sortable":false,"order":"asc","visible":false,"switchable":true,
    //     "cardVisible":true,"searchable":true,"searchFormatter":true,"escape":false,"field":"clog",
    //     "title":"分类","colspanIndex":2,"fieldIndex":2
    // }]
    $('#table-get-hidden-columns').bootstrapTable({
        toolbar:"#toolbar-get-hidden-columns",
        data:data,
        columns: columns,
        height: 300
    });
    $('#table-get-hidden-columns').bootstrapTable('hideColumn','StockNum');
    function getHiddenColumns() {
        var cols= $('#table-get-hidden-columns').bootstrapTable('getHiddenColumns');
        alert(JSON.stringify(cols));
        $("#toolbar-get-hidden-columns").html(JSON.stringify(cols));
    }


    ////////////////////////////////////////////
    //Bootstrap Table ShowAllColumns 显示所有列的方法
    // bootstrap table showAllColumns显示所有被隐藏的列。
    //
    // showAllColumns方法
    // 参数名称
    // 无
    // 代码例子
    // //显示所有的列
    // $('#table').bootstrapTable('showAllColumns');
    $('#table-show-all-columns').bootstrapTable({
        toolbar:"#toolbar-show-all-columns",
        data:data,
        columns: columns,
        height: 300
    });
    $('#table-show-all-columns').bootstrapTable('hideColumn','StockNum');
    function showAllColumns($elem, icase) {
        $elem = $("#" + $elem);
        if(icase===1) {
            $elem.bootstrapTable('showAllColumns','StockNum');
        }
        if(icase===2) {
            $elem.bootstrapTable('hideAllColumns','StockNum');
        }
    }


    ////////////////////////////////////////////
    //Bootstrap Table HideAllColumns 隐藏所有列的方法
    // bootstrap table hideAllColumns隐藏所有列。
    //
    // hideAllColumns方法
    // 参数名称
    // 无
    // 代码例子
    // //隐藏所有的列
    // $('#table').bootstrapTable('hideAllColumns');
    $('#table-hide-all-columns').bootstrapTable({
        toolbar:"#toolbar-hide-all-columns",
        data:data,
        columns: columns,
        height: 300
    });
    $('#table-hide-all-columns').bootstrapTable('hideColumn','StockNum');
</script>

<h2 style="color: red">Bootstrap Table 表格插件 → 事件</h2>
<div>
  <hr>
  <h4>Bootstrap Table OnRefreshOptions 当前配置发生改变时的事件</h4>
  <div class="table-demo">
    <table id="table-on-refresh-options"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnClickRow点击行事件</h4>
  <div class="table-demo">
    <table id="table-on-click-row"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnDblClickRow 双击行事件</h4>
  <div class="table-demo">
    <table id="table-on-dblclick-row"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnClickCell 点击单元格事件</h4>
  <div class="table-demo">
    <table id="table-on-click-cell"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnDblClickCell 双击单元格事件</h4>
  <div class="table-demo">
    <table id="table-on-dblclick-cell"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnSort 列排序事件</h4>
  <div class="table-demo">
    <table id="table-on-sort"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnCheck 选中行事件</h4>
  <div class="table-demo">
    <table id="table-on-check"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnUncheck 选中行事件</h4>
  <div class="table-demo">
    <table id="table-on-uncheck"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnCheckAll全选事件</h4>
  <div class="table-demo">
    <table id="table-on-check-all"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnUncheckAll 取消全选事件</h4>
  <div class="table-demo">
    <table id="table-on-uncheck-all"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnLoadSuccess 加载服务端数据成功事件</h4>
  <div class="table-demo">
    <table id="table-on-load-success"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnLoadError 加载服务端数据失败事件</h4>
  <div class="table-demo">
    <table id="table-on-load-error"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnColumnSwitch 选择列事件</h4>
  <div class="table-demo">
    <table id="table-on-column-switch"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnPageChange 分页事件</h4>
  <div class="table-demo">
    <table id="table-on-page-change"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnSearch 搜索事件</h4>
  <div class="table-demo">
    <table id="table-on-search"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnToggle 切换视图事件</h4>
  <div class="table-demo">
    <table id="table-on-toggle"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnPreBody 表格渲染前事件</h4>
  <div class="table-demo">
    <table id="table-on-pre-body"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnPostHeader 表头渲染事件</h4>
  <div class="table-demo">
    <table id="table-on-post-header"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnExpandRow detail 视图模式点击展开事件</h4>
  <div class="table-demo">
    <table id="table-on-expand-row"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnPostBody 表格渲染前事件</h4>
  <div class="table-demo">
    <table id="table-on-post-body"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnCollapseRow detail 视图模式点击收起事件</h4>
  <div class="table-demo">
    <table id="table-on-collapse-row"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnResetView 视图切换事件</h4>
  <div class="table-demo">
    <div id="toolbar-reset-view">
      <button onclick="resetView()">切换视图</button>
    </div>
    <table id="table-on-reset-view"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnRefresh 刷新事件</h4>
  <div class="table-demo">
    <table id="table-on-refresh"></table>
  </div>

  <hr>
  <h4>Bootstrap Table OnScrollBody 表格滚动事件</h4>
  <div class="table-demo">
    <div id="toolbar-scroll">
      <button onclick="scrollBody()">滚动到指定位置</button>
    </div>
    <table id="table-on-scroll-body"></table>
  </div>
</div>
<script>
    ////////////////////////////////////////////
    //Bootstrap Table OnRefreshOptions 当前配置发生改变时的事件
    // 当bootstrap table的配置信息发生改变时会执行onRefreshOptions事件，例如当然每页分页数改变、服务器端分页网站改变，但是注意这个并不是像Vue一样配置对象option属性值发生改变就会触发这个事件，而是用户调用了 $('#table').bootstrapTable('refreshOptions',{})刷新配置的方法才会触发onRefreshOptions事件。
    //-------------------------------------------------
    // onRefreshOptions事件
    // 参数如下
    //-------------------------------------------------
    // 参数名称	说明
    // options	bootstrap table的设置信息，就是初始化时配置的高度、样式、是否服务器分页等设置
    // onRefreshOptions事件绑定方式一
    // onRefreshOptions:function(options)
    // {
    //     alert(JSON.stringify(options));
    // }
    // onRefreshOptions事件绑定方式二
    // $('#table').on('refresh-options.bs.table', function (e,options){
    //     alert(JSON.stringify(options));
    // });
    setTimeout(function(){
        data.push( {
            Id: 3,
            ProductName: '苹果',
            StockNum: '200'
        });
    },2000);
    $('#table-on-refresh-options').bootstrapTable({
        url: url,
        pagination: true,//开启分页
        search: true, //开启刷选
        columns: columns,
        height: 300,
        onRefreshOptions:function(options) {
            alert(JSON.stringify(options));
        }
    });
    $('#table-on-refresh-options').bootstrapTable('refreshOptions', {
        search: false
    })


    ////////////////////////////////////////////
    //Bootstrap Table OnClickRow点击行事件
    // onClickRow点击行事件
    // bootstrap table用户点击行时的事件，事件名称 onClickRow，返回参数如下。
    //
    // 参数名称	说明
    // row	被点击行的原始数据如{id:100,name:"itxst.com",num:22}
    // $element	被点击行的tr元素对象
    // field	被点击的字段，如id
    // 在初始化时注册onClickRow事件
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data,
    //     onClickRow:function(row, $element, field)
    //     {
    //         alert(JSON.stringify(row));
    //     }
    // });
    // 在初始化后注册onClickRow事件
    // $('#table').on('click-row.bs.table', function (e, row, $element, field) {
    //     alert(JSON.stringify(row));
    // })
    // 注意：初始化时注册和初始化后注册的第一个返回参数对象是不一样的
    $('#table-on-click-row').bootstrapTable({
        columns: columns,
        data: data,
        height: 300,
        onClickRow:function(row, $element, field) {
            alert(JSON.stringify(row));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnDblClickRow 双击行事件
    // onDblClickRow点击行事件
    // bootstrap table用户双击行时的事件，事件名称 onDblClickRow，返回参数如下。
    //
    // 参数名称	说明
    // row	被点击行的原始数据如{id:6,name:"bill",age:22}
    // $element	被点击行的tr元素对象
    // field	被点击的字段，如id
    // 初始化时绑定onDblClickRow事件
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data,
    //     onDblClickRow:function(row, $element, field)
    //     {
    //         alert(JSON.stringify(row));
    //     }
    // });
    // 初始化后绑定onDblClickRow事件
    // $('#table').on('click-row.bs.table', function (e, row, $element, field) {
    //     alert(JSON.stringify(field));
    // })
    // 注意：初始化时注册和初始化后注册的第一个返回参数对象是不一样的
    $('#table-on-dblclick-row').bootstrapTable({
        columns: columns,
        data: data,
        height: 300,
        onDblClickRow:function(row, $element, field) {
            alert(JSON.stringify(row));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnClickCell 点击单元格事件
    // 当我们想获取用户点击的是那个单元格并获取该单元格对应的数据时，我们可以使用bootstrap table onClickCell事件。
    //
    // onClickCell点击行事件
    // bootstrap table用户点击表格某个的事件，事件名称 onClickCell，返回参数如下。
    // 参数名称	说明
    // field	被点击的字段名称，如id
    // value	被点击的字段的值
    // row	被点击单元格对应的原始数据如{id:1,name:"cat",age:12}
    // $element	被点的td元素对象
    // 初始化时绑定onClickCell事件
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onClickCell:function(field, value, row, $element)
    //     {
    //         alert(JSON.stringify(field));
    //     }
    // });
    // 初始化后绑定onClickCell事件
    // $('#table').on('click-cell.bs.table', function (e,field, value,  row, $element) {
    //     alert(JSON.stringify(field));
    // })
    // 注意：初始化时注册和初始化后注册的第一个返回参数对象是不一样的
    //  $('#table').on('click-cell.bs.table', function (e, field, value, row, $element) {
    //      alert(JSON.stringify(field));
    //  })
    $('#table-on-click-cell').bootstrapTable({
        columns: columns,
        data: data,
        height: 300,
        onClickCell: function (field, value, row, $element) {
            alert(JSON.stringify(value));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnDblClickCell 双击单元格事件
    // 当我们想获取用户双击的是那个单元格并获取该单元格对应的数据时，我们可以使用bootstrap table onDblClickCell事件。
    //
    // onDblClickCell双击行事件
    // bootstrap table用户双击表格某个的事件，事件名称 onDblClickCell，返回参数如下。
    //
    // 参数名称	说明
    // field	字段名称，如id
    // value	字段的值
    // row	单元格对应的原始数据如{id:66,name:"itxst.com",level:10}
    // $element	td元素对象
    // 初始化时绑定onDblClickCell事件
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onDblClickCell:function(field, value, row, $element)
    //     {
    //         alert(JSON.stringify(value));
    //     }
    // });
    // 初始化后绑定onDblClickCell事件
    // $('#table').on('dbl-click-cell.bs.table', function (e,field, value,  row, $element) {
    //     alert(JSON.stringify(field));
    // })
    // 注意：初始化时注册和初始化后注册的第一个返回参数对象是不一样的
    //  $('#table').on('dbl-click-cell.bs.table', function (e, field, value, row, $element) {
    //      alert(JSON.stringify(field));
    //  })
    $('#table-on-dblclick-cell').bootstrapTable({
        columns: columns,
        data: data,
        height: 300,
        onDblClickCell: function (field, value, row, $element) {
            alert(JSON.stringify(value));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnSort 列排序事件
    // 当点击排序列时bootstrap table的事件,通过onSort排序事件我们可以得到被点击的列字段名和排序方式desc asc。
    //
    // onSort排序事件
    // 点击排序列的事件，事件名称 onSort，返回参数如下。
    //
    // 参数名称	说明
    // name	字段名称，如ProductName
    // order	当前排序方式 desc、asc
    // 初始化时绑定onSort事件
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onSort:function(name,order)
    //     {
    //         alert(name);
    //     }
    // });
    // 初始化后绑定onSort事件
    // $('#table').on('sort.bs.table', function (e,name,order) {
    //     alert(name);
    // })
    // 注意：初始化时注册和初始化后注册的第一个返回参数对象是不一样的
    // $('#table').on('sort.bs.table', function (e,name,order) {
    //     alert(name);
    //});
    $('#table-on-sort').bootstrapTable({
        columns: columns,
        data: getData(),                      //请求后台的URL（*）
        method: 'GET',                      //请求方式（*）
        classes: "table table-bordered table-striped table-sm",
        height: 300,
        customSort: customSort,
        onSort: function (name, order) {
            alert(order)
        }
    });
    function customSort(sortName, sortOrder, data) {
        var order = sortOrder === 'desc' ? -1 : 1;
        data.sort(function (a, b) {
            var v1 = a[sortName]
            var v2 = b[sortName]
            if (v1 == 3) {
                return -1;
            }
            if (v1 > v2) {
                return 1
            }
            return 0
        })
    }


    ////////////////////////////////////////////
    //Bootstrap Table OnCheck 选中行事件
    // 当bootstrap table开启选择列时用户点击复选框而产生的事件，onCheck事件返回选择行的数据和被点击的元素对象。
    //
    // onCheck选中行事件
    // 点击复选框的事件注意这里是选择的事件，取消选中的事件是onUncheck，返回参数如下。
    //
    // 参数名称	说明
    // row	选中行的数据对象json格式如{id:1,playe:true}
    // $element	被点击的jquery对象
    // 绑定onCheck事件方法一
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onCheck:function(row, $element){
    //         alert(JSON.stringify(row));
    //     }
    // });
    // 绑定onCheck事件方法二
    // $('#table').on('check.bs.table', function (e,row, $element) {
    //     alert(JSON.stringify(row));
    // });
    // 注意：初始化时注册和初始化后注册的第一个返回参数对象是不一样的
    // $('#table').on('check.bs.table', function (e,row, $element) {
    // alert(JSON.stringify(row));
    // })
    $('#table-on-check').bootstrapTable({
        singleSelect: false,
        clickToSelect: true,
        columns: columns,
        data: data,
        height: 300,
        onCheck: function (row, $element) {
            alert(JSON.stringify(row));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnUncheck 选中行事件
    // bootstrap table onUncheck选中行事件
    // bootstrap table取消选择的事件，onUncheck事件返回取消选择行的数据和被点击的元素对象。
    //
    // onUncheck取消选中行事件
    // 取消选中复选框的事件，返回参数如下。
    //
    // 参数名称	说明
    // row	选中行的数据对象json格式如{name:"西瓜",num:9}
    // $element	被点击的jquery对象
    // 绑定onUncheck事件方法一
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onUncheck:function(row, $element){
    //         alert(JSON.stringify(row));
    //     }
    // });
    // 绑定onUncheck事件方法二
    // $('#table').on('uncheck.bs.table', function (e,row, $element) {
    //     alert(JSON.stringify(row));
    // });
    // 注意：初始化时注册和初始化后注册的第一个返回参数对象是不一样的
    // $('#table').on('uncheck.bs.table', function (e,row, $element) {
    // alert(JSON.stringify(row));
    // })
    $('#table-on-uncheck').bootstrapTable({
        singleSelect: false,
        clickToSelect: true,
        columns: columns,
        data: data,
        height: 300,
        onUncheck: function (row, $element) {
            alert(JSON.stringify(row));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnCheckAll全选事件
    // bootstrap table全选的事件，onCheckAll事件返回全选前已选中的数据和全选后的数据。
    //
    // onCheckAll取消选中行事件
    // 全选事件返回参数如下。
    //
    // 参数名称	说明
    // rowsAfter	数组，返回全选后全部选中的数据
    // rowsBefore	全选前的数据，在1.41之前此参数无效,1.52之后有效
    // 绑定onCheckAll事件方法一
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onCheckAll: function (rowsAfter,rowsBefore) {
    //         alert(JSON.stringify(rowsAfter));
    //     }
    // });
    // 绑定onCheckAll事件方法二
    // $('#table').on('check-all.bs.table', function (e,rowsAfter,rowsBefore) {
    //     alert(JSON.stringify(rowsAfter));
    // });
    // 注意：初始化时注册和初始化后注册的第一个返回参数对象是不一样的
    $('#table-on-check-all').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark", //设置表格样式
        height: 300,
        //******前端分页设置****
        pagination: true,
        pageNumber: 2,
        pageSize: 10,
        pageList: "[10, 20, 50, 200]",
        paginationHAlign: "left",
        paginationDetailHAlign: "right",
        //******前端分页设置****
        onCheckAll: function (rowsAfter, rowsBefore) {
            alert(JSON.stringify(rowsAfter));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnUncheckAll 取消全选事件
    // bootstrap table取消全选事件，onUncheckAll事件返回取消全选前已选中的数据和全选后的数据。
    //
    // onCheckAll取消选中行事件
    // 全选事件返回参数如下。
    //
    // 参数名称	说明
    // rowsAfter	取消全选后全部选中的数据
    // rowsBefore	取消全选前的数据，在1.41之前此参数无效,1.52之后有效
    // 绑定onUncheckAll事件方法一
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onUncheckAll: function (rowsAfter,rowsBefore) {
    //         alert(JSON.stringify(rowsBefore)); //在1.41之前此参数无效,1.52之后有效
    //     }
    // });
    // 绑定onUncheckAll事件方法二
    // $('#table').on('uncheck-all.bs.table', function (e,rowsAfter,rowsBefore) {
    //     alert(JSON.stringify(rowsBefore));
    // });
    // 注意：初始化时注册和初始化后注册的第一个返回参数对象是不一样的
    $('#table-on-uncheck-all').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark",
        height: 300,
        //******前端分页设置****
        pagination: true,
        pageNumber: 2,
        pageSize: 10,
        pageList: "[10, 20, 50, 200]",
        paginationHAlign: "left",
        paginationDetailHAlign: "right",
        //******取消全选事件****
        onUncheckAll: function (rowsAfter, rowsBefore) {
            alert(JSON.stringify(rowsAfter));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnLoadSuccess 加载服务端数据成功事件
    // bootstrap table onLoadSuccess加载服务端数据成功的事件，该事件的作用是什么呢？服务端返回自己格式的数据，他大不可能为了PC端还是移动端分别适配不同的JSON格式，这时前端就需要把服务器端返回的数据转换成自己需要的JSON格式数据。而bootstrap table 在绑定数据渲染之前回回调onLoadSuccess事件，给你要机会去处理服务端返回的数据格式。该事件还是非常有用的。
    //
    // onLoadSuccess事件
    // 服务器端返回数据成功的事件，返回参数如下。
    //
    // 参数名称	说明
    // data	服务器端返回的数据格式，如[{id:1},{id:2}]
    // 绑定onLoadSuccess事件方法一
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onLoadSuccess: function (data) {
    //         alert(JSON.stringify(data));
    //     }
    // });
    // 绑定onLoadSuccess事件方法二
    // $('#table').on('load-success.bs.table', function (e,data) {
    //     alert(JSON.stringify(data));
    // });
    $('#table-on-load-success').bootstrapTable({
        columns: columns,
        classes: "table table-bordered table-striped table-sm ", //设置表格样式
        height:300,
        //******服务器端分页设置****
        url: url, //服务器返回数据的网址
        method: 'GET',   //数据请求方式
        sidePagination:'server',
        search:true, //******开启搜索框****//
        searchOnEnterKey:false, //******回车后执行搜索****//
        pagination:true,
        pageNumber:1,
        pageSize:2,
        pageList:"[10, 20, 50, 200]",
        paginationHAlign:"left",
        paginationDetailHAlign:"right",
        //******服务器端分页设置****
        onLoadSuccess:function(data) {
            alert(JSON.stringify(data));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnLoadError 加载服务端数据失败事件
    // bootstrap table onLoadError加载服务端数据失败事件
    // bootstrap table onLoadError加载服务端数据失败时执行的事件，返回status, jqXHR对象。
    //
    // onLoadError事件
    // 加载服务器端数据失败时的事件，返回参数如下。
    //
    // 参数名称	说明
    // status	http状态 如 404 ,500
    // jqXHR	XMLHTTPRequest object对象
    // 绑定onLoadError事件方法一
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onLoadError: function (status, jqXHR) {
    //         alert(JSON.stringify(status));
    //     }
    // });
    // 绑定onLoadError事件方法二
    // $('#table').on('load-error.bs.table', function (e,status, jqXHR) {
    //     alert(JSON.stringify(status));
    // });
    // $('#table').on('load-error.bs.table', function (e,status, jqXHR) {
    // alert(JSON.stringify(status));
    //  });
    $('#table-on-load-error').bootstrapTable({
        columns: columns,
        classes: "table table-bordered table-striped table-sm ", //设置表格样式
        height:300,
        //******服务器端分页设置****
        url: url, //服务器返回数据的网址
        method: 'GET',   //数据请求方式
        sidePagination:'server',
        search:true, //******开启搜索框****//
        searchOnEnterKey:false, //******回车后执行搜索****//
        pagination:true,
        pageNumber:1,
        pageSize:2,
        pageList:"[10, 20, 50, 200]",
        paginationHAlign:"left",
        paginationDetailHAlign:"right",
        //******服务器端分页设置****
        onLoadError: function (status, jqXHR) {
            alert(JSON.stringify(status));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnColumnSwitch 选择列事件
    // bootstrap table onColumnSwitch 当设置了showColumns属性为true 时，用户选择显示还是隐藏某个列时触发的事件。
    //
    // onColumnSwitch事件
    // 加载服务器端数据失败时的事件，返回参数如下。
    //
    // 参数名称	说明
    // field	选中的列名称 字段名称
    // checked	是否显示该列 true显示 false 不显示
    // 绑定onColumnSwitch事件方法一
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onColumnSwitch: function (field, checked) {
    //         alert(JSON.stringify(field));
    //     }
    // });
    // 绑定onColumnSwitch事件方法二
    // $('#table').on('column-switch.bs.table', function (e,field, checked) {
    //     alert(JSON.stringify(field));
    // });
    // 完整代码
    // 这里需要注意的是showColumns设置true你可能会看不到效果，点击按钮无法显示下拉列表，这时请确保是否引用了popper.min.js和bootstrap.min.js文件
    $('#table-on-column-switch').bootstrapTable({
        columns: columns,
        data: data,
        height: 300,
        showColumns:true,
        onColumnSwitch: function (field, checked) {
            alert(JSON.stringify(field));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnPageChange 分页事件
    // bootstrap table onPageChange分页事件,当用户点击下一页上一页或页码时的回调事件，返回number, size参数。
    //
    // onPageChange事件
    // 分页时的事件，返回参数如下。
    //
    // 参数名称	说明
    // number	当前第几页
    // size	每页显示多少行数据
    // 绑定onPageChange事件方法一
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onPageChange: function(number, size) {
    //         alert(JSON.stringify(number));
    //     }
    // });
    // 绑定onPageChange事件方法二
    // $('#table').on('page-change.bs.table', function (e,number, size) {
    //     alert(JSON.stringify(number));
    // });
    $('#table-on-page-change').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark", //设置表格样式
        height:300,
        //******前端分页设置****
        pagination:true,
        pageNumber:2,
        pageSize:10,
        pageList:"[10, 20, 50, 200]",
        paginationHAlign:"left",
        paginationDetailHAlign:"right",
        //******前端分页设置****
        onPageChange:function(number, size)
        {
            alert(number)
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnSearch 搜索事件
    // 当bootstrap table开启搜索输入框，用户输入关键词时的事件，返回text关键词字符串。
    //
    // onSearch事件
    // 搜索时的事件，返回参数如下。
    //
    // 参数名称	说明
    // text	用户输入的关键词
    // 绑定onSearch事件方法一
    // $('#table').bootstrapTable({
    //     columns: columns, //列对象
    //     data: data, //要显示的数据对象
    //     onSearch : function(text) { //搜索查询事件
    //         alert(text);
    //     }
    // });
    // 绑定onSearch事件方法二
    // $('#table').on('search.bs.table', function (e,text) {
    //     alert(text);
    // });
    $('#table-on-search').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm table-dark",
        height:300,
        search:true, //******开启搜索框****
        searchOnEnterKey:false, //******回车后执行搜索****
        onSearch:function(text) {
            alert(text);
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnToggle 切换视图事件
    // 当bootstrap table开启搜索输入框，用户输入关键词时的事件，返回text关键词字符串，需要把showToggle属性设置为true才生效。
    //
    // onToggle 事件
    // 返回参数如下。
    //
    // 参数名称	说明
    // cardView	卡片状态 true卡片视图 false表格视图
    // 绑定onToggle事件方法一
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data,
    //     cardView :true,
    //     showToggle:true, //1，注意这里必须设置true，onToggle事件才会生效
    //     onToggle:function(cardView)
    //     {
    //         alert(JSON.stringify(cardView));
    //     }
    //     绑定onToggle事件方法二
    //     $('#table').on('toggle.bs.table', function (e,cardView){
    //     alert(JSON.stringify(cardView));
    // });
    $('#table-on-toggle').bootstrapTable({
        columns: columns,
        data: data,
        height: 300,
        cardView :true,
        showToggle:true,
        onToggle:function(cardView) {
            alert(JSON.stringify(cardView));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnPreBody 表格渲染前事件
    // onPreBody是在bootstrap table表格的body渲染之前执行的事件，我们可以利用该事件对数据进行拦截、刷选、处理，该事件参数返回需要渲染的data数据。
    //
    // onPreBody 事件
    // 返回参数如下。
    //
    // 参数名称	说明
    // data	需要渲染的data数据
    // onPreBody事件绑定方式一
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data,
    //     onPreBody:function(data)
    //     {
    //         alert(JSON.stringify(data));
    //     }
    //     onPreBody事件绑定方式二
    //     注意：pre-body.bs.table方式需要的加载数据之前绑定，否则第一次加载数据进行渲染将不会生效
    //
    // $('#table').on('pre-body.bs.table', function (e,data){
    //     alert(JSON.stringify(data));
    // });
    $('#table-on-pre-body').on('pre-body.bs.table', function (e,data){
        alert(JSON.stringify(data));
    });
    $('#table-on-pre-body').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm ", //设置表格样式
        height: 300
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnPostHeader 表头渲染事件
    // onPostHeader在bootstrap table表头渲染之后执行的事件，该事件不返回然后参数，onPostFooter在bootstrap table表单部部渲染之后执行的事件，该事件返回脚部jquery对象。
    //
    // onPostHeader事件
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data,
    //     onPostHeader:function()
    //     {
    //         //表单头部渲染完后执行的事件
    //     }
    // });
    // onPostFooter事件
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data,
    //     onPostFooter:function($tableFooter)
    //     {
    //         //表单底部渲染完后执行的事件
    //         //$tableFooter底部对象
    //     }
    // });
    $('#table-on-post-header').bootstrapTable({
        columns: columns,
        data: data,
        height: 300,
        onPostHeader:function(data) {
            alert(JSON.stringify(data));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnExpandRow detail 视图模式点击展开事件
    // bootstrap table表格在detail view详情视图模式下，点击展开按钮时的事件，参数返回行号、行数据对象。
    //
    // onExpandRow事件
    // 参数返回如下对象
    //
    // 参数名称	说明
    // index	被展开行的索引行号，从0开始
    // row	行的原始数据如{id:1,name:'itxst'}
    // $detail	被展开的详情jquey对象
    // onExpandRow事件绑定方式一
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data,
    //     onExpandRow:function(index, row, $detail)
    //     {
    //         alert(JSON.stringify(row));
    //     }
    // });
    // onExpandRow事件绑定方式二
    // $('#table').on('expand-row.bs.table', function (e,index, row, $detail){
    //     alert(JSON.stringify(row));
    // });
    $('#table-on-expand-row').bootstrapTable({
        columns: columns,
        data: data,
        height: 300,
        toggle:"table",
        detailView:true,
        detailFormatter:"detailFormatter",
        onExpandRow:function(index, row, $detail) {
            alert(JSON.stringify(row));
        }
    });
    function detailFormatter(index, row) {
        var html = []
        $.each(row, function (key, value) {
            html.push('<p><b>' + key + ':</b> ' + value + '</p>')
        });
        return html.join('')
    }


    ////////////////////////////////////////////
    //Bootstrap Table OnPostBody 表格渲染前事件
    // onPostBody是在bootstrap table表格的body渲染之后执行的事件，该事件参数返回需要渲染的data数据。
    //
    // onPostBody事件
    // 返回参数如下。
    // 参数名称	说明
    // data	需要渲染的data数据
    // onPostBody事件绑定方式一
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data,
    //     onPostBody:function(data)
    //     {
    //         alert(JSON.stringify(data));
    //     }
    // });
    // onPostBody事件绑定方式二
    // 注意：pre-body.bs.table方式需要的加载数据之前绑定，否则第一次加载数据进行渲染将不会生效
    //
    // $('#table').on('post-body.bs.table', function (e,data){
    //     alert(JSON.stringify(data));
    // });
    $('#table-on-post-body').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm ", //设置表格样式
        height: 300,
        onPostBody:function(data) {
            alert(JSON.stringify(data));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnCollapseRow detail 视图模式点击收起事件
    // bootstrap table表格在detail view详情视图模式下，点击收起按钮时的事件，参数返回行号、行数据对象。
    //
    // onCollapseRow事件
    // 参数返回如下对象
    //
    // 参数名称	说明
    // index	被收起行的索引行号，从0开始
    // row	行的原始数据如{id:1,name:'itxst'}
    // detail	被收起的详情jquey对象
    // onCollapseRow事件绑定方式一
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data,
    //     onCollapseRow:function(index, row, detail)
    //     {
    //         alert(JSON.stringify(row));
    //     }
    // });
    // onExpandRow事件绑定方式二
    // $('#table').on('collapse-row.bs.table', function (e,index, row, $detail){
    //     alert(JSON.stringify(row));
    // });
    $('#table-on-collapse-row').bootstrapTable({
        columns: columns,
        data: data,
        toggle:"table",
        height: 300,
        detailView:true,
        detailFormatter:"detailFormatter",
        onCollapseRow:function(index, row, $detail) {
            alert(JSON.stringify(row));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnResetView 视图切换事件
    // onResetView是在bootstrap table表格切换视图后执行的事件，bootstrap table有两种视图模式，一种是列表方式，一种是cardView卡片视图模式，如果不清除视图是什么概念请点击网页底部的试一试按钮在线测试看看。
    //
    // onResetView事件绑定方式一
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     data: data,
    //     onResetView:function()
    //     {
    //         alert("你切换了视图模式");
    //     }
    // });
    // onResetView事件绑定方式二
    // 注意：pre-body.bs.table方式需要的加载数据之前绑定，否则第一次加载数据进行渲染将不会生效
    //
    // $('#table').on('reset-view.bs.table',function (e){
    //     alert("你切换了视图模式");
    // });
    //$('#table').on('reset-view.bs.table',function (e){
    // alert("你切换了视图模式");
    //});
    $('#table-on-reset-view').bootstrapTable({
        columns: columns,
        data: data,
        height: 300,
        toolbar:"#toolbar-reset-view",
        cardView:true,
        onResetView:function(){
            alert("你切换了视图");
        }
    });
    function resetView() {
        var ops=$('#table-on-reset-view').bootstrapTable('getOptions');

        if(ops.cardView==true) {
            $('#table-on-reset-view').bootstrapTable('refreshOptions',{cardView:false});
        }
        else {
            $('#table-on-reset-view').bootstrapTable('refreshOptions',{cardView:true});
        }
    }


    ////////////////////////////////////////////
    //Bootstrap Table OnRefresh 刷新事件
    // bootstrap table刷新按钮事件，当然开启了showRefresh:"true"显示刷新按钮，用户点击刷新按钮事件执行onRefresh事件。
    //
    // onRefresh事件
    // 返回参数如下。
    //
    // 参数名称	说明
    // params	the additional parameters request to the server.
    //     绑定onRefresh事件方法一
    // $('#table').bootstrapTable({
    //     url: '/package/bootstrap-table-1.14.1/data.json',
    //     pagination: true,
    //     search: true,
    //     columns: columns,
    //     showRefresh:"true",//刷新按钮
    //     onRefresh:function(params)
    //     {
    //         alert(JSON.stringify(params));
    //     }
    // });
    // 绑定onRefresh事件方法二
    // $('#table').on('refresh.bs.table', function (e,params){
    //     alert(JSON.stringify(params));
    // });
    $('#table-on-refresh').bootstrapTable({
        url: url,
        pagination: true,
        search: true,
        height: 300,
        columns: columns,
        showRefresh:"true",//刷新按钮
        onRefresh:function(params) {
            alert(JSON.stringify(params));
        }
    });


    ////////////////////////////////////////////
    //Bootstrap Table OnScrollBody 表格滚动事件
    // 当bootstrap table表格有滚动条的情况下，拖动滚动条时执行的事件，但是测试了scrollTo和手动滚动滚动条都未触发该事件，只在初始化时触发了该事件。
    //
    // 绑定onScrollBody事件方法一
    // $('#table').bootstrapTable({
    //     columns: columns,
    //     onScrollBody:function()
    //     {
    //         alert("你滚动了表格滚动条");
    //     }
    // });
    // 绑定onScrollBody事件方法二
    // $('#table').on('scroll-body.bs.table', function (e){
    //     alert("你滚动了表格滚动条");
    // });
    $('#table-on-scroll-body').bootstrapTable({
        columns: columns,
        data: getData(),
        classes: "table table-bordered table-striped table-sm ",
        height: 300,
        toolbar:"#toolbar-scroll",
        onScrollBody:function() {
            alert("你滚动了表格滚动条");
        }
    });
    function scrollBody() {
        $('#table-on-scroll-body').bootstrapTable('scrollTo','bottom');
    }
</script>

<hr>
<h2 style="color: red">Bootstrap Datepicker 日期插件</h2>
<div>
  <hr>
  <h4>Bootstrap Datepicker 基本用法</h4>
  <div class="container ">
    <div class="input-group input-daterange">
      <div class="input-group-prepend">
        <span class="input-group-text">预定日期</span>
      </div>
      <input type="text" id="input-date-dt1" placeholder="入住日期" class="form-control">
      <div class="input-group-addon">-</div>
      <input type="text" id="input-date-dt2" placeholder="退房日期" class="form-control">
    </div>
  </div>

  <hr>
  <h4>Bootstrap Datepicker Range Inputs 区间选择</h4>
  <div class="container ">
    <div id="input-date-range">
      <input type="text" placeholder="入住日期"  class="actual_range">
      <input type="text" placeholder="退房日期"  class="actual_range">
    </div>
  </div>

  <hr>
  <h4>Bootstrap Datepicker Before ShowDay 属性自定义日期比如控制某个日期是否可选</h4>
  <div class="container ">
    <input type="text" id="input-date-before-day" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker Before ShowMonth 设置特殊月份</h4>
  <div class="container ">
    <input type="text" id="input-date-before-month" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker Before ShowYear 自定义年份</h4>
  <div class="container ">
    <input type="text" id="input-date-before-year" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker Calendar Weeks 显示当前第几周</h4>
  <div class="container ">
    <input type="text" id="input-date-calendar-week" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker Dates Disabled 设置日期不可选</h4>
  <div class="container ">
    <input type="text" id="input-date-dates-disable" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker Days Of Week Disabled 设置星期六星期天不可选</h4>
  <div class="container ">
    <input type="text" id="input-date-week-disable" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker Default ViewDate 根据指定日期展开选择面板</h4>
  <div class="container ">
    <input type="text" id="input-date-default-view" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker StartDate 和 EndDate 起始日期和结束日期</h4>
  <div class="container ">
    <input type="text" id="input-date-start-end" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker Format 日期格式比如显示中文年月日</h4>
  <div class="container ">
    <input type="text" id="input-date-format" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker Language 设置中文语言</h4>
  <div class="container ">
    <input type="text" id="input-date-language" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker MaxViewMode设置最大可选单位，比如设置不能快速选择年份</h4>
  <div class="container ">
    <input type="text" id="input-date-max-mode" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker MinViewMode 设置最小可选单位，比如只能选择月份</h4>
  <div class="container ">
    <input type="text" id="input-date-min-mode" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker Multi Date 属性实现同时选择多个日期</h4>
  <div class="container ">
    <input type="text" id="input-date-multi" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker Today Highlight 今天日期高亮</h4>
  <div class="container ">
    <input type="text" id="input-date-today" placeholder="选择日期" class="form-control">
  </div>

  <hr>
  <h4>Bootstrap Datepicker I18N 自定义语言中文定制</h4>
  <div class="container ">
    <input type="text" id="input-date-i18n" placeholder="选择日期" class="form-control" autocomplete="off">
  </div>

  <hr>
  <h4>Bootstrap Datepicker SetDaysOfWeekDisabled 方法设置星期几不能选择</h4>
  <div class="container ">
    <input type="text" id="input-date-days-disable" placeholder="选择日期" class="form-control" autocomplete="off">
    <button type="button" class="btn btn-primary" onclick=" $('#input-date-days-disable').datepicker('show')">setDaysOfWeekDisabled</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker Destroy 注销控件的方法</h4>
  <div class="container ">
    <input type="text" id="input-date-destroy" placeholder="选择日期" class="form-control">
    <button type="button" class="btn btn-primary" onclick="destroyCtrl()">Primary</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker 通过show方法主动弹出日期选择框</h4>
  <div class="container ">
    <input type="text" id="input-date-show" placeholder="选择日期" class="form-control">
    <button type="button" class="btn btn-primary" onclick="showCtrl()">点击这里看效果</button>

  </div>

  <hr>
  <h4>Bootstrap Datepicker 通过hide方法隐藏日期选择框</h4>
  <div class="container ">
    <input type="text" id="input-date-hide" placeholder="选择日期" class="form-control">
    <button type="button" class="btn btn-primary" onclick="showCtrl_()">点击这里展开选择框</button>
    <button type="button" class="btn btn-primary" onclick="hideCtrl()">点击这里隐藏选择框</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker Update 设置控件选中日期</h4>
  <div class="container ">
    <input type="text" id="input-date-update" placeholder="选择日期" class="form-control">
    <button type="button" class="btn btn-primary" onclick="doAction_update()">点击这里看效果</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker SetDate 设置控件日期</h4>
  <div class="container ">
    <input type="text" id="input-date-set" placeholder="选择日期" class="form-control">
    <button type="button" class="btn btn-primary" onclick="doAction_set1()">setDate</button>
    <button type="button" class="btn btn-primary" onclick="doAction_set2()">setDates</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker SetUTCDate 设置控件日期</h4>
  <div class="container ">
    <input type="text" id="input-date-set-utc" placeholder="选择日期" class="form-control">
    <button type="button" class="btn btn-primary" onclick="doAction_set_utc1()">setDate</button>
    <button type="button" class="btn btn-primary" onclick="doAction_set_utc2()">setDates</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker GetDate 获取控件日期</h4>
  <div class="container ">
    <input type="text" id="input-date-get" placeholder="选择日期" class="form-control">
    <button type="button" class="btn btn-primary" onclick="doAction_get1()">getDate</button>
    <button type="button" class="btn btn-primary" onclick="doAction_get2()">getDates</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker GetUTCDate 设置控件日期</h4>
  <div class="container ">
    <input type="text" id="input-date-get-utc" placeholder="选择日期" class="form-control">
    <button type="button" class="btn btn-primary" onclick="doAction_get_utc1()">getDate</button>
    <button type="button" class="btn btn-primary" onclick="doAction_get_utc2()">getDates</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker ClearDates 清除控件日期值</h4>
  <div class="container ">
    <input type="text" id="input-date-clear" placeholder="选择日期" class="form-control">
    <button type="button" class="btn btn-primary" onclick="doAction_clear()">clearDates</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker SetStartDate 方法设置日期控件起始日期（可选日期）</h4>
  <div class="container ">
    <input type="text" id="input-date-start" placeholder="选择日期" class="form-control" autocomplete="off">
    <button type="button" class="btn btn-primary" onclick="doAction_start()" style="margin-top:5px">setStartDate</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker SetEndDate 方法设置日期控件可选结束日期</h4>
  <div class="container ">
    <input type="text" id="input-date-end" placeholder="选择日期" class="form-control" autocomplete="off">
  </div>

  <hr>
  <h4>Bootstrap Datepicker SetDatesDisabled 方法设置不可选日期</h4>
  <div class="container ">
    <input type="text" id="input-date-disable" placeholder="选择日期" class="form-control" autocomplete="off">
    <button type="button" class="btn btn-primary" onclick=" $('#input-date-disable').datepicker('show')">setDatesDisabled</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker SetDaysOfWeekHighlighted 方法设置星期一星期天高亮显示</h4>
  <div class="container ">
    <input type="text" id="input-date-days-highlight" placeholder="选择日期" class="form-control" autocomplete="off">
    <button type="button" class="btn btn-primary" onclick=" $('#input-date-days-highlight').datepicker('show')">setDaysOfWeekHighlighted</button>
  </div>

  <hr>
  <h4>Bootstrap Datepicker Show 控件展开事件</h4>
  <div class="container ">
    <input type="text" id="input-date-event-show" placeholder="选择日期" class="form-control" autocomplete="off">
    <div id="tips-show"></div>
  </div>

  <hr>
  <h4>Bootstrap Datepicker Hide 控件隐藏事件</h4>
  <div class="container ">
    <input type="text" id="input-date-event-hide" placeholder="点击输入框看看效果" class="form-control" autocomplete="off">
    <div id="tips-hide"></div>
  </div>

  <hr>
  <h4>Bootstrap Datepicker ClearDate 控件清除选择事件</h4>
  <div class="container ">
    <div id="tips-clear"></div>
    <input type="text" id="input-date-event-clear" placeholder="点击输入框看看效果" class="form-control" autocomplete="off">
  </div>

  <hr>
  <h4>Bootstrap Datepicker ChangeDate 日期变更事件</h4>
  <div class="container ">
    <div id="tips-change"></div>
    <input type="text" id="input-date-event-change" placeholder="点击输入框看看效果" class="form-control" autocomplete="off">
  </div>

  <hr>
  <h4>Bootstrap Datepicker ChangeMonth 月份变更事件</h4>
  <div class="container ">
    <div id="tips-month"></div>
    <input type="text" id="input-date-event-month" placeholder="点击输入框看看效果" class="form-control" autocomplete="off">
  </div>

  <hr>
  <h4>Bootstrap Datepicker ChangeYear 选择年份事件</h4>
  <div class="container ">
    <div id="tips-year"></div>
    <input type="text" id="input-date-event-year" placeholder="点击输入框看看效果" class="form-control" autocomplete="off">
  </div>

  <hr>
  <h4>Bootstrap Datepicker ChangeDecade 选择年代事件</h4>
  <div class="container ">
    <div id="tips-decade"></div>
    <input type="text" id="input-date-event-decade" placeholder="点击输入框看看效果" class="form-control" autocomplete="off">
  </div>

  <hr>
  <h4>Bootstrap Datepicker ChangeCentury 事件</h4>
  <div class="container ">
    <div id="tips-century"></div>
    <input type="text" id="input-date-event-century" placeholder="点击输入框看看效果" class="form-control" autocomplete="off">
  </div>

</div>
<script>
    ////////////////////////////////////////////
    //Bootstrap Datepicker 基本用法
    var ops_date = {
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        startDate: "2020-06-10", //开始时间，在这时间之前都不可选
    };
    $("#input-date-dt1").datepicker(ops_date);
    $("#input-date-dt2").datepicker(ops_date);
    //第一个输入选中日期后设置第二给输入框的开始日期
    $("#input-date-dt1").datepicker().on("changeDate", function (e) {
        $("#input-date-dt2").datepicker('setStartDate', e.date);
    });
    $("#input-date-dt2").datepicker().on("changeDate", function (e) {
        $("#input-date-dt1").datepicker('setEndDate', e.date);
    });


    ////////////////////////////////////////////
    //Bootstrap Datepicker Range Inputs 区间选择
    // 同我们会遇到这样的场景需要选择区间日期，比如开始日期结束日期如入住日期和退房日期，bootstrap-datepicker提供了inputs属性来快速时间这个功能。
    $('#input-date-range').datepicker({
        language: 'zh-CN', //语言
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        inputs: $('.actual_range')
    });


    ////////////////////////////////////////////
    //Bootstrap Datepicker Before ShowDay 属性自定义日期比如控制某个日期是否可选
    // Function(Date). Default: $.noop
    // 返回值	说明
    // undefined	不受影响
    // Boolean	true可选false不能选择
    // String	日期单元格样式
    // object	{
    //     enabled:false,
    //         classes:'redcls',
    //         tooltip:'www.itxst.com上线的日子',
    //         content:'休'
    // }
    var ops_before_day = {
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        beforeShowDay: function (e) {
            //如果是星期六星期天不允许选择
            if (e.getDay() == 6 || e.getDay() == 0) {
                return {
                    enabled: false,
                    classes: 'red',
                    tooltip:'星期六星期天不允许选择'
                }
            }
            if (e.getDate() == 15) {
                return {
                    enabled: true,
                    classes: 'day1',
                    tooltip: '开会'
                }
            }
        }
    };
    $("#input-date-before-day").datepicker(ops_before_day);


    ////////////////////////////////////////////
    //Bootstrap Datepicker Before ShowMonth 设置特殊月份
    // 通过bootstrap-datepicker的beforeShowMonth的属性设置特殊月份，比如自定义1月份不允许选择并设置背景色和文字颜色
    // 属性列表
    // 返回值	说明
    // undefined	不受影响
    // Boolean	true可选false不能选择
    // String	日期单元格样式
    // object	{
    //     enabled:false,
    //         classes:'redcls',
    //         tooltip:'www.itxst.com上线的月份',
    // }
    var ops_before_month = {
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        beforeShowMonth: function (e) {
            //设置1月份也特殊月份，不允许选择
            if (e.getMonth()==1) {
                return {
                    enabled: false,
                    classes: 'cs',
                    tooltip:'特殊月份,不允许选择'
                }
            }
        }
    };
    $("#input-date-before-month").datepicker(ops_before_month);


    ////////////////////////////////////////////
    //Bootstrap Datepicker Before ShowYear 自定义年份
    // 通过bootstrap-datepicker的beforeShowYear的属性设置特殊年份，可以自定义该年份是否可选择、样式及鼠标移动到年份上面的提示文字。
    // 属性列表
    // 返回值	说明
    // undefined	不受影响
    // Boolean	true可选false不能选择
    // String	日期单元格样式
    // object	{
    //     enabled:false,
    //         classes:'redcls',
    //         tooltip:'www.itxst.com在当年上线',
    // }
    var ops_before_year = {
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        beforeShowYear: function (e) {
            //设置所有年份不能选择
            return {
                enabled: false,
                classes: 'cs',
                tooltip:'特殊月份,不允许选择'
            }

        }
    };
    $("#input-date-before-year").datepicker(ops_before_year);


    ////////////////////////////////////////////
    //Bootstrap Datepicker Calendar Weeks 显示当前第几周
    // 通过bootstrap-datepicker的calendarWeeks属性我们可以在日期控件的第一列显示当前第几周，设置calendarWeeks为true显示第几周，设置false不显示。
    var ops_calendar_week = {
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        calendarWeeks:true //当前第几周
    };
    $("#input-date-calendar-week").datepicker(ops_calendar_week);


    ////////////////////////////////////////////
    //Bootstrap Datepicker Dates Disabled 设置日期不可选
    // 通过bootstrap-datepicker的datesDisabled属性可以简单快速的设置某些日期不可选，当然也可以通过beforeShowDay属性设置日期不可选，区别是beforeShowDay可顶制度更高。
    var day_disable=new Date();
    var ops_dates_disable = {
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        datesDisabled:[day_disable.getYear()+'-'+(day_disable.getMonth()+1)+'-'+day_disable.getDate(),day_disable.getYear()+'-'+(day_disable.getMonth()+1)+'-'+(day_disable.getDate()+2)]
    };
    $("#input-date-dates-disable").datepicker(ops_dates_disable);


    ////////////////////////////////////////////
    //Bootstrap Datepicker Days Of Week Disabled 设置星期六星期天不可选
    // bootstrap-datepicker的daysOfWeekDisabled属性可以设置星期几为不可选，比如设置星期六星期天这种双休日不可选择。
    var ops_week_disable = {
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        daysOfWeekDisabled:[6,0]
    };
    $("#input-date-week-disable").datepicker(ops_week_disable);


    ////////////////////////////////////////////
    //Bootstrap Datepicker Default ViewDate 根据指定日期展开选择面板
    // bootstrap-datepicker defaultViewDate根据指定日期展开选择面板,比如当前日期是2020-06-25，我们需要在用户点击输入框弹出日期控件选择面板时显示的日期是2019-10-01。
    //展开2019-10-01的日期选择面板
    var ops_default_view = {
        language: 'zh-CN', //语言
        autoclose: false, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        todayHighlight: true,
        todayBtn: 'linked',
        defaultViewDate: '2019-10-01',
        beforeShowDay: function (e) {
            if (e.getDate() == 1 && e.getMonth() == 9 && e.getFullYear() == 2019) {
                return {
                    enabled: true,
                    classes: 'day1',
                    tooltip: '开会'
                }
            }
        }
    };
    $("#input-date-default-view").datepicker(ops_default_view);

    ////////////////////////////////////////////
    //Bootstrap Datepicker StartDate 和 EndDate 起始日期和结束日期
    // bootstrap-datepicker startDate和endDate起始日期和结束日期,限制用户选择日期的范围。
    var ops_start_end = {
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: false,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        todayHighlight: true,
        todayBtn: 'linked',
        defaultViewDate: '2020-05-01', //展开2020-05-01的日期选择面板
        startDate: '2020-05-11', //设置可选的起始日期
        endDate:'2020-05-22',
    };
    $("#input-date-start-end").datepicker(ops_start_end);


    ////////////////////////////////////////////
    //Bootstrap Datepicker Format 日期格式比如显示中文年月日
    // 支持格式
    // 格式	说明
    // d  日期，比如1、15号
    // dd	日期，比如01、15号，比d多了给0站位符
    // D	大写的D表示星期几的缩写，比如周四或周五
    // DD	两个大写的DD表示星期几，比如星期四
    // m	小写m表示月份，比如1月份11月份
    // mm	两给小写m表示月份包含0占位符，比如01月份
    // M	 大写表示月份的缩写，比如1月、6月
    // MM  两个大写M表示月份,比如一月、六月
    // yy  年份比如19、20
    // yyyy	年份比如2019、2020
    var ops_format = {
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: false,//清除按钮
        format: "yyyy年mm月dd",//日期格式
    };
    $("#input-date-format").datepicker(ops_format);


    ////////////////////////////////////////////
    //Bootstrap Datepicker Language 设置中文语言
    // bootstrap-datepicker自带了各种语言包，可以通过language属性设置语言，比如中文。
    ! function(a) {
        a.fn.datepicker.dates["zh-diy"] = {
            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"],
            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六"],
            daysMin: ["日", "一", "二", "三", "四", "五", "六"],
            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
            monthsShort: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
            today: "今天",
            monthsTitle: "选择月份",
            clear: "清除",
            format: "yyyy-mm-dd",
            titleFormat: "yyyy年mm月",
            weekStart: 1
        }
    }(jQuery);
    var ops_language = {
        language: 'zh-diy', //语言******************
        autoclose: true,
        clearBtn: true,
        format: "yyyy-mm-dd"
    };
    $("#input-date-language").datepicker(ops_language);


    ////////////////////////////////////////////
    //Bootstrap Datepicker MaxViewMode设置最大可选单位，比如设置不能快速选择年份
    // bootstrap-datepicker maxViewMode设置最大可选单位，比如设置不能快速选择年份，这部是不能选择年份而是不能快速选择年份。
    var day_max_mode=new Date();
    var ops_max_mode = {
        maxViewMode:'months',
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        datesDisabled:['2020-06-'+day_max_mode.getDate(),'2020-06-'+ (day_max_mode.getDate()+2)]
    };
    $("#input-date-max-mode").datepicker(ops_max_mode);


    ////////////////////////////////////////////
    //Bootstrap Datepicker MinViewMode 设置最小可选单位，比如只能选择月份
    // bootstrap-datepicker minViewMode设置最小可选单位，比如只能选择月份或者年份。
    var day_min_mode=new Date();
    var ops_min_mode = {
        minViewMode:'months',
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm",//日期格式
        datesDisabled:[day_min_mode.getYear()+'-'+(day_min_mode.getMonth()+1)+'-'+day_min_mode.getDate(),day_min_mode.getYear()+'-'+(day_min_mode.getMonth()+1)+'-'+(day_min_mode.getDate()+2)]
    };
    $("#input-date-min-mode").datepicker(ops_min_mode);


    ////////////////////////////////////////////
    //Bootstrap Datepicker Multi Date 属性实现同时选择多个日期
    // bootstrap-datepicker multidate属性实现同时选择多个日期,这似乎不是一个高频需求，比如选择A产品的盘库日期为某月的11号和22号，通常品配合multidateSeparator属性一起使用。
    var day_multi=new Date();
    var ops_multi = {
        multidate:3, //设置最多同时选择3个日期，也可以设置为true
        multidateSeparator:'$',//$隔开日期
        language: 'zh-CN', //语言
        autoclose: false, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
        datesDisabled:['2020-06-'+day_multi.getDate(),'2020-06-'+ (day_multi.getDate()+2)]
    };
    $("#input-date-multi").datepicker(ops_multi);


    ////////////////////////////////////////////
    //Bootstrap Datepicker Today Highlight 今天日期高亮
    // bootstrap-datepicker todayHighlight 今天日期高亮显示。
    var ops_today = {
        todayHighlight:true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: false, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-today").datepicker(ops_today);


    ////////////////////////////////////////////
    //Bootstrap Datepicker I18N 自定义语言中文定制
    // bootstrap-datepicker I18N，官方已经提供了中文语言包设置引用中文语言JS包设置language:为zh-CN即可，如果我们还需要对中文语言就行进一步定制呢？本文将进一步介绍如何进一步定义中文
    ! function(a) {
        a.fn.datepicker.dates["zh-CN"] = {
            days: ["礼拜日", "礼拜一", "礼拜二", "礼拜三", "礼拜四", "礼拜五", "礼拜六"],
            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六"],
            daysMin: ["日", "一", "二", "三", "四", "五", "六"],
            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
            monthsShort: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
            today: "当天",
            monthsTitle: "选择月份",
            clear: "重置",
            format: "yyyy-mm-dd",
            titleFormat: "yyyy年mm月",
            weekStart: 1
        }
    }(jQuery);
    //设置language为zh-CN中文
    var ops_i18n = {
        language: 'zh-CN', //设置语言
        autoclose: true, //设置选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-i18n").datepicker(ops_i18n);


    ////////////////////////////////////////////
    //Bootstrap Datepicker SetDaysOfWeekDisabled 方法设置星期几不能选择
    // bootstrap-datepicker setDaysOfWeekDisabled方法设置星期几不能选择，比如设置星期六星期天不能选择，通过setDatesDisabled方法也可以实现设置星期六星期天不能选择，但是需要自己去计算那天是星期六星期天，而setDaysOfWeekDisabled则通过传入0-6数字进行快速简单的设置。其中数字6表示星期六0表示星期天。
    var ops_days_disable = {
        multidate: true,//同时可以选中多个日期
        todayHighlight: true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-days-disable").datepicker(ops_days_disable);
    function doAction_disable() {

        //通过数组设置星期六星期天不能选择
        //$('#itxst').datepicker('setDaysOfWeekDisabled', [6,0]);
        //通过字符串设置星期六星期天不能选择
        $('#input-date-days-disable').datepicker('setDaysOfWeekDisabled', '6,0');
    }
    doAction_disable();


    ////////////////////////////////////////////
    //Bootstrap Datepicker Destroy 注销控件的方法
    // bootstrap-datepicker destroy注销控件的方法,当我们不再需要日期控件时可以调用该方法进行注销，无需参数。
    var ops_destroy = {
        todayHighlight:true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: false, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-destroy").datepicker(ops_destroy);
    function destroyCtrl() {
        $('#input-date-destroy').datepicker('destroy');
        alert('控件已被注销')
    }


    ////////////////////////////////////////////
    //Bootstrap Datepicker 通过show方法主动弹出日期选择框
    // bootstrap-datepicker 通过show方法主动弹出日期选择框,应用场景我理解的是这样的，有些用户为了快速的填写表单并不会去使用鼠标，而是通过键盘操作，当然输入日期input框获得焦点时，可以通过show方法主动弹出日期选择框让用户快速选择。
    var ops_show = {
        todayHighlight:true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: false, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-show").datepicker(ops_show);
    function showCtrl() {
        $('#input-date-show').datepicker('show');
    }


    ////////////////////////////////////////////
    //Bootstrap Datepicker 通过hide方法隐藏日期选择框
    // bootstrap-datepicker 通过hide方法隐藏日期选择框
    var ops = {
        todayHighlight:true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: false, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-hide").datepicker(ops);
    function showCtrl_() {
        $('#input-date-hide').datepicker('show');
    }
    function hideCtrl() {
        $('#input-date-hide').datepicker('hide');
    }


    ////////////////////////////////////////////
    //Bootstrap Datepicker Update 设置控件选中日期
    // bootstrap-datepicker update设置控件选中日期，通过update方法可以设置日期控件的选中值并会修改对应的输入框的值。
    var ops_update = {
        todayHighlight:true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: false, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-update").datepicker(ops_update);
    function doAction_update() {
        $('#input-date-update').datepicker('update', '2020-03-05', '2020-03-08');
    }


    ////////////////////////////////////////////
    //Bootstrap Datepicker SetDate 设置控件日期
    // bootstrap-datepicker setDate设置控件日期和update方法的区别是，如果传入的参数是当地时间将会转换成功UTC时间，如果你的业务是全球化产品则需要使用该方法去设置控件的时间，如果需要同时设置多个值请使用setDates。
    var ops_set = {
        todayHighlight:true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: false, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-set").datepicker(ops_set);
    function doAction_set1() {
        $('#input-date-set').datepicker('setDate', new Date());
    }
    function doAction_set2() {
        $('#input-date-set').datepicker('setDates', [new Date('2020-8-11'),new Date('2020-8-10')]);
    }


    ////////////////////////////////////////////
    //Bootstrap Datepicker SetUTCDate 设置控件日期
    // bootstrap-datepicker setUTCDate设置控件日期,默认传入的参数是UTC时间，即使传入的是当地时间该方法也部会转换，而setDate方法则不管那么多统统转化成UTC时间，如果你的业务是全球化产品则需要注意该方法。
    var ops_set_utc = {
        todayHighlight:true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: false, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-set-utc").datepicker(ops_set_utc);
    function doAction_set_utc1() {
        $('#input-date-set-utc').datepicker('setUTCDate', new Date());
    }
    function doAction_set_utc2() {
        $('#input-date-set-utc').datepicker('setUTCDates', [new Date('2020-8-11'),new Date('2020-8-10')]);
    }


    ////////////////////////////////////////////
    //Bootstrap Datepicker GetDate 获取控件日期
    // bootstrap-datepicker getDate获取控件日期，如果是多选模式返回最新的一个日期，返回的时间是本地时间并不是UTC时间。多选模式使用getDate返回数组。
    var ops_get = {
        multidate:true,//同时可以选中多个日期
        todayHighlight:true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: false, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-get").datepicker(ops_get);
    function doAction_get1() {
        var val=$('#input-date-get').datepicker('getDate');
        alert(val);
    }
    function doAction_get2() {
        var val=$('#input-date-get').datepicker('getDates');
        alert(JSON.stringify(val));
    }


    ////////////////////////////////////////////
    //Bootstrap Datepicker GetUTCDate 设置控件日期
    // bootstrap-datepicker getUTCDate获取控件UTC日期，如果是多选模式返回最新的一个日期，返回的时间是UTC时间。多选模式使用getUTCDates返回数组。
    var ops_get_utc = {
        multidate:true,//同时可以选中多个日期
        todayHighlight:true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: false, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-get-utc").datepicker(ops_get_utc);
    function doAction_get_utc1() {
        var val=$('#input-date-get-utc').datepicker('getUTCDate');
        alert(val);
    }
    function doAction_get_utc2() {
        var val=$('#input-date-get-utc').datepicker('getUTCDates');
        alert(JSON.stringify(val));
    }


    ////////////////////////////////////////////
    //Bootstrap Datepicker ClearDates 清除控件日期值
    // bootstrap-datepicker clearDates方法清除控件日期值，包括清除输入框的值，无需传入任何参数。
    var ops_clear = {
        multidate:true,//同时可以选中多个日期
        todayHighlight:true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-clear").datepicker(ops_clear);
    function doAction_clear() {
        $('#input-date-clear').datepicker('clearDates');
    }


    ////////////////////////////////////////////
    //Bootstrap Datepicker SetStartDate 方法设置日期控件起始日期（可选日期）
    // bootstrap-datepicker setStartDate方法设置日期控件起始日期及可选日期，比如设置为2020-7-2号则只能选择该日期及之后的日期，一般和setEndDate配合使用。
    var ops_start = {
        multidate: true,//同时可以选中多个日期
        todayHighlight: true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-start").datepicker(ops_start);
    //设置当天日期起之后的第10天开始才能选择
    function doAction_start() {
        var dt = new Date(new Date().setDate(new Date().getDate() + 10));
        $('#input-date-start').datepicker('setStartDate', dt);
    }
    doAction_start();

    ////////////////////////////////////////////
    //Bootstrap Datepicker SetEndDate 方法设置日期控件可选结束日期
    // bootstrap-datepicker setStartDate方法设置日期控件起始日期及可选日期，比如设置为2020-7-2号则只能选择该日期及之后的日期，一般和setEndDate配合使用。
    var ops_end = {
        multidate: true,//同时可以选中多个日期
        todayHighlight: true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-end").datepicker(ops_end);
    //设置当天日期起之后的第1天开始才能选择
    function setStartDate() {
        var dt = new Date(new Date().setDate(new Date().getDate() + 1));
        $('#input-date-end').datepicker('setStartDate', dt);
    }
    //设置当天日期起之后的第5天之前的日期才能选择
    function setEndDate() {
        var dt = new Date(new Date().setDate(new Date().getDate() + 5));
        $('#input-date-end').datepicker('setEndDate', dt);
    }
    setStartDate();
    setEndDate();

    ////////////////////////////////////////////
    //Bootstrap Datepicker SetDatesDisabled 方法设置不可选日期
    // bootstrap-datepicker setDatesDisabled方法设置不可选日期,比如设置星期六星期天不允许选择。
    var ops_date_disable = {
        multidate: true,//同时可以选中多个日期
        todayHighlight: true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-disable").datepicker(ops_date_disable);

    function doAction_date_disable() {
        //设置这三个日期不允许选择
        var dt1 = new Date(new Date().setDate(new Date().getDate() + 1));
        var dt2 = new Date(new Date().setDate(new Date().getDate() + 3));
        var dt3 = new Date(new Date().setDate(new Date().getDate() + 4));
        //通过数组设置不可选日期
        $('#input-date-disable').datepicker('setDatesDisabled', [dt1, dt2, dt3]);
        //通过字符串设置不可选日期
        //$('#itxst').datepicker('setDatesDisabled', '2020-7-3');
    }
    doAction_date_disable();


    ////////////////////////////////////////////
    //Bootstrap Datepicker SetDaysOfWeekHighlighted 方法设置星期一星期天高亮显示
    // bootstrap-datepicker setDaysOfWeekHighlighted方法设置星期几高亮显示起到提示的作用，比如设置星期一和星期日高亮显示。但是高亮默认的效果并不很好看，可以通过beforeShowDay属性自定义出更好看的效果。
    var ops_highlight = {
        multidate: true,//同时可以选中多个日期
        todayHighlight: true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-days-highlight").datepicker(ops_highlight);
    function doAction_highlight() {
        //通过数组设置星期六星期天不能选择
        //$('#itxst').datepicker('setDaysOfWeekHighlighted', [6,1]);
        //通过字符串设置星期六星期天不能选择
        $('#input-date-days-highlight').datepicker('setDaysOfWeekHighlighted', '6,1');
    }
    doAction_highlight();


    ////////////////////////////////////////////
    //Bootstrap Datepicker Show 控件展开事件
    // 用户点击bootstrap-datepicker控件时，会执行show控件展开事件，你可以通过该事件知道用户什么时候展开了控件。
    var ops_event_show = {
        multidate: true,//同时可以选中多个日期
        todayHighlight: true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-event-show").datepicker(ops_event_show);
    //show展开事件
    $('#input-date-event-show').datepicker().on('show', function (e) {
        console.log(e);
        $("#tips-show").html('你展开日期控件');
    });


    ////////////////////////////////////////////
    //Bootstrap Datepicker Hide 控件隐藏事件
    // bootstrap-datepicker hide控件隐藏事件，当日期控件隐藏或执行hide方法事件将会回调该方法，这时你可以知道用户在何时隐藏了控件，与之对应的是show事件及日期控件展开时的事件。
    var ops_event_hide = {
        todayHighlight: true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-event-hide").datepicker(ops_event_hide);
    //绑定hide隐藏事件
    $('#input-date-event-hide').datepicker().on('hide', function (e) {
        console.log(e);
        $("#tips-hide").html('你隐藏日期控件');
    });


    ////////////////////////////////////////////
    //Bootstrap Datepicker ClearDate 控件清除选择事件
    // bootstrap-datepicker clearDate控件清除选择事件，当用户点击清除按钮时触发的事件。
    var ops_event_clear = {
        todayHighlight: true, //设置当天日期高亮
        language: 'zh-CN', //语言
        autoclose: true, //选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-event-clear").datepicker(ops_event_clear);
    $('#input-date-event-clear').datepicker('setDate', new Date());
    //绑定clearDate事件
    $('#input-date-event-clear').datepicker().on('clearDate', function (e) {
        console.log(e);
        $("#tips-clear").html('你清空了日期');
    });


    ////////////////////////////////////////////
    //Bootstrap Datepicker ChangeDate 日期变更事件
    // bootstrap-datepicker changeDate日期变更事件，当用户重新选择一个日期时就会触发changeDate事件，使用场景比如用户选择了日期后需要将该条件立即发送到服务器筛选新的查询结果，这时就需要changeDate事件。
    var ops_event_change = {
        todayHighlight: true, //设置当天日期高亮
        language: 'zh-CN', //设置语言
        autoclose: true, //设置选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-event-change").datepicker(ops_event_change);
    $('#input-date-event-change').datepicker('setDate', new Date());
    //绑定changeDate事件
    $('#input-date-event-change').datepicker().on('changeDate', function (e) {
        console.log(e);
        $("#tips-change").html('你重新选择了日期');
    });


    ////////////////////////////////////////////
    //Bootstrap Datepicker ChangeMonth 月份变更事件
    // bootstrap-datepicker changeMonth月份变更事件,比如之前日期选择的是2020-6-6如果重新选择日期为2020-6-10那么不会触发这个事件，需要选择其他月份的日期才会触发changeMonth事件。
    var ops_month = {
        todayHighlight: true, //设置当天日期高亮
        language: 'zh-CN', //设置语言
        autoclose: true, //设置选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-event-month").datepicker(ops_month);
    $('#input-date-event-month').datepicker('setDate', new Date());
    //绑定changeMonth事件
    $('#input-date-event-month').datepicker().on('changeMonth', function (e) {
        console.log(e);
        $("#tips-month").html('你重新选择了月份');
    });


    ////////////////////////////////////////////
    //Bootstrap Datepicker ChangeYear 选择年份事件
    // bootstrap-datepicker changeYear选择年份事件,注意通过上一步下一步选择不同年份的日期并步会触发这个事件，需要点击头部的月份再切换的年份然后选择年份才会触发事件。
    var ops_year = {
        language: 'zh-CN', //设置语言
        autoclose: true, //设置选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-event-year").datepicker(ops_year);
    $('#input-date-event-year').datepicker('setDate', new Date());
    //绑定changeYear事件
    $('#input-date-event-year').datepicker().on('changeYear', function (e) {
        console.log(e);
        $("#tips-year").html('你重新选择了年份');
    });


    ////////////////////////////////////////////
    //Bootstrap Datepicker ChangeDecade 选择年代事件
    // bootstrap-datepicker changeDecade选择年代事件
    var ops_decade = {
        todayHighlight: true, //设置当天日期高亮
        language: 'zh-CN', //设置语言
        autoclose: true, //设置选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-event-decade").datepicker(ops_decade);
    $('#input-date-event-decade').datepicker('setDate', new Date());
    //绑定changeDecade事件
    $('#input-date-event-decade').datepicker().on('changeDecade', function (e) {
        console.log(e);
        $("#tips-decade").html('触发了事件');
    });


    ////////////////////////////////////////////
    //Bootstrap Datepicker ChangeCentury 事件
    // bootstrap-datepicker changeCentury事件，切换世纪选择时触发的事件。
    var ops_century = {
        language: 'zh-CN', //设置语言
        autoclose: true, //设置选择后自动关闭
        clearBtn: true,//清除按钮
        format: "yyyy-mm-dd",//日期格式
    };
    $("#input-date-event-century").datepicker(ops_century);
    $('#input-date-event-century').datepicker('setDate', new Date());
    //绑定changeCentury事件
    $('#input-date-event-century').datepicker().on('changeCentury', function (e) {
        console.log(e);
        $("#tips-century").html('触发了changeCentury事件');
    });

</script>
</body>
</html>