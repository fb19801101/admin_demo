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
  <title>非LAYUI加载</title>
  <!--先加载jquery-->
  <script src="${pageContext.request.contextPath}/res/js/jquery-3.4.1/jquery-3.4.1.js"></script>
  <!--再加载插件-->
  <script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/excel/excel.js"></script>
  <script>
    function exportTable() {
      // 获取头部和body
      var data = LAY_EXCEL.tableToJson(document.getElementById('LAY-EXPORT-TEST')); // 或者 $('#LAY-EXPORT-TEST')
      // console.log(data)
      var exportData = [];
      exportData.push.apply(exportData, data.head);
      exportData.push.apply(exportData, data.body);
      // console.log(exportData)

      LAY_EXCEL.exportExcel(exportData, '表格导出.xlsx', 'xlsx')
    }
  </script>
</head>
<body>
  <h3>表格导出DEMO以及无layui导出DEMO</h3>
  <button type="button" onclick="exportTable()">点我导出表格</button>
  <p style="color: #f00;">注：表格可编辑</p>
  <table id="LAY-EXPORT-TEST" border>
    <thead>
    <tr><th contenteditable="true">第一列</th><th contenteditable="true">第二列</th><th contenteditable="true">第三列</th></tr>
    </thead>
    <tbody>
    <tr><td contenteditable="true">1</td><td contenteditable="true">2</td><td contenteditable="true">3</td></tr>
    <tr><td contenteditable="true">2</td><td contenteditable="true">2</td><td contenteditable="true">3</td></tr>
    <tr><td contenteditable="true">3</td><td contenteditable="true">2</td><td contenteditable="true">3</td></tr>
    <tr><td contenteditable="true">4</td><td contenteditable="true">2</td><td contenteditable="true">3</td></tr>
    <tr><td contenteditable="true">5</td><td contenteditable="true">2</td><td contenteditable="true">3</td></tr>
    <tr><td contenteditable="true">6</td><td contenteditable="true">2</td><td contenteditable="true">3</td></tr>
    <tr><td contenteditable="true">7</td><td contenteditable="true">2</td><td contenteditable="true">3</td></tr>
    <tr><td contenteditable="true">8</td><td contenteditable="true">2</td><td contenteditable="true">3</td></tr>
    </tbody>
  </table>
</body>
</html>
