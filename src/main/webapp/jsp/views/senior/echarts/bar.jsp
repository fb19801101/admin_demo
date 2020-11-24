<%--
  Created by IntelliJ IDEA.
  User:    Administrator
  author:  信息化管理部-方波
  site:    http://www.cr121.com/
  company: 中铁十二局集团第一工程有限?司
  Date:    2020/3/31
  Time:    7:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>Echarts集成 - 柱状图</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>

  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md6">
        <div class="layui-card">
          <div class="layui-card-header">标准柱状图</div>
          <div class="layui-card-body">

            <div class="layui-carousel layadmin-carousel layadmin-dataview" data-anim="fade" lay-filter="LAY-index-normcol">
              <div carousel-item id="LAY-index-normcol">
                <div><i class="layui-icon layui-icon-loading1 layadmin-loading"></i></div>
              </div>
            </div>

          </div>
        </div>
        <div class="layui-card">
          <div class="layui-card-header">堆积柱状图</div>
          <div class="layui-card-body">
            
            <div class="layui-carousel layadmin-carousel layadmin-dataview" data-anim="fade" lay-filter="LAY-index-heapcol">
              <div carousel-item id="LAY-index-heapcol">
                <div><i class="layui-icon layui-icon-loading1 layadmin-loading"></i></div>
              </div>
            </div>

          </div>
        </div>
        <div class="layui-card">
          <div class="layui-card-header">不等距柱形图</div>
          <div class="layui-card-body">
            
            <div class="layui-carousel layadmin-carousel layadmin-dataview" data-anim="fade" lay-filter="LAY-index-diffcol">
              <div carousel-item id="LAY-index-diffcol">
                <div><i class="layui-icon layui-icon-loading1 layadmin-loading"></i></div>
              </div>
            </div>

          </div>
        </div>
        <div class="layui-card">
          <div class="layui-card-header">彩虹柱形图</div>
          <div class="layui-card-body">
            
            <div class="layui-carousel layadmin-carousel layadmin-dataview" data-anim="fade" lay-filter="LAY-index-colorline">
              <div carousel-item id="LAY-index-colorline">
                <div><i class="layui-icon layui-icon-loading1 layadmin-loading"></i></div>
              </div>
            </div>

          </div>
        </div>
      </div>
      <div class="layui-col-md6">
        <div class="layui-card">
          <div class="layui-card-header">标准条形图</div>
          <div class="layui-card-body">
            
            <div class="layui-carousel layadmin-carousel layadmin-dataview" data-anim="fade" lay-filter="LAY-index-normbar">
              <div carousel-item id="LAY-index-normbar">
                <div><i class="layui-icon layui-icon-loading1 layadmin-loading"></i></div>
              </div>
            </div>

          </div>
        </div>
        <div class="layui-card">
          <div class="layui-card-header">堆积条形图</div>
          <div class="layui-card-body">
           
            <div class="layui-carousel layadmin-carousel layadmin-dataview" data-anim="fade" lay-filter="LAY-index-heapbar">
              <div carousel-item id="LAY-index-heapbar">
                <div><i class="layui-icon layui-icon-loading1 layadmin-loading"></i></div>
              </div>
            </div>

          </div>
        </div>
        <div class="layui-card">
          <div class="layui-card-header">旋风条形图</div>
          <div class="layui-card-body">
           
            <div class="layui-carousel layadmin-carousel layadmin-dataview" data-anim="fade" lay-filter="LAY-index-windline">
              <div carousel-item id="LAY-index-windline">
                <div><i class="layui-icon layui-icon-loading1 layadmin-loading"></i></div>
              </div>
            </div>

          </div>
        </div>
      </div> 
    </div>
  </div>

  
  <script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>  
  <script>
  layui.config({
    base: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'senior']);
  </script>
</body>
</html>



