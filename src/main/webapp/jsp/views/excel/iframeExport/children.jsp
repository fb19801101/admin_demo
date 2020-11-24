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
  <meta charset="UTF-8">
  <title>子页面</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
</head>
<body>

<div class="layui-container" style="padding-top: 20px;">
  <div class="layui-row">
    <div class="layui-col-md11 layui-col-md-offset1">
      <blockquote class="layui-elem-quote">
        这里是子页面~~~~~~
      </blockquote>
      <div class="layui-form">
        <div class="layui-form-item">
          <div class="layui-form-label">边框操作</div>
          <div class="layui-form-block">
            <button type="button" class="layui-btn layui-btn-primary" onclick="errorExport()">错误的调用</button>
            <button type="button" class="layui-btn layui-btn-primary" onclick="correctExport()">正确的调用</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--错误的做法：子页面加载-->
<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>
<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/excel/excel.js"></script>
<script>
  /**
   * 随意造1w条数据
   * @returns {Array}
   */
  function getExportData() {
    var data = [];
    var template = {
      name: '测试111',
      age: 20,
      sex: '男',
      city: '魔都',
      address: 'XX区XX县XX公路X号',
      comment: '这是一个很长很长很长的备注~'
    };
    for (var i = 0; i < 10000; i++) {
      data.push(template)
    }
    return data
  }
  function errorExport() {
    layui.use(['layer'], function () {
      layui.layer.alert('部分情况下无法弹出下载');
      // 直接调用iframe中的导出函数无法弹出下载
      LAY_EXCEL.exportExcel(getExportData(), 'test.xlsx', 'xlsx')
    });
  }
  function correctExport() {
    layui.use(['layer'], function () {
      layui.layer.alert('正常弹出下载');
      // 直接调用iframe中的导出函数无法弹出下载
      parent.LAY_EXCEL.exportExcel(getExportData(), 'test.xlsx', 'xlsx')
      // 嵌套层级比较多，可以考虑用 top
      // top.LAY_EXCEL.exportExcel([[1, 2, 3]], 'test.xlsx', 'xlsx')
    })
  }
</script>
</body>
</html>
