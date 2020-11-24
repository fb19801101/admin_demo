<%--
  Created by IntelliJ IDEA.
  User:    Administrator
  author:  信息化管理部-方波
  site:    http://www.cr121.com/
  company: 中铁十二局集团第一工程有限公司
  Date:    2020/3/31
  Time:    7:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>静态表格</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>

  <div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb">
      <a lay-href="">主页</a>
      <a><cite>组件</cite></a>
      <a><cite>静态表格</cite></a>
    </div>
  </div>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">默认风格</div>
          <div class="layui-card-body">
            <table class="layui-table">
              <colgroup>
                <col width="150">
                <col width="150">
                <col width="200">
                <col>
              </colgroup>
              <thead>
                <tr>
                  <th>人物</th>
                  <th>民族</th>
                  <th>出场时间</th>
                  <th>格言</th>
                </tr> 
              </thead>
              <tbody>
                <tr>
                  <td>贤心</td>
                  <td>汉族</td>
                  <td>1989-10-14</td>
                  <td>人生似修行</td>
                </tr>
                <tr>
                  <td>张爱玲</td>
                  <td>汉族</td>
                  <td>1920-09-30</td>
                  <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
                </tr>
                <tr>
                  <td>Helen Keller</td>
                  <td>拉丁美裔</td>
                  <td>1880-06-27</td>
                  <td> Life is either a daring adventure or nothing.</td>
                </tr>
                <tr>
                  <td>岳飞</td>
                  <td>汉族</td>
                  <td>1103-北宋崇宁二年</td>
                  <td>教科书再滥改，也抹不去“民族英雄”的事实</td>
                </tr>
                <tr>
                  <td>孟子</td>
                  <td>华夏族（汉族）</td>
                  <td>公元前-372年</td>
                  <td>猿强，则国强。国强，则猿更强！ </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">行边框风格</div>
          <div class="layui-card-body">
            <table class="layui-table" lay-skin="line">
            <colgroup>
              <col width="150">
              <col width="150">
              <col width="200">
              <col>
            </colgroup>
            <thead>
              <tr>
                <th>人物</th>
                <th>民族</th>
                <th>出场时间</th>
                <th>格言</th>
              </tr> 
            </thead>
            <tbody>
              <tr>
                <td>贤心</td>
                <td>汉族</td>
                <td>1989-10-14</td>
                <td>人生似修行</td>
              </tr>
              <tr>
                <td>张爱玲</td>
                <td>汉族</td>
                <td>1920-09-30</td>
                <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
              </tr>
              <tr>
                <td>Helen Keller</td>
                <td>拉丁美裔</td>
                <td>1880-06-27</td>
                <td> Life is either a daring adventure or nothing.</td>
              </tr>
              <tr>
                <td>岳飞</td>
                <td>汉族</td>
                <td>1103-北宋崇宁二年</td>
                <td>教科书再滥改，也抹不去“民族英雄”的事实</td>
              </tr>
              <tr>
                <td>孟子</td>
                <td>华夏族（汉族）</td>
                <td>公元前-372年</td>
                <td>猿强，则国强。国强，则猿更强！ </td>
              </tr>
            </tbody>
          </table>
          </div>
        </div>
      </div>
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">列边框风格</div>
          <div class="layui-card-body">
            <table class="layui-table" lay-even="" lay-skin="row">
            <colgroup>
              <col width="150">
              <col width="150">
              <col width="200">
              <col>
            </colgroup>
            <thead>
              <tr>
                <th>人物</th>
                <th>民族</th>
                <th>出场时间</th>
                <th>格言</th>
              </tr> 
            </thead>
            <tbody>
              <tr>
                <td>贤心</td>
                <td>汉族</td>
                <td>1989-10-14</td>
                <td>人生似修行</td>
              </tr>
              <tr>
                <td>张爱玲</td>
                <td>汉族</td>
                <td>1920-09-30</td>
                <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
              </tr>
              <tr>
                <td>Helen Keller</td>
                <td>拉丁美裔</td>
                <td>1880-06-27</td>
                <td> Life is either a daring adventure or nothing.</td>
              </tr>
              <tr>
                <td>岳飞</td>
                <td>汉族</td>
                <td>1103-北宋崇宁二年</td>
                <td>教科书再滥改，也抹不去“民族英雄”的事实</td>
              </tr>
              <tr>
                <td>孟子</td>
                <td>华夏族（汉族）</td>
                <td>公元前-372年</td>
                <td>猿强，则国强。国强，则猿更强！ </td>
              </tr>
            </tbody>
          </table>
          </div>
        </div>
      </div>
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">无边框风格</div>
          <div class="layui-card-body">
            <table class="layui-table" lay-even="" lay-skin="nob">
            <colgroup>
              <col width="150">
              <col width="150">
              <col width="200">
              <col>
            </colgroup>
            <thead>
              <tr>
                <th>人物</th>
                <th>民族</th>
                <th>出场时间</th>
                <th>格言</th>
              </tr> 
            </thead>
            <tbody>
              <tr>
                <td>贤心</td>
                <td>汉族</td>
                <td>1989-10-14</td>
                <td>人生似修行</td>
              </tr>
              <tr>
                <td>张爱玲</td>
                <td>汉族</td>
                <td>1920-09-30</td>
                <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
              </tr>
              <tr>
                <td>Helen Keller</td>
                <td>拉丁美裔</td>
                <td>1880-06-27</td>
                <td> Life is either a daring adventure or nothing.</td>
              </tr>
              <tr>
                <td>岳飞</td>
                <td>汉族</td>
                <td>1103-北宋崇宁二年</td>
                <td>教科书再滥改，也抹不去“民族英雄”的事实</td>
              </tr>
              <tr>
                <td>孟子</td>
                <td>华夏族（汉族）</td>
                <td>公元前-372年</td>
                <td>猿强，则国强。国强，则猿更强！ </td>
              </tr>
            </tbody>
          </table> 
          </div>
        </div>
      </div>
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-header">其它尺寸</div>
          <div class="layui-card-body">
            <table class="layui-table" lay-size="lg">
            <colgroup>
              <col width="150">
              <col width="200">
              <col>
            </colgroup>
            <thead>
              <tr>
                <th>昵称</th>
                <th>加入时间</th>
                <th>签名</th>
              </tr> 
            </thead>
            <tbody>
              <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
              </tr>
              <tr>
                <td>许闲心</td>
                <td>2016-11-28</td>
                <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
              </tr>
              <tr>
                <td>sentsin</td>
                <td>2016-11-27</td>
                <td> Life is either a daring adventure or nothing.</td>
              </tr>
            </tbody>
          </table>
          <table class="layui-table" lay-size="sm">
            <colgroup>
              <col width="150">
              <col width="200">
              <col>
            </colgroup>
            <thead>
              <tr>
                <th>昵称</th>
                <th>加入时间</th>
                <th>签名</th>
              </tr> 
            </thead>
            <tbody>
              <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
              </tr>
              <tr>
                <td>许闲心</td>
                <td>2016-11-28</td>
                <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
              </tr>
              <tr>
                <td>sentsin</td>
                <td>2016-11-27</td>
                <td> Life is either a daring adventure or nothing.</td>
              </tr>
            </tbody>
          </table>
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
  }).use(['index']);
  </script>
</body>
</html>