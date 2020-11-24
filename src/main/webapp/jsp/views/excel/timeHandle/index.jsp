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
  <title>时间处理</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
</head>
<body>
<div class="layui-container">
  <div class="layui-row">
    <div class="layui-col-md11 layui-col-md-offset1">
      <fieldset class="layui-elem-field layui-field-title">
        <legend>与时间相关的导入导出</legend>
      </fieldset>
      <blockquote class="layui-elem-quote">
        时间在 Excel 中以数字的形式存在，具体意义是与 1990-01-01 00:00:00 相比的第几天，比如 1990-01-01 00:00:00 就存为1，1990-01-02 00:00:00 就存为2。为方便操作，插件提供了对应辅助方法：dateCodeFormat('存储的数字'， '格式') 、dateFormat('Date对象', '格式')、dateCodeToDate('存储的数字') 方便操作。
      </blockquote>
      <div class="layui-form">
        <div class="layui-form-item">
          <div class="layui-form-label">时间操作</div>
          <div class="layui-form-block">
            <button type="button" class="layui-btn layui-btn-primary" onclick="exportTimeDemo()">导出各种格式的时间</button>
            <button type="button" class="layui-btn layui-btn-primary" onclick="importTimeDemo()">导入时间转换演示</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/html" id="LAY-EXPORT-TIME-TRANSFER">
  {{# layui.each(d, function(file_index, item){ }}
  <div class="layui-tab">
    <ul class="layui-tab-title">
      {{# layui.each(item, function(sheet_name, content) { }}
      <li>{{sheet_name}}</li>
      {{# }); }}
    </ul>
    <div class="layui-tab-content">
      {{# layui.each(item, function(sheet_name, content) { }}
      <div class="layui-tab-item">
        <table class="layui-table">
          {{# layui.each(content, function(row_index, value) { }}
          {{# var col_index = 0 }}
          <tr>
            {{# layui.each(value, function(col_key, val) { }}
            <td id="table-export-{{file_index}}-{{sheet_name}}-{{row_index}}-{{col_index++}}">{{val}}</td>
            {{# });}}
          </tr>
          {{# });}}
        </table>
      </div>
      {{# }); }}
    </div>
  </div>
  {{# }) }}
</script>
<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>
<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/excel/excel.js"></script>
<script>
  function exportTimeDemo() {
    // 假设从后端拿到了 2019-08-18 00:00:00 的数据，然后前端需要导出不同的格式
    var data = [
      {
        date1: '2019-08-18 20:30:12',
        date2: '2019-08-18 20:30:12',
        date3: '2019-08-18 20:30:12'
      },
      {
        date1: '2019-08-18 20:30:12',
        date2: '2019-08-18 20:30:12',
        date3: '2019-08-18 20:30:12'
      },
      {
        date1: '2019-08-18 20:30:12',
        date2: '2019-08-18 20:30:12',
        date3: '2019-08-18 20:30:12'
      },
      {
        date1: '2019-08-18 20:30:12',
        date2: '2019-08-18 20:30:12',
        date3: '2019-08-18 20:30:12'
      }
    ];
    // filterExportData 是以列为维度的数据梳理函数，适用于梳理除表头外的纯粹数据，遵循左新右旧的原则，更多详见文档
    data = LAY_EXCEL.filterExportData(data, {
      date1: function (v) {
        // 注：d传Date对象，v传入天数即可
        var date = new Date(v);
        return {
          d: date,
          v: Number(date),
          t: 'd',
          z: 'yy-m-d h:m:s'
        }
      },
      date2: function (v) {
        var date = new Date(v);
        return {
          d: date,
          v: Number(date),
          t: 'd',
          z: 'yyyy-mm-dd hh:mm:ss'
        }
      },
      date3: function (v) {
        var date = new Date(v);
        return {
          d: date,
          v: Number(date),
          t: 'd',
          z: 'yyyy年mm月dd日 hh时mm分ss秒'
        }
      }
    });
    // 加表头
    data.unshift({
      date1: '第一种格式',
      date2: '第二种格式',
      date3: '第三种格式'
    });
    LAY_EXCEL.exportExcel(data, '导出各种格式的时间.xlsx', 'xlsx');
  }

  /**
   * 导入时间转换演示
   */
  function importTimeDemo() {
    // 假设导入拿到的数据如下（一个文件组成的数组）：
    var data = [{
      Sheet1: [
          {"A":"格式1","B":"格式2","C":"格式三"},
          {"A":43729,"B":43730,"C":43737.54167824074}
      ]
    }];
    // 按照文档执行 filter 映射
    data = LAY_EXCEL.filterImportData(data, {
      'format_1': function (v, item, data, rowIndex, newFieldName) {
        if (rowIndex > 0) {
          // 直接调用辅助方法格式化，也可以转换为 Date 对象后自行处理
          return LAY_EXCEL.dateCodeFormat(item['A']);
        } else {
          return item['A'];
        }
      },
      'format_2': function (v, item, data, rowIndex, newFieldName) {
        if (rowIndex > 0) {
          // 直接调用辅助方法格式化，也可以转换为 Date 对象后自行处理
          return LAY_EXCEL.dateCodeFormat(item['B'], 'YY年MM月DD日');
        } else {
          return item['B'];
        }
      },
      'format_3': function (v, item, data, rowIndex, newFieldName) {
        if (rowIndex > 0) {
          // 直接调用辅助方法格式化，也可以转换为 Date 对象后自行处理
          return LAY_EXCEL.dateCodeFormat(item['C'], 'YYYY年MM月DD日 HH点ii分ss秒');
        } else {
          return item['C'];
        }
      }
    });
    layui.use(['laytpl', 'layer', 'element', 'jquery'], function () {
      var laytpl = layui.laytpl
          ,layer = layui.layer
          ,element = layui.element
          ,$ = layui.jquery;

      var html = laytpl($('#LAY-EXPORT-TIME-TRANSFER').html()).render(data);
      layer.ready(function () {
        layer.open({
          title: '渲染结果',
          content: html,
          area: ['800px', '400px'],
          success: function () {
            element.render('tab')
          }
        });
      });
    });
  }
</script>
</body>
</html>
