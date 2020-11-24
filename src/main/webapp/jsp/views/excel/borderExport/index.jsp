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
  <title>边框导出</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
</head>
<body>
<div class="layui-container">
  <div class="layui-row">
    <div class="layui-col-md11 layui-col-md-offset1">
      <fieldset class="layui-elem-field layui-field-title">
        <legend>带边框导出演示demo</legend>
      </fieldset>
      <blockquote class="layui-elem-quote">
        边框属于单元格样式，具体单元格样式文档点击这里(→_→)：<a
        href="https://github.com/wangerzi/layui-excel#%E6%A0%B7%E5%BC%8F%E8%AE%BE%E7%BD%AE%E4%B8%93%E5%8C%BA">样式专区</a>
        <br>
        <br>
        <b>注意：</b>合并/范围单元格的边框，需要设置所有左侧单元格的左边框 + 所有顶部单元格的上边框 + 所有右侧单元格的右边框 + 所有底部单元格的下边框
      </blockquote>
      <div class="layui-form">
        <div class="layui-form-item">
          <div class="layui-form-label">边框操作</div>
          <div class="layui-form-block">
            <button type="button" class="layui-btn layui-btn-primary" onclick="exportCellSingle()">独立单元格加边框</button>
            <button type="button" class="layui-btn layui-btn-primary" onclick="exportMergeCell()">范围单元格加边框</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--PS::方便起见，直接引入JS文件通过全局变量的方式调用-->
<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>
<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/excel/excel.js"></script>
<script>
  /**
   * 导出非合并单元格边框的样例
   */
  function exportCellSingle() {
    layui.use(['layer'], function () {
      $.ajax({
        url: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/excel/demo/json/list.json',
        success: function (res) {
          var list = res.data;
          // 1. 按照文档，通用操作格式化一下数据，比如这里只需要导出其中三列，梳理口诀左新右旧
          list = LAY_EXCEL.filterExportData(list, {
            id: 'id',
            username: 'username',
            sex: 'sex'
          });
          // 2. 有需要则按照顺序倒插表头
          list.unshift({
            id: '主键ID',
            username: '用户名',
            sex: '性别'
          });
          // 2. 使用批量设置样式函数 setExportCellStyle 对单元格维度的数据进行批量设置样式
          // PS:注意这里是ARGB，前两位是透明度
          LAY_EXCEL.setExportCellStyle(list, 'A1:C1',
              {s: {
              border: {
                top: {style: 'thick', color: {rgb: 'FFFF0000'}},
                bottom: {style: 'thick', color: {rgb: 'FFFF0000'}},
                left: {style: 'thick', color: {rgb: 'FFFF0000'}},
                right: {style: 'thick', color: {rgb: 'FFFF0000'}}
              }
            }},
              function () {
              });
          // 3. 调用导出函数弹出下载
          LAY_EXCEL.exportExcel(list, '无合并单元格加边框.xlsx')
        },
        error: function () {
          layer.alert('获取数据失败，请检查是否部署在本地服务器环境下')
        }
      })
    })
  }

  /**
   * 导出合并单元格边框样例
   */
  function exportMergeCell() {
    layui.use(['layer'], function () {
      $.ajax({
        url: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/excel/demo/json/list.json',
        success: function (res) {
          var list = res.data;
          // 1. 按照文档，通用操作格式化一下数据，比如这里只需要导出其中三列，梳理口诀左新右旧
          list = LAY_EXCEL.filterExportData(list, {
            id: 'id',
            username: 'username',
            sex: 'sex'
          });
          // 2. 有需要则按照顺序倒插表头
          list.unshift({
            id: '主键ID',
            username: '用户名',
            sex: '性别'
          });
          // 2.1 插入需要合并的表头，对应坐标 A2:A3
          list.unshift({
            id: '主键ID',
            username: '基础信息',
            sex: ''
          });
          // 2.2 调用合并辅助函数，生成合并配置
          var mergeConf = LAY_EXCEL.makeMergeConfig([
            ['B1', 'C1']
          ]);
          // 3. 使用边框设置辅助函数 setRoundBorder 对某个范围的单元格生成左右上下环绕的边框
          // PS:注意这里是ARGB，前两位是透明度
          LAY_EXCEL.setRoundBorder(list, 'A1:C2', {
            top: {style: 'thick', color: {rgb: 'FFFF0000'}},
            bottom: {style: 'thick', color: {rgb: 'FFFF0000'}},
            left: {style: 'thick', color: {rgb: 'FFFF0000'}},
            right: {style: 'thick', color: {rgb: 'FFFF0000'}}
          });
          // 3. 调用导出函数弹出下载
          LAY_EXCEL.exportExcel(list, '无合并单元格加边框.xlsx', 'xlsx', {
            extend: {
              '!merges': mergeConf
            }
          })
        },
        error: function () {
          layer.alert('获取数据失败，请检查是否部署在本地服务器环境下')
        }
      })
    })
  }
</script>
</body>
</html>
