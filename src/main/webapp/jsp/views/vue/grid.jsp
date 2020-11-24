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
  <title>VUE Ag Grid 表格</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, minimal-ui">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/res/js/ag-grid-24.1.0/ag-grid-community/styles/ag-grid.css">
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/vue-v2.6.12/vue.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/ag-grid-24.1.0/ag-grid-community/ag-grid-community.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/ag-grid-24.1.0/ag-grid-vue/ag-grid-vue.umd.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/ag-grid-24.1.0/ag-grid-enterprise/ag-grid-enterprise.js"></script>
  <style>
      .btn {
          width: 150px;
          margin-bottom: 10px;
          border: solid 1px #ddd;
          padding: 6px;
          text-align: center;
          border-radius: 6px;
          background-color: #eee;
          display: inline-block;
          cursor:pointer;
      }
    </style>
</head>
<body>
  <div id="app">
    <!-- 使用ag-grid-vue组件 其中columnDefs为列，rowData为表格数据 -->
    <ag-grid-vue style="width: 100%; height: 200px;"
        class="table ag-theme-balham"
        :column-defs="columnDefs"
        :row-data="rowData"
        :grid-eady="onGridReady"
        @cell-clicked="onCellClicked"></ag-grid-vue>
  </div>

  <hr>
  <h3>ag-grid vue 全选反选并获取选中数据</h3>
  <div id="app-sel">
    <div @click="allChecked" class="btn">全选</div>
    <div @click="unChecked" class="btn">反选</div>
    <div @click="getRows" class="btn">获取选中数据</div>
    <div @click="delRows" class="btn">删除选中数据</div>
    <!-- 使用ag-grid-vue组件 其中columnDefs为列，rowData为表格数据 -->
    <ag-grid-vue style="width: 100%; height: 200px;"
       class="table ag-theme-balham"
       :column-defs="columnDefs"
       :row-data="rowData"
       @grid-ready="onGridReady" ></ag-grid-vue>
  </div>

  <hr>
  <h3>ag-grid vue 插入数据新增行</h3>
  <div id="app-insert">
    <div @click="add" class="btn">插入数据</div>
    <!-- 使用ag-grid-vue组件 其中columnDefs为列，rowData为表格数据 -->
    <ag-grid-vue style="width: 100%; height: 200px;"
         class="table ag-theme-balham"
         :column-defs="columnDefs"
         :row-data="rowData"
         @grid-ready="onGridReady"></ag-grid-vue>
  </div>

  <hr>
  <h3>ag-grid通过拖动改变ag-grid列宽度和移动列位置</h3>
  <div id="app-drag" style="width: 100%;height: 300px;"  class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid数据刷选器在列头上增加数据搜索功能</h3>
  <div id="app-filter" style="width: 100%;height: 300px;"  class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid两层复合表头</h3>
  <div id="app-multiple" style="width: 100%;height: 300px;"  class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid编辑表格实现可编辑行和单元格</h3>
  <div id="app-edit" style="width: 100%;height: 300px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid onRowClicked行点击事件</h3>
  <div id="app-click-row" style="width: 100%;height: 300px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid onCellClicked单击单元格事件</h3>
  <div id="app-click-cell" style="width: 100%;height: 300px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid onCellDoubleClicked双击单元格事件</h3>
  <div id="app-dblclick-cell" style="width: 100%;height: 300px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid rowGroup行组</h3>
  <div id="app-group" style="width: 100%;height: 200px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid pinnedTopRowData置顶行固定在顶部</h3>
  <input type="button" value=" 新增置顶行 " onclick="func_add_top()" />
  <br><br>
  <div id="app-top" style="width: 100%;height: 300px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid pinnedBottomRowData 把行数据固定在底部</h3>
  <input type="button" value=" 新增固定在底部的行 " onclick="func_add_bottom()" />
  <br><br>
  <div id="app-bottom" style="width: 100%;height: 300px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid删除数据</h3>
  <div style="margin-bottom: 10px;">
    <input type="button" value="删除选中数据" onclick="func_del_rows()" />
    <input type="button" value="删除第1行数据" onclick="func_del_node()" />
  </div>
  <div id="app-del" style="width: 100%;height: 300px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid更新行数据</h3>
  <div style="margin-bottom: 10px;">
    <input type="button" value="更新选中数据" onclick="func_sel_rows()" />
    <input type="button" value="更新第3行数据" onclick="func_sel_node()" />
  </div>
  <div id="app-update" style="width: 100%;height: 200px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid getPinnedBottomRow获取底部合计行对象</h3>
  <div style="margin-bottom: 10px;">
    <input type="button" value="获取底部合计行对象" onclick="func_get_count()" />
  </div>
  <div id="app-sum" style="width: 100%;height: 300px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid设置客户端排序sort</h3>
  <div id="app-sort" style="width: 100%;height: 300px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid单元格焦点相关方法getFocusedCell setFocusedCell</h3>
  <div style="margin-bottom: 10px;">
    <input type="button" value="setFocusedCell" onclick="func_focus_set()" />
    <input type="button" value="getFocusedCell" onclick="func_focus_get()" />
    <input type="button" value="clearFocusedCell" onclick="func_focus_clear()" />
    <input type="button" value="tabToNextCell" onclick="func_focus_next()" />
    <input type="button" value="tabToPreviousCell" onclick="func_focus_prev()" />
  </div>
  <div id="app-focus" style="width: 100%;height: 300px;" class="ag-theme-balham"></div>

  <hr>
  <h3>ag-grid setColumnDefs新增列重新设置列</h3>
  <input type="button" value=" 新增列 " onclick="func_add_field()" />
  <br><br>
  <div id="app-field" style="width: 100%;height: 300px;" class="ag-theme-balham"></div>

<script>
    //注册ag-grid-vue组件
    Vue.component('ag-grid-vue', window["ag-grid-vue"].AgGridVue);


    ////////////////////////////////////////////
    //ag-grid vue umd浏览器直接引入js
    new Vue({
    el: '#app',
    data() {
    return {
    //定义ag-grid列
      columnDefs: [
        { headerName: '名称', field: 'title', checkboxSelection: true },
        { headerName: '网址', field: 'url', width: 200 },
        { headerName: '分类', field: 'catalog' },
        { headerName: 'PR', field: 'pr' }
    ],
    //需要显示的数据
      rowData: [
        { title: '谷歌', url: 'www.google', catalog: '搜索引擎', pr: 10 },
        { title: '微软', url: 'www.microsoft.com', catalog: '操作系', pr: 10 },
        { title: 'ITXST', url: 'www.itxst.com', catalog: '小站', pr: 1 },
        { title: '淘宝', url: 'www.taobao.com', catalog: '电商', pr: 8 }
      ]
    };
    },
    methods: {
    //ag-grid创建完成后执行的事件
    onGridReady(params) {
      console.log(params);
    // 获取gridApi
    this.gridApi = params.api;
      this.columnApi = params.columnApi;
    // 这时就可以通过gridApi调用ag-grid的传统方法了
    this.gridApi.sizeColumnsToFit();
    },
    //单元格点击事件
    onCellClicked(cell) {
      console.log(cell);
    // 获取选中单元格的数据
    console.log(cell.value);
    // 获取选中单元格所在行号
    console.log(cell.rowIndex);
    // 获取选中单元格所在行的数据
    console.log(cell.data);
    }
    }
    });


    ////////////////////////////////////////////
    //ag-grid vue 全选反选并获取选中数据
    new Vue({
        el: '#app-sel',
        data() {
            return {
                //定义ag-grid列
                columnDefs: [
                    { headerName: '名称', field: 'title', checkboxSelection: true },
                    { headerName: '网址', field: 'url', width: 200 },
                    { headerName: '分类', field: 'catalog' },
                    { headerName: 'PR', field: 'pr' }
                ],
                //需要显示的数据
                rowData: [
                    { title: '谷歌', url: 'www.google', catalog: '搜索引擎', pr: 10 },
                    { title: '微软', url: 'www.microsoft.com', catalog: '操作系', pr: 10 },
                    { title: 'ITXST', url: 'www.itxst.com', catalog: '小站', pr: 1 },
                    { title: '淘宝', url: 'www.taobao.com', catalog: '电商', pr: 8 }
                ]
            };
        },
        methods: {
            //ag-grid创建完成后执行的事件
            onGridReady(params) {
                console.log(params);
                // 获取gridApi
                this.gridApi = params.api;
                this.columnApi = params.columnApi;
                // 这时就可以通过gridApi调用ag-grid的传统方法了
                this.gridApi.sizeColumnsToFit();
            },
            //设置全选
            allChecked() {
                this.gridApi.selectAll();
            },
            //设置反选
            unChecked() {
                this.gridApi.deselectAll();
            },
            //获取选中的数据
            getRows() {
                var selRows = this.gridApi.getSelectedRows();
                if (selRows == null || selRows.length <= 0) {
                    alert("您未选中任何数据");
                    return;
                }
                alert(JSON.stringify(selRows));
            },
            //删除选中数据
            delRows() {
                //获取选中的数据
                var selRows = this.gridApi.getSelectedRows();
                if (selRows == null || selRows.length <= 0) {
                    alert("您未选中任何数据");
                    return;
                }
                //注意调用updateRowData方法并不会更新vue的data
                // this.gridApi.updateRowData({remove: selRows});
                //正确的删除方法是这样的
                this.rowData = this.rowData.filter(item => {
                    return selRows.filter(m => m.title === item.title).length <= 0
                });
            }
        }
    });



    ////////////////////////////////////////////
    //ag-grid vue 插入数据新增行
    new Vue({
        el: '#app-insert',
        data() {
            return {
                //定义ag-grid列
                columnDefs: [
                    { headerName: '名称', field: 'title', checkboxSelection: true },
                    { headerName: '网址', field: 'url', width: 200 },
                    { headerName: '分类', field: 'catalog' },
                    { headerName: 'PR', field: 'pr' }
                ],
                //需要显示的数据
                rowData: [
                    { title: '谷歌', url: 'www.google', catalog: '搜索引擎', pr: 10 },
                    { title: '微软', url: 'www.microsoft.com', catalog: '操作系', pr: 10 },
                    { title: 'ITXST', url: 'www.itxst.com', catalog: '小站', pr: 1 },
                    { title: '淘宝', url: 'www.taobao.com', catalog: '电商', pr: 8 }
                ]
            };
        },
        methods: {
            //ag-grid创建完成后执行的事件
            onGridReady(params) {
                console.log(params);
                // 获取gridApi
                this.gridApi = params.api;
                this.columnApi = params.columnApi;
                // 这时就可以通过gridApi调用ag-grid的传统方法了
                this.gridApi.sizeColumnsToFit();
            },
            //插入数据
            add() {
                this.rowData.push({ title: '亚马逊', url: 'www.amazon.com', catalog: '电商', pr: 8 });
            }
        }
    });



    ////////////////////////////////////////////
    //ag-grid通过拖动改变ag-grid列宽度和移动列位置
    //定义表格列
    var columnDefs_drag = [
        { headerName: '姓名', field: 'name','pinned': 'left' },
        { headerName: '性别', field: 'sex' },
        { headerName: '年龄', field: 'age' },
        { headerName: '籍贯', field: 'jg' },
        { headerName: '省份', field: 'sf' },
        { headerName: '地址', field: 'dz' },
    ];

    //与列对应的数据; 属性名对应上面的field
    var data_drag = [
        { name: '张三', sex: '男', age: '100', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路1号' },
        { name: '李四', sex: '女', age: '5', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '女', age: '20', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路31号' },
        { name: '王五', sex: '女', age: '26', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路111号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' }
    ];

    //将列和数据赋给gridOptions
    var gridOptions_drag = {
        columnDefs: columnDefs_drag,
        rowData: data_drag,
        onGridReady: function () {
            //表格创建完成后执行的事件
            gridOptions_drag.api.sizeColumnsToFit();//调整表格大小自适应
        },
        defaultColDef: {
            editable: true,//单元表格是否可编辑
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true, //开启排序
            resizable: true,//是否可以调整列大小，就是拖动改变列大小
            filter: true  //开启刷选
        },
        pagination: true,  //开启分页（前端分页）
        paginationAutoPageSize: true, //根据网页高度自动分页（前端分页）

    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-drag');
        new agGrid.Grid(eGridDiv, gridOptions_drag);
    });



    ////////////////////////////////////////////
    //ag-grid数据刷选器在列头上增加数据搜索功能
    //定义表格列
    var columnDefs_filter = [
        { headerName: '姓名', field: 'name','pinned': 'left', filter: 'agTextColumnFilter'
        },
        { headerName: '性别', field: 'sex' },
        { headerName: '年龄', field: 'age' , filter: 'agNumberColumnFilter'},
        { headerName: '生日', field: 'sr', filter: 'agNumberColumnFilter' }
    ];

    //与列对应的数据; 属性名对应上面的field
    data_filter = [
        { name: '张三', sex: '男', age: 100, 'sr':1918 },
        { name: '李四', sex: '女', age: 5, 'sr':2000 },
        { name: '王五', sex: '女', age: 20, 'sr':2018 },
        { name: '王五', sex: '女', age: 26, 'sr':2018 },
        { name: '王五', sex: '男', age: 5, 'sr':2018 },
        { name: '王五', sex: '男', age: 35, 'sr':2018 },
        { name: '王五', sex: '男', age: 35, 'sr':2018 },
        { name: '王五', sex: '男', age: 3, 'sr':2018 },
        { name: '王五', sex: '男', age: 35, 'sr':2018 },
        { name: '王五', sex: '男', age: 35, 'sr':2018 },
        { name: '王五', sex: '男', age: 35, 'sr':2018 },
        { name: '王五', sex: '男', age: 35, 'sr':2018 },
        { name: '王五', sex: '男', age: 3, 'sr':2018 },
        { name: '王五', sex: '男', age: 35, 'sr':2018 },
        { name: '王五', sex: '男', age: 35, 'sr':2018 }
    ];

    //将列和数据赋给gridOptions
    gridOptions_filter = {
        floatingFilter: true, /***********这里！！！****************/
        columnDefs: columnDefs_filter,
        rowData: data_filter,
        onGridReady: function () {
            //表格创建完成后执行的事件
            gridOptions_filter.api.sizeColumnsToFit();//调整表格大小自适应
        },
        defaultColDef: {
            resizable: true,//是否可以调整列大小，就是拖动改变列大小
            filter: false  //开启刷选
        },
        pagination: true,  //开启分页（前端分页）
        paginationAutoPageSize: true, //根据网页高度自动分页（前端分页）

    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-filter');
        new agGrid.Grid(eGridDiv, gridOptions_filter);
    });



    ////////////////////////////////////////////
    //ag-grid两层复合表头
    //定义多表头的列
    var columnDefs_multiple = [
        { headerName: '分组A' ,
            children: [
                { headerName: '姓名', field: 'name','pinned': 'left'},
                { headerName: '性别', field: 'sex' ,'pinned': 'left'}
            ]
        },
        { headerName: '分组B',
            children: [
                { headerName: '年龄', field: 'age' },
                { headerName: '籍贯', field: 'jg' },
                { headerName: '省份', field: 'sf' },
                { headerName: '地址', field: 'dz' }
            ]
        }
    ];

    //与列对应的数据; 属性名对应上面的field
    var data_multiple = [
        { name: '张三', sex: '男', age: '100', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路1号' },
        { name: '李四', sex: '女', age: '5', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '女', age: '20', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路31号' },
        { name: '王五', sex: '女', age: '26', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路111号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' }
    ];

    //将列和数据赋给gridOptions
    var gridOptions_multiple = {
        columnDefs: columnDefs_multiple,
        rowData: data_multiple,
        onGridReady: function () {
            //表格创建完成后执行的事件
            gridOptions_multiple.api.sizeColumnsToFit();//调整表格大小自适应
        },
        defaultColDef: {
            editable: true,//单元表格是否可编辑
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true, //开启排序
            resizable: true,//是否可以调整列大小，就是拖动改变列大小
            filter: true  //开启刷选
        },
        pagination: true,  //开启分页（前端分页）
        paginationAutoPageSize: true, //根据网页高度自动分页（前端分页）

    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-multiple');
        new agGrid.Grid(eGridDiv, gridOptions_multiple);
    });



    ////////////////////////////////////////////
    //ag-grid编辑表格实现可编辑行和单元格
    //定义表格列
    var columnDefs_edit = [
        { headerName: '姓名', field: 'name' },
        {
            headerName: '性别', field: 'sex',
            cellEditor: "agSelectCellEditor",
            cellEditorParams: { values: ["男", "女"] }
        },
        {
            headerName: '年龄', field: 'age'
        },
        { headerName: '籍贯', field: 'jg' },
        {
            headerName: '省份', field: 'sf'
        },
        {
            headerName: '地址', field: 'dz',
            cellEditor: 'agLargeTextCellEditor',
            cellEditorParams: {
                maxLength: '300',
                cols: '50',
                rows: '6'
            }
        },
    ];

    //与列对应的数据; 属性名对应上面的field
    var data_edit = [
        { name: '张三', sex: '男', age: '100', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路1号' },
        { name: '李四', sex: '女', age: '5', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '王五', sex: '女', age: '20', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路31号' },
        { name: '王五', sex: '女', age: '26', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路111号' },
        { name: '王五', sex: '男', age: '35', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' }
    ];

    //将列和数据赋给gridOptions
    var gridOptions_edit = {
        columnDefs: columnDefs_edit,
        rowData: data_edit,
        //editType:"fullRow",
        onCellEditingStopped: function (event) {
            var itxst = JSON.stringify(event.data);
            alert(itxst);
        },
        onGridReady: function () {
            //表格创建完成后执行的事件
            gridOptions_edit.api.sizeColumnsToFit();//调整表格大小自适应
        },
        defaultColDef: {
            editable: true,//单元表格是否可编辑
        }

    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-edit');
        new agGrid.Grid(eGridDiv, gridOptions_edit);
    });



    ////////////////////////////////////////////
    //ag-grid onRowClicked行点击事件
    //定义列
    var colData_row = [
        { headerName: '名称', field: 'name', 'pinned': 'left' },
        { headerName: '编号', field: 'col2' },
        { headerName: '销量', field: 'col3' },
    ];

    //行数据
    var rowData_row = [];

    //模拟数据
    for (var i = 1; i < 10; i++) {
        rowData_row.push({ name: '行-' + i, col2: 612 * i, col3: 321 * i });
    }

    //将列和数据赋给gridOptions
    var gridOptions_row = {
        columnDefs: colData_row,
        rowData: rowData_row,
        enableCellChangeFlash: true,
        //行内点击触发事件
        onRowClicked: function(event) {
            //event.data 选中的行内数据，event.event 为鼠标事件，等其他。可以log自己看一下
            console.log('a row was clicked', event);
            var itxst = JSON.stringify(event.data);
            alert(itxst);
        },
        onGridReady: function () {
            gridOptions_row.api.sizeColumnsToFit();
        },
        defaultColDef: {
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true,
        }
    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-click-row');
        new agGrid.Grid(eGridDiv, gridOptions_row);
    });



    ////////////////////////////////////////////
    //ag-grid onCellClicked单击单元格事件
    //定义列
    var colData_cell = [
        { headerName: '名称', field: 'name', 'pinned': 'left' },
        { headerName: '编号', field: 'col2' },
        { headerName: '销量', field: 'col3' },
    ];

    //行数据
    var rowData_cell = [];

    //模拟数据
    for (var i = 1; i < 10; i++) {
        rowData_cell.push({ name: '行X-' + i, col2: 123* i, col3: 22* i });
    }

    //将列和数据赋给gridOptions
    var gridOptions_cell = {
        columnDefs: colData_cell,
        rowData: rowData_cell,
        enableCellChangeFlash: true,
        //单元格单击事件
        onCellClicked: function(event) {
            //event.data 选中的行内数据，event.event 为鼠标事件，等其他。可以log自己看一下
            console.log('a row was clicked', event);
            var itxst = JSON.stringify(event.data);
            alert(itxst);
        },
        onGridReady: function () {
            gridOptions_cell.api.sizeColumnsToFit();
        },
        defaultColDef: {
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true,
        }
    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-click-cell');
        new agGrid.Grid(eGridDiv, gridOptions_cell);
    });



    ////////////////////////////////////////////
    //ag-grid onCellDoubleClicked双击单元格事件
    //定义列
    var colData_dbl = [
        { headerName: '名称', field: 'name', 'pinned': 'left' },
        { headerName: '剩余', field: 'col2' },
        { headerName: '销量', field: 'col3' },
    ];

    //行数据
    var rowData_dbl = [];
    //模拟数据
    for (var i = 1; i < 10; i++) {
        rowData_dbl.push({ name: 'PX-' + i, col2: 123 * i, col3: 22 * i });
    }

    //将列和数据赋给gridOptions
    var gridOptions_dbl = {
        columnDefs: colData_dbl,
        rowData: rowData_dbl,
        enableCellChangeFlash: true,
        //单元格双击触发事件
        onCellDoubleClicked : function (event) {
            //event.data 选中的行内数据，event.event 为鼠标事件，等其他。可以log自己看一下
            console.log('a row was clicked', event);
            var itxst = JSON.stringify(event.data);
            alert(itxst);
        },
        onGridReady: function () {
            gridOptions_dbl.api.sizeColumnsToFit();
        },
        defaultColDef: {
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true,
        }
    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-dblclick-cell');
        new agGrid.Grid(eGridDiv, gridOptions_dbl);
    });



    ////////////////////////////////////////////
    //ag-grid rowGroup行组
    //定义列
    var colData_group = [
        { headerName: '名称', field: 'cl1', 'pinned': 'left',rowGroup:true ,hide:true},
        { headerName: '库存', field: 'cl2' },
        { headerName: '销量', field: 'cl3' },
    ];

    //行数据
    var rowData_group = [
        { cl1: 'itxst.com', cl2: 20101, cl3: 23123 },
        { cl1: 'A', cl2: 20101, cl3: 23123 },
        { cl1: 'A', cl2: 20101, cl3: 23123 },
        { cl1: 'B', cl2: 20101, cl3: 23123 },
        { cl1: 'B', cl2: 20101, cl3: 23123 },
    ];

    //多模拟几行数据出来
    for (var i = 1; i < 5; i++) {
        rowData_group.push({ cl1: 'YKK11', cl2: 332 * i, cl3: 562 * i });
    }

    //将列和数据赋给gridOptions
    var gridOptions_group = {
        columnDefs: colData_group,
        rowData: rowData_group,
        onGridReady: function () {
            gridOptions_group.api.sizeColumnsToFit();
        },
        defaultColDef: {
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true,
        }
    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-group');
        new agGrid.Grid(eGridDiv, gridOptions_group);
    });

    //遍历行对象
    function func_row_list() {
        gridOptions_group.api.forEachNode(function (node, index) {
            var x = JSON.stringify(node.data);
            alert(x);
        });
    }



    ////////////////////////////////////////////
    //ag-grid pinnedTopRowData置顶行固定在顶部
    //定义表格列
    var columnDefs_top = [
        { headerName: '姓名', field: 'name', 'pinned': 'left' },
        { headerName: '性别', field: 'sex' },
        { headerName: '年龄', field: 'age' },
    ];

    //与列对应的数据; 属性名对应上面的field
    var rowData_top = [
        { name: 'itxst.com', sex: '男', age: '100', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路1号' },
        { name: '李四', sex: '女', age: '5', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市文一西路' },
        { name: '王五', sex: '女', age: '20', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路31号' }
    ];

    //模拟几行数据出来
    for (var i = 1; i < 20; i++) {
        rowData_top.push({ name: '王五', sex: '女', age: 10 + i, 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路' + i + '号' });
    }

    var pinnedTopRowData = [
        { name: '置顶行1', sex: 'X', age: '15', 'jg': '中国', 'sf': '顶部1', 'dz': '杭州市文一西路' },
        { name: '置顶行2', sex: 'X', age: '15', 'jg': '中国', 'sf': '顶部2', 'dz': '杭州市文一西路' }
    ];
    //将列和数据赋给gridOptions
    var gridOptions_top = {
        columnDefs: columnDefs_top,
        rowData: rowData_top,
        pinnedTopRowData: pinnedTopRowData,
        getRowStyle: function (params) {
            if (params.node.rowPinned) {
                return { 'font-weight': 'bold', 'color': 'red' };
            }
        },
        onGridReady: function () {
            //表格创建完成后执行的事件
            gridOptions_top.api.sizeColumnsToFit();//调整表格大小自适应
        },
        defaultColDef: {
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true, //开启排序
        },

    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-top');
        new agGrid.Grid(eGridDiv, gridOptions_top);
    });

    function func_add_top()
    {
        var newRows=[
            { name: '置顶行11111 new', sex: 'X', age: '15', 'jg': '中国', 'sf': '顶部1', 'dz': '杭州市文一西路' },
            { name: '置顶行22222 new', sex: 'X', age: '15', 'jg': '中国', 'sf': '顶部2', 'dz': '杭州市文一西路' }
        ] ;
        gridOptions_top.api.setPinnedTopRowData(newRows);
    }



    ////////////////////////////////////////////
    //ag-grid pinnedBottomRowData 把行数据固定在底部
    //定义表格列
    var columnDefs_bottom = [
        { headerName: '姓名', field: 'name', 'pinned': 'left' },
        { headerName: '性别', field: 'sex' },
        { headerName: '年龄', field: 'age' },
    ];

    //与列对应的数据; 属性名对应上面的field
    var rowData_bottom = [
        { name: 'itxst.com', sex: '男', age: '100', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路1号' },
        { name: '李四', sex: '女', age: '5', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市文一西路' },
        { name: '王五', sex: '女', age: '20', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路31号' }
    ];

    //模拟几行数据出来
    for (var i = 1; i < 20; i++) {
        rowData_bottom.push({ name: '王五', sex: '女', age: 10 + i, 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路' + i + '号' });
    }

    var pinnedBottomRowData = [
        { name: '置顶行1', sex: 'X', age: '15', 'jg': '中国', 'sf': '顶部1', 'dz': '杭州市文一西路' },
        { name: '置顶行2', sex: 'X', age: '15', 'jg': '中国', 'sf': '顶部2', 'dz': '杭州市文一西路' }
    ];
    //将列和数据赋给gridOptions
    var gridOptions_bottom = {
        columnDefs: columnDefs_bottom,
        rowData: rowData_bottom,
        pinnedBottomRowData: pinnedBottomRowData,
        getRowStyle: function (params) {
            if (params.node.rowPinned) {
                return { 'font-weight': 'bold', 'color': 'red' };
            }
        },
        onGridReady: function () {
            //表格创建完成后执行的事件
            gridOptions_bottom.api.sizeColumnsToFit();//调整表格大小自适应
        },
        defaultColDef: {
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true, //开启排序
        },

    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-bottom');
        new agGrid.Grid(eGridDiv, gridOptions_bottom);
    });

    function func_add_bottom() {
        var newRows = [
            { name: '置顶行11111 new', sex: 'X', age: '15', 'jg': '中国', 'sf': '顶部1', 'dz': '杭州市文一西路' },
            { name: '置顶行22222 new', sex: 'X', age: '15', 'jg': '中国', 'sf': '顶部2', 'dz': '杭州市文一西路' }
        ];
        gridOptions_bottom.api.setPinnedBottomRowData(newRows);
    }



    ////////////////////////////////////////////
    //ag-grid删除数据
    //定义列
    var columnDefs_del = [
        { headerName: '', checkboxSelection: true, headerCheckboxSelection: true, width: 50, 'pinned': 'left' },
        { headerName: '网站名称', field: 'name', 'pinned': 'left', width: 100, colId: 'name' },
        { headerName: '网址', field: 'url' },
        { headerName: '行业', field: 'catalog' }
    ];

    //表格数据
    var rowData_del = [
        { id: 'a', name: '网易', url: 'www.163.com', catalog: '门户' },
        { id: 'b', name: 'QQ', url: 'www.qq.com', catalog: 'IM' },
        { id: 'c', name: '微软', url: 'www.microsoft.com', catalog: '软件' }
    ];

    //aggrid设置
    var gridOptions_del = {
        columnDefs: columnDefs_del,
        rowData: rowData_del,
        rowSelection: 'multiple',
        rowMultiSelectWithClick: true,
        suppressCellSelection: true
    };

    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-del');
        new agGrid.Grid(eGridDiv, gridOptions_del);
    });
    //获取选中数据
    function func_del_rows() {

        var selRows = gridOptions_del.api.getSelectedRows(); //获取选中的行
        if (selRows.length <= 0) {
            alert("请选中一行数据");
            return;
        }
        gridOptions_del.api.updateRowData({ remove: selRows });

    }
    function func_del_node() {
        gridOptions_del.rowData.splice(0, 1);//删除第一行数据
        gridOptions_del.api.setRowData(gridOptions_del.rowData);
    }



    ////////////////////////////////////////////
    //ag-grid更新行数据
    //定义列
    var columnDefs_update = [
        { headerName: '', checkboxSelection: true, headerCheckboxSelection: true, width: 50, 'pinned': 'left' },
        { headerName: '网站名称', field: 'name', 'pinned': 'left', width: 100, colId: 'name' },
        { headerName: '网址', field: 'url' },
        { headerName: '行业', field: 'catalog' }
    ];

    //表格数据
    var rowData_update = [
        { id: 'a', name: '网易', url: 'www.163.com', catalog: '门户' },
        { id: 'b', name: 'QQ', url: 'www.qq.com', catalog: 'IM' },
        { id: 'c', name: '微软', url: 'www.microsoft.com', catalog: '软件' }
    ];

    //aggrid设置
    var gridOptions_update = {
        columnDefs: columnDefs_update,
        rowData: rowData_update,
        rowSelection: 'multiple',
        rowMultiSelectWithClick: true,
        suppressCellSelection: true
    };

    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-update');
        new agGrid.Grid(eGridDiv, gridOptions_update);
    });
    //获取选中数据
    function func_sel_rows() {
        var selRow = gridOptions_update.api.getSelectedRows(); //获取选中的行
        if (selRow.length <= 0) {
            alert("请选中一行数据");
            return;
        }

        selRow[0].name = '11111'; //更新选中数据的第一行
        gridOptions_update.api.updateRowData({ update: selRow });

    }
    function func_sel_node() {
        var rowNode = gridOptions_update.api.getRowNode(2);
        var newRow = {
            id: '66',
            name: 'it小书童',
            url: 'itxst.com',
            catalog: Math.floor(Math.random() * 100000)
        };
        rowNode.setData(newRow);
    }



    ////////////////////////////////////////////
    //ag-grid getPinnedBottomRow获取底部合计行对象
    //定义表格列
    var columnDefs_sum = [
        { headerName: '名称', field: 'name', 'pinned': 'left' },
        { headerName: 'PV', field: 'pv' },
        { headerName: 'IP', field: 'ip' },
    ];

    //行数据
    var rowData_sum = [
        { name: 'itxst.com', pv: 100, ip: 10 }
    ];

    //多模拟几行数据出来
    for (var i = 1; i < 20; i++) {
        rowData_sum.push({ name: 'NO11-' + i, pv: 100 * i, ip: 222 * i });
    }

    //将列和数据赋给gridOptions
    var gridOptions_sum = {
        columnDefs: columnDefs_sum,
        rowData: rowData_sum,
        getRowStyle: function (params) {
            //********************置顶行样式设置*********************
            if (params.node.rowPinned) {
                return { 'font-weight': 'bold', 'color': 'red' };
            }
        },
        onGridReady: function () {
            //表格创建完成后执行的事件 调整表格大小自适应
            gridOptions_sum.api.sizeColumnsToFit();
            func_count();
        },
        defaultColDef: {
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true, //开启排序
        },
        pagination: true,  //开启分页（前端分页）
        paginationAutoPageSize: true, //根据网页高度自动分页（前端分页）
    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-sum');
        new agGrid.Grid(eGridDiv, gridOptions_sum);
    });
    //********************设置置顶并统计每行的汇总数据*********************
    function func_count() {
        var pvCount = 0;
        var ipCount = 0;
        for (var i = 0; i < rowData_sum.length; i++) {
            pvCount = pvCount + rowData_sum[i].pv;
            ipCount = ipCount + rowData_sum[i].ip;
        }

        var bottomRows = [
            { name: '合计', pv: pvCount, ip: ipCount }
        ];
        gridOptions_sum.api.setPinnedBottomRowData(bottomRows);
    }

    //获取底部合计行对象
    function func_get_count() {
        var topRow=gridOptions_sum.api.getPinnedBottomRow(0);
        var x=JSON.stringify(topRow.data);
        alert(x);
    }



    ////////////////////////////////////////////
    //ag-grid设置客户端排序sort
    //定义表格列
    var columnDefs_sort = [
        { headerName: '姓名', field: 'name', },
        { headerName: '生日', field: 'date', comparator: dateComparator },//自定义排序
        { headerName: '性别', field: 'sex', sortable: false },//sortable为false时禁止排序
        { headerName: '年龄', field: 'age', sort: 'desc' } //年龄按大到小排序
    ];

    //行数据
    var rowData_sort = [
        { name: 'itxst.com', sex: '男', age: 100, 'date': '29/08/2005' },
        { name: '李四', sex: '女', age: 5, 'date': '29/08/2005' },
        { name: '王五', sex: '女', age: 6, 'date': '29/08/2001' }
    ];

    //模拟几行数据出来
    for (var i = 1; i < 20; i++) {
        rowData_sort.push({ name: '王五', sex: '女', age: 10 + i, 'date': '29/08/200' + (i % 10) });
    }

    var pinnedBottomRowData_sort = [

        { name: '置顶行2', sex: 'X', age: 111, 'date': '29/08/2011' }
    ];
    //将列和数据赋给gridOptions
    var gridOptions_sort = {
        columnDefs: columnDefs_sort,
        rowData: rowData_sort,
        pinnedBottomRowData: pinnedBottomRowData_sort,
        getRowStyle: function (params) {
            if (params.node.rowPinned) {
                return { 'font-weight': 'bold', 'color': 'red' };
            }
        },
        onGridReady: function () {
            //表格创建完成后执行的事件
            gridOptions_sort.api.sizeColumnsToFit();//调整表格大小自适应
        },
        defaultColDef: {
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true, //开启排序
        },

    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-sort');
        new agGrid.Grid(eGridDiv, gridOptions_sort);
    });

    function dateComparator(date1, date2) {
        var date1Number = monthToComparableNumber(date1);
        var date2Number = monthToComparableNumber(date2);

        if (date1Number === null && date2Number === null) {
            return 0;
        }
        if (date1Number === null) {
            return -1;
        }
        if (date2Number === null) {
            return 1;
        }

        return date1Number - date2Number;
    }

    // eg 29/08/2004 gets converted to 20040829
    function monthToComparableNumber(date) {
        if (date === undefined || date === null || date.length !== 10) {
            return null;
        }

        var yearNumber = date.substring(6, 10);
        var monthNumber = date.substring(3, 5);
        var dayNumber = date.substring(0, 2);

        var result = (yearNumber * 10000) + (monthNumber * 100) + dayNumber;
        return result;
    }



    ////////////////////////////////////////////
    //ag-grid单元格焦点相关方法getFocusedCell setFocusedCell
    //定义列
    var colData_focus = [
        { headerName: '名称', field: 'name', 'pinned': 'left' },
        { headerName: '剩余', field: 'col2' },
        { headerName: '销量', field: 'col3' },
    ];

    //行数据
    var rowData_focus = [];

    //模拟数据
    for (var i = 1; i < 10; i++) {
        rowData_focus.push({ name: 'YO-' + i, col2: 612 * i, col3: 321 * i });
    }

    //将列和数据赋给gridOptions
    var gridOptions_focus = {
        columnDefs: colData_focus,
        rowData: rowData_focus,
        enableCellChangeFlash: true,
        onGridReady: function () {
            gridOptions_focus.api.sizeColumnsToFit();
        },
        defaultColDef: {
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true,
        }
    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-focus');
        new agGrid.Grid(eGridDiv, gridOptions_focus);
    });

    function func_focus_set() {
        var cell=gridOptions_focus.api.getFocusedCell();
    }

    function func_focus_get() {
        var cell=gridOptions_focus.api.setFocusedCell(3,'name',null);
    }
    function func_focus_clear() {
        var cell=gridOptions_focus.api.clearFocusedCell();
    }
    function func_focus_next() {
        var cell=gridOptions_focus.api.tabToNextCell();
    }
    function func_focus_prev() {
        var cell=gridOptions_focus.api.tabToPreviousCell();
    }


    ////////////////////////////////////////////
    //ag-grid setColumnDefs新增列重新设置列
    //定义表格列
    var columnDefs_field = [
        { headerName: '姓名', field: 'name' },
        { headerName: '性别', field: 'sex' },
        { headerName: '年龄', field: 'age' },
    ];


    //与列对应的数据; 属性名对应上面的field
    var data_field = [
        { name: 'itxst.com', sex: '男', age: '100', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路1号' },
        { name: '李四', sex: '女', age: '15', 'jg': '中国', 'sf': '江苏', 'dz': '苏州市寒山寺' },
        { name: '张三', sex: '男', age: '22', 'jg': '中国', 'sf': '山东', 'dz': '青岛市' },
        { name: '张三', sex: '女', age: '16', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路111号' },
        { name: '张三', sex: '女', age: '32', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: '张三', sex: '男', age: '37', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' },
        { name: 'bill', sex: '男', age: '31', 'jg': '中国', 'sf': '浙江', 'dz': '杭州市古墩路12号' }
    ];

    //将列和数据赋给gridOptions
    var gridOptions_field = {
        columnDefs: columnDefs_field,
        rowData: data_field,
        onGridReady: function () {
            //表格创建完成后执行的事件
            gridOptions_field.api.sizeColumnsToFit();//调整表格大小自适应
        },
        defaultColDef: {
            editable: true,//单元表格是否可编辑
            enableRowGroup: true,
            enablePivot: true,
            enableValue: true,
            sortable: true, //开启排序
            resizable: true,//是否可以调整列大小，就是拖动改变列大小
            filter: true  //开启刷选
        },
        pagination: true,  //开启分页（前端分页）
        paginationAutoPageSize: true, //根据网页高度自动分页（前端分页）

    };
    //在dom加载完成后 初始化agGrid完成
    document.addEventListener("DOMContentLoaded", function () {
        var eGridDiv = document.querySelector('#app-field');
        new agGrid.Grid(eGridDiv, gridOptions_field);
    });

    function func_add_field() {
        columnDefs_field.push({ headerName: '地址', field: 'dz' });
        gridOptions_field.api.setColumnDefs(columnDefs_field);
        //调整表格大小自适应
        gridOptions_field.api.sizeColumnsToFit();
    }
</script>
</body>
</html>