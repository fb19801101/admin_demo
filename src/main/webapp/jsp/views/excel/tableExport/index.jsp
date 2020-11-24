<%--
  Created by IntelliJ IDEA.
  User:    Administrator
  author:  信息化管理部-方波
  site:    http://www.cr121.com/
  company: 中铁十二局集团第一工程有限公司
  Date:    2020/3/4
  Time:    11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<title>导出表格数据的DEMO</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
		<style>
			body {
            margin: 10px;
        }

        .layui-table-tool-temp {
			padding-right: 0;
			margin-right: 0;
			/*text-align: right;*/
		}

		.yutons,
		.layui-btn-sm {
			margin-top: -2px;
		}

		/* 修改头部工具右侧筛选、导出、打印样式 */
		.yutons-header-tool {
			margin-top: -2px;
			width: 30px !important;
			height: 30px !important;
			background-color: #ffffff;
		}

		/* 修改右侧筛选、导出、打印出发的ul标签定位 */
		.layui-table-tool-panel {
			left: auto;
			right: -1px;
		}

		/* div 右侧10px */
		.yutons-btn-margin-right {
			margin-right: 10px;
			line-height: 40px;
		}
    </style>
	</head>
	<body>
		<blockquote class="layui-elem-quote">
			鉴于layui自带的导出功能不是很完善，存在问题如下：</br>
			问题1：导出长数字，后几位强制变成0；</br>
			问题2：时间日期格式导出默认为时间或日期，无法显示完整的日期+时分秒格式</br>
			问题3：文本内容中包含','(小写逗号)时，导出excel默认将字符串以逗号拆分成多个excel表格</br>
			问题4：如果在table渲染时您采用了模板引擎对数据进行了二次渲染，对不起，layui提供的excel导出无法获取到您渲染后的数据（此测试页面未对该问题进行还原，请自行测试）</br>
			问题详情请参照当前页面layui自带导出工具导出查询</br>
			解决方案如下：</br>
			1、点击左侧导出按钮导出，解析当前table可视范围内数据以字符串格式输出，默认调用excel.exportExcel方法</br>
			2、重写头部工具栏，避免修改table源码，触发导出</br>
			3、支持根据筛选导出内容数据</br>
			4、修改因部分表格数据不存在data-field字段值的情况下无法正常导出的bug<br/>
			5、修复IE不识别Array.from的问题，兼容IE<br/>
			存在问题：1、暂时未对复杂表头进行测试；2、暂时未对自定义样式进行测试
		</blockquote>
		<table class="layui-hide" id="demo" lay-filter="test"></table>
		<script type="text/html" id="toolbarDemo">
			<div class="layui-row">
        <div class="layui-col-md2 layui-col-sm3 layui-col-xs6" style="text-align: left;padding-left: 10px;">
            <div class="layui-input-inline yutons-btn-margin-right">
               <span class="layui-btn yutons layui-btn-sm yutons-color-detail" lay-event="table_export">导出</span>
            </div>
        </div>
        <div class="layui-col-md10 layui-col-sm9 layui-col-xs6" style="text-align: right;">
					<div class="layui-input-inline yutons-btn-margin-right">
							<span class="layui-btn yutons layui-btn-sm yutons-color-detail" lay-event="YutonsCallCenterWorkOrderSearch"
										id="YutonsCallCenterWorkOrderSearch">查询</span>
					</div>
					<div class="layui-input-inline yutons-btn-margin-right" style="margin-right: 0px;">
						<span class="layui-inline yutons-header-tool" title="筛选列" lay-event="LAYTABLE_COLS">
									<i class="layui-icon layui-icon-cols"></i></span>
										<span class="layui-inline yutons-header-tool" title="导出" lay-event="table_export">
																<i class="layui-icon layui-icon-export"></i></span>
						<span class="layui-inline yutons-header-tool" title="导出" lay-event="LAYTABLE_EXPORT">
																<i class="layui-icon layui-icon-export"></i></span>
						<span class="layui-inline yutons-header-tool" title="打印" lay-event="LAYTABLE_PRINT">
									<i class="layui-icon layui-icon-print"></i>
						</span>
					</div>
				</div>
			</div>
		</script>

		<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>

		<script>
			layui.config({
				base: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/'
			}).extend({
				excel: 'excel/excel'
			}).use(['table', 'excel', 'jquery'], function() {
				var table = layui.table //表格
					,excel = layui.excel
					,$ = layui.$;


				//执行一个 table 实例
				table.render({
					elem: '#demo',
					height: 420,
					url: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/excel/demo/json/data.json', //数据接口
					title: '用户表',
					page: true, //开启分页
					toolbar: '#toolbarDemo', //操作1:启用自定义模板表格头部工具栏
					defaultToolbar: [], //操作2:隐藏头部工具栏右侧的图标
					cols: [
						[ //表头
							{
								type: 'checkbox',
								fixed: 'left'
							}, {
								field: 'id',
								title: 'ID',
								width: 200,
								sort: true
							}, {
								field: 'username',
								title: '用户名',
								width: 100
							}, {
								field: 'city',
								title: '城市',
								width: 100
							}, {
								field: 'birth',
								title: '生日',
								width: 120,
								sort: true,
								totalRow: true
							}, {
								field: 'createTime',
								title: '创建日期',
								width: 180
							}, {
								field: 'remark',
								title: '备注',
								width: 300
							}
						]
					]
				});

				//监听头工具栏事件
				table.on('toolbar(test)', function(obj) {
					var checkStatus = table.checkStatus(obj.config.id),
						data = checkStatus.data; //获取选中的数据
					switch (obj.event) {
						case 'table_export':
							exportFile('demo');
							break;
					}
				});
	
				/**
				 * by yutons
				 * Array.from() 非常方便的将一个类数组的集合 ==》 数组，直接使用数组身上的方法。例如：常用的map，foreach… 
				 * 但是，问题来了，IE不识别Array.from这个方法。所以写了它兼容IE的写法。
				 */
				if (!Array.from) {
					Array.from = function(el) {
						return Array.apply(this, el);
					}
				}
				//表格导出
				function exportFile(id) {
					//根据传入tableID获取表头
					var headers = $("div[lay-id=" + id + "] .layui-table-box table").get(0);
					var htrs = Array.from(headers.querySelectorAll('tr'));
					var titles = {};
					for (var j = 0; j < htrs.length; j++) {
						var hths = Array.from(htrs[j].querySelectorAll("th"));
						for (var i = 0; i < hths.length; i++) {
							var clazz = hths[i].getAttributeNode('class').value;
							if (clazz != ' layui-table-col-special' && clazz != 'layui-hide') {
								//排除居左、具有、隐藏字段
								//修改:默认字段data-field+i,兼容部分数据表格中不存在data-field值的问题
								titles['data-field' + i] = hths[i].innerText;
							}
						}
					}
					//根据传入tableID获取table内容
					var bodys = $("div[lay-id=" + id + "] .layui-table-box table").get(1);
					var btrs = Array.from(bodys.querySelectorAll("tr"));
					var bodysArr = [];
					for (var j = 0; j < btrs.length; j++) {
						var contents = {};
						var btds = Array.from(btrs[j].querySelectorAll("td"));
						for (var i = 0; i < btds.length; i++) {
							for (var key in titles) {
								//修改:默认字段data-field+i,兼容部分数据表格中不存在data-field值的问题
								var field = 'data-field' + i;
								if (field === key) {
									//根据表头字段获取table内容字段
									contents[field] = btds[i].innerText;
								}
							}
						}
						bodysArr.push(contents)
					}
					//将标题行置顶添加到数组
					bodysArr.unshift(titles);
					//导出excel
					excel.exportExcel({
						sheet1: bodysArr
					}, '用户表' + new Date().toLocaleString() + '.xlsx', 'xlsx');
				}
			});
		</script>
	</body>
</html>
