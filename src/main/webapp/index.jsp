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
  <title>拉动式生产后台管理框架</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/font-awesome-4.7.0/css/font-awesome.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/font-awesome-4.7.0/css/font-montserrat.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/font-ext/iconfont.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">

  <style>
  /*扩展三级菜单*/
  .child-margin{margin-left: 12px;}
  </style>
  <script>
  /^http(s*):\/\//.test(location.href) || alert('请先部署到 localhost 下再访问');
  </script>
</head>
<body class="layui-layout-body">
  <div id="LAY_app">
    <div class="layui-layout layui-layout-admin">
      <div class="layui-header">
        <!-- 头部区域 -->
        <ul class="layui-nav layui-layout-left">
          <li class="layui-nav-item layadmin-flexible" lay-unselect>
            <a href="javascript:" layadmin-event="flexible" title="侧边伸缩">
              <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="http://www.layui.com/admin/" target="_blank" title="前台">
              <i class="layui-icon layui-icon-website"></i>
            </a>
          </li>
          <li class="layui-nav-item" lay-unselect>
            <a href="javascript:" layadmin-event="refresh" title="刷新">
              <i class="layui-icon layui-icon-refresh-3"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <input type="text" placeholder="搜索..." autocomplete="off" class="layui-input layui-input-search" layadmin-event="serach" lay-action="template/search?keywords=" style="margin-top: 8px; width: 200px">
          </li>
        </ul>
        <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">
          
          <li class="layui-nav-item" lay-unselect>
            <a layadmin-href="app/message/index" layadmin-event="message" lay-text="消息中心">
              <i class="layui-icon layui-icon-notice"></i>  
              
              <!-- 如果有新消息，则显示小圆点 -->
              <span class="layui-badge-dot"></span>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:" layadmin-event="theme">
              <i class="layui-icon layui-icon-theme"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:" layadmin-event="note">
              <i class="layui-icon layui-icon-note"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:" layadmin-event="fullscreen">
              <i class="layui-icon layui-icon-screen-full"></i>
            </a>
          </li>
          <li class="layui-nav-item" lay-unselect>
            <a href="javascript:">
              <cite>管理员</cite>
            </a>
            <dl class="layui-nav-child">
              <dd><a layadmin-href="set/user/info">基本资料</a></dd>
              <dd><a layadmin-href="set/user/password">修改密码</a></dd>
              <hr>
              <dd layadmin-event="logout" style="text-align: center;"><a>退出</a></dd>
            </dl>
          </li>

          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:" layadmin-event="about"><i class="layui-icon layui-icon-more-vertical"></i></a>
          </li>
          <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-unselect>
            <a href="javascript:" layadmin-event="more"><i class="layui-icon layui-icon-more-vertical"></i></a>
          </li>
        </ul>
      </div>

      <!-- 侧边菜单 -->
      <div class="layui-side layui-side-menu">
        <div class="layui-side-scroll">
          <div class="layui-logo" layadmin-href="home/carousel" id="LAY_side_config">
            <div class="layui-inline" style="margin-left:-20px; font-size:40px">
<%--            <i class="layui-icon layui-icon-windows"></i>--%>
            <svg class="icon svg-icon" aria-hidden="true">
              <use xlink:href="#lay-icon-crcc12"></use>
            </svg>
            </div>
            <div class="layui-inline">
            <span>拉动式生产</span>
            </div>
          </div>

          <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu" lay-filter="layadmin-system-side-menu">
            <li data-name="partitem" class="layui-nav-item">
              <a href="javascript:" lay-tips="拉动式生产 ★ 生产线" lay-direction="2">
                <i class="layui-icon layui-icon-component"></i>
                <cite>生产线</cite>
              </a>
              <dl class="layui-nav-child">
                <dd data-name="partitem">
                  <a href="javascript:"><i class="fa fa-sitemap fa-fw" aria-hidden="true"></i>&nbsp;分部分项</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="partitem/partItemIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;分部分项模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="partitem/insertPartItem">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;建立分部分项</a></dd>
                    <dd data-name="search"><a layadmin-href="partitem/searchPartItem">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询分部分项</a></dd>
                    <dd data-name="mount"><a layadmin-href="partitem/partItemIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;分部分项挂载</a></dd>
                  </dl>
                </dd>
                <dd data-name="netplan">
                  <a href="javascript:"><i class="fa fa-calendar fa-fw" aria-hidden="true"></i>&nbsp;网络计划</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="netplan/netPlanIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;网络计划模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="netplan/insertNetPlan">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;建立网络计划</a></dd>
                    <dd data-name="search"><a layadmin-href="netplan/searchNetPlan">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询网络计划</a></dd>
                    <dd data-name="mount"><a layadmin-href="netplan/netPlanIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;网络计划挂载</a></dd>
                    <dd data-name="warn"><a layadmin-href="netplan/warnNetPlan">
                      <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true"></i>&nbsp;网络计划预警</a></dd>
                    <dd data-name="chart"><a layadmin-href="netplan/chartNetPlan">
                      <i class="fa fa-bar-chart fa-fw" aria-hidden="true"></i>&nbsp;网络计划图表</a></dd>
                    <dd data-name="chart"><a layadmin-href="netplan/dynamicNetPlan">
                      <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true"></i>&nbsp;网络计划滚动</a></dd>
                  </dl>
                </dd>
                <dd data-name="quantity">
                  <a href="javascript:"><i class="fa fa-calculator fa-fw" aria-hidden="true"></i>&nbsp;工程数量</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="quantity/quantityIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;工程数量模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="quantity/insertQuantity">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入工程数量</a></dd>
                    <dd data-name="search"><a layadmin-href="quantity/searchQuantity">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询工程数量</a></dd>
                    <dd data-name="mount"><a layadmin-href="quantity/quantityIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;工程数量挂载</a></dd>
                    <dd data-name="upload"><a layadmin-href="quantity/uploadQuantity">
                      <i class="fa fa-upload fa-fw" aria-hidden="true"></i>&nbsp;导入工程数量</a></dd>
                    <dd data-name="download"><a layadmin-href="quantity/downloadQuantity">
                      <i class="fa fa-download fa-fw" aria-hidden="true"></i>&nbsp;导出工程数量</a></dd>
                    <dd data-name="restore"><a layadmin-href="quantity/restoreQuantity">
                      <i class="fa fa-window-restore fa-fw" aria-hidden="true"></i>&nbsp;汇入成本层</a></dd>
                  </dl>
                </dd>
                <dd data-name="company">
                  <a href="javascript:"><i class="fa fa-address-card-o fa-fw" aria-hidden="true"></i>&nbsp;队伍信息</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="company/companyIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;队伍模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="company/insertCompany">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入队伍</a></dd>
                    <dd data-name="search"><a layadmin-href="company/searchCompany">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询队伍</a></dd>
                    <dd data-name="mount"><a layadmin-href="company/companyIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;队伍挂载</a></dd>
                  </dl>
                </dd>
              </dl>
            </li>

            <li data-name="contract" class="layui-nav-item">
              <a href="javascript:" lay-tips="拉动式生产 ★ 经济线" lay-direction="2">
                <i class="layui-icon layui-icon-diamond"></i>
                <cite>经济线</cite>
              </a>
              <dl class="layui-nav-child">
                <dd data-name="contract">
                  <a href="javascript:"><i class="fa fa-table fa-fw" aria-hidden="true"></i>&nbsp;合同清单</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="contract/contractIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;清单模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="contract/insertContract">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入清单</a></dd>
                    <dd data-name="search"><a layadmin-href="contract/searchContract">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询清单</a></dd>
                    <dd data-name="mount"><a layadmin-href="contract/contractIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;清单挂载</a></dd>
                  </dl>
                </dd>
                <dd data-name="budget">
                  <a href="javascript:"><i class="fa fa-wpforms fa-fw" aria-hidden="true"></i>&nbsp;单项概算</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="budget/budgetIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;概算模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="budget/insertBudget">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入概算</a></dd>
                    <dd data-name="search"><a layadmin-href="budget/searchBudget">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询概算</a></dd>
                    <dd data-name="mount"><a layadmin-href="budget/budgetIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;概算挂载</a></dd>
                  </dl>
                </dd>
                <dd data-name="guidance">
                  <a href="javascript:"><i class="fa fa-road fa-fw" aria-hidden="true"></i>&nbsp;指导价</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="guidance/guidanceIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;指导价模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="guidance/insertGuidance">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入指导价</a></dd>
                    <dd data-name="search"><a layadmin-href="guidance/searchGuidance">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询指导价</a></dd>
                    <dd data-name="mount"><a layadmin-href="guidance/guidanceIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;指导价挂载</a></dd>
                  </dl>
                </dd>
                <dd data-name="costlayer">
                  <a href="javascript:"><i class="fa fa-balance-scale fa-fw" aria-hidden="true"></i>&nbsp;成本层</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="costlayer/costLayerIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;成本层模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="costlayer/insertCostLayer">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入成本层</a></dd>
                    <dd data-name="search"><a layadmin-href="costlayer/searchCostLayer">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询成本层</a></dd>
                    <dd data-name="mount"><a layadmin-href="costlayer/costLayerIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;成本层挂载</a></dd>
                    <dd data-name="download"><a layadmin-href="costlayer/downloadCostLayer">
                      <i class="fa fa-download fa-fw" aria-hidden="true"></i>&nbsp;导出成本层</a></dd>
                  </dl>
                </dd>
                <dd data-name="estimation">
                  <a href="javascript:"><i class="fa fa-linode fa-fw" aria-hidden="true"></i>&nbsp;成本测算</a>
                  <dl class="layui-nav-child">
                    <dd data-name="search"><a layadmin-href="estimation/searchEstimation">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;测算查询</a></dd>
                    <dd data-name="labour"><a layadmin-href="estimation/labourEstimation">
                      <i class="lay-icon lay-icon-construction" aria-hidden="true"></i>&nbsp;劳务成本</a></dd>
                    <dd data-name="material"><a layadmin-href="estimation/materialEstimation">
                      <i class="lay-icon lay-icon-material" aria-hidden="true"></i>&nbsp;材料成本</a></dd>
                    <dd data-name="analysis"><a layadmin-href="estimation/analysisEstimation">
                      <i class="lay-icon lay-icon-analysis" aria-hidden="true"></i>&nbsp;测算分析</a></dd>
                    <dd data-name="compare"><a layadmin-href="estimation/compareEstimation">
                      <i class="lay-icon lay-icon-compare" aria-hidden="true"></i>&nbsp;测算对比</a></dd>
                  </dl>
                </dd>
              </dl>
            </li>

            <li data-name="costlayer" class="layui-nav-item">
              <a href="javascript:" lay-tips="拉动式生产 ★ 生产线" lay-direction="2">
                <i class="layui-icon layui-icon-template"></i>
                <cite>成本层</cite>
              </a>
              <dl class="layui-nav-child">
                <dd data-name="labour">
                  <a href="javascript:"><i class="fa fa-user-md fa-fw" aria-hidden="true"></i>&nbsp;劳务层</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="labour/labourIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;劳务数量模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="labour/insertLabour">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入劳务数量</a></dd>
                    <dd data-name="search"><a layadmin-href="labour/searchLabour">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询劳务数量</a></dd>
                    <dd data-name="mount"><a layadmin-href="labour/labourIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;劳务数量挂载</a></dd>
                    <dd data-name="restore"><a layadmin-href="labour/restoreLabour">
                      <i class="fa fa-window-restore fa-fw" aria-hidden="true"></i>&nbsp;汇入成本层</a></dd>
                  </dl>
                </dd>
                <dd data-name="material">
                  <a href="javascript:"><i class="fa fa-shopping-basket fa-fw" aria-hidden="true"></i>&nbsp;物资层</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="material/materialIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;物资数量模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="material/insertMaterial">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入物资数量</a></dd>
                    <dd data-name="search"><a layadmin-href="material/searchMaterial">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询物资数量</a></dd>
                    <dd data-name="mount"><a layadmin-href="material/materialIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;物资数量挂载</a></dd>
                    <dd data-name="restore"><a layadmin-href="material/restoreMaterial">
                      <i class="fa fa-window-restore fa-fw" aria-hidden="true"></i>&nbsp;汇入成本层</a></dd>
                  </dl>
                </dd>
                <dd data-name="equipment">
                  <a href="javascript:"><i class="fa fa-train fa-fw" aria-hidden="true"></i>&nbsp;设备层</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="equipment/equipmentIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;设备数量模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="equipment/insertEquipment">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入设备数量</a></dd>
                    <dd data-name="search"><a layadmin-href="equipment/searchEquipment">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询设备数量</a></dd>
                    <dd data-name="mount"><a layadmin-href="equipment/equipmentIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;设备数量挂载</a></dd>
                    <dd data-name="restore"><a layadmin-href="equipment/restoreEquipment">
                      <i class="fa fa-window-restore fa-fw" aria-hidden="true"></i>&nbsp;汇入成本层</a></dd>
                  </dl>
                </dd>
                <dd data-name="temporary">
                  <a href="javascript:"><i class="fa fa-building fa-fw" aria-hidden="true"></i>&nbsp;临建层</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="temporary/temporaryIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;临建数量模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="temporary/insertTemporary">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入临建数量</a></dd>
                    <dd data-name="search"><a layadmin-href="temporary/searchTemporary">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询临建数量</a></dd>
                    <dd data-name="mount"><a layadmin-href="temporary/temporaryIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;临建数量挂载</a></dd>
                    <dd data-name="restore"><a layadmin-href="temporary/restoreTemporary">
                      <i class="fa fa-window-restore fa-fw" aria-hidden="true"></i>&nbsp;汇入成本层</a></dd>
                  </dl>
                </dd>
                <dd data-name="demolition">
                  <a href="javascript:"><i class="fa fa-tree fa-fw" aria-hidden="true"></i>&nbsp;征拆层</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="demolition/demolitionIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;征拆数量模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="demolition/insertDemolition">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入征拆数量</a></dd>
                    <dd data-name="search"><a layadmin-href="demolition/searchDemolition">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询征拆数量</a></dd>
                    <dd data-name="mount"><a layadmin-href="demolition/demolitionIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;征拆数量挂载</a></dd>
                    <dd data-name="restore"><a layadmin-href="demolition/restoreDemolition">
                      <i class="fa fa-window-restore fa-fw" aria-hidden="true"></i>&nbsp;汇入成本层</a></dd>
                  </dl>
                </dd>
                <dd data-name="indirect">
                  <a href="javascript:"><i class="fa fa-money fa-fw" aria-hidden="true"></i>&nbsp;间接层</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template"><a layadmin-href="indirect/indirectIframe?action=template">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;间接数量模板</a></dd>
                    <dd data-name="insert"><a layadmin-href="indirect/insertIndirect">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入间接数量</a></dd>
                    <dd data-name="search"><a layadmin-href="indirect/searchIndirect">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询间接数量</a></dd>
                    <dd data-name="mount"><a layadmin-href="indirect/indirectIframe?action=mount">
                      <i class="fa fa-gears fa-fw" aria-hidden="true"></i>&nbsp;间接数量挂载</a></dd>
                    <dd data-name="restore"><a layadmin-href="indirect/restoreIndirect">
                      <i class="fa fa-window-restore fa-fw" aria-hidden="true"></i>&nbsp;汇入成本层</a></dd>
                  </dl>
                </dd>
              </dl>
            </li>

            <li data-name="toolDemo" class="layui-nav-item layui-nav-itemed">
              <a href="javascript:" lay-tips="拉动式生产 ★ 辅助类" lay-direction="2">
                <i class="layui-icon layui-icon-util"></i>
                <cite>辅助类</cite>
              </a>
              <dl class="layui-nav-child">
                <dd data-name="measure" class="layui-nav-itemed">
                  <a href="javascript:"><i class="fa fa-money fa-fw" aria-hidden="true"></i>&nbsp;测量计算工具</a>
                  <dl class="layui-nav-child">
                    <dd data-name="template" class="layui-nav-itemed">
                      <a href="javascript:"><i class="fa fa-money fa-fw" aria-hidden="true"></i>&nbsp;平曲线计算</a>
                      <dl class="layui-nav-child child-margin">
                        <dd data-name="template"><a layadmin-href="software/toolMeasure">
                          <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;曲线要素录入</a></dd>
                        <dd data-name="template"><a layadmin-href="software/toolMeasure">
                          <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;逐桩坐标计算</a></dd>
                        <dd data-name="template"><a layadmin-href="software/toolMeasure">
                          <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;坐标正反算</a></dd>
                      </dl>
                      <dl class="layui-nav-child">
                        <dd data-name="template">
                          <a href="javascript:"><i class="fa fa-money fa-fw" aria-hidden="true"></i>&nbsp;竖曲线计算</a>
                          <dl class="layui-nav-child child-margin">
                            <dd data-name="template"><a layadmin-href="software/toolMeasure">
                              <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;曲线要素录入</a></dd>
                            <dd data-name="template"><a layadmin-href="software/toolMeasure">
                              <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;逐桩高程计算</a></dd>
                            <dd data-name="template"><a layadmin-href="software/toolMeasure">
                              <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i> 高程正反算</a></dd>
                          </dl>
                  </dl>
                </dd>
              </dl>
            </li>

            <li data-name="finance" class="layui-nav-item" id="LAY_side_finance" style="display: none">
              <a href="javascript:" lay-tips="拉动式生产 ★ 测试线" lay-direction="2">
                <i class="layui-icon layui-icon-gift"></i>
                <cite>测试线</cite>
              </a>
              <dl class="layui-nav-child">
                <dd data-name="member">
                  <a href="javascript:"><i class="fa fa-sitemap fa-fw" aria-hidden="true"></i>&nbsp;成员信息</a>
                  <dl class="layui-nav-child">
                    <dd data-name="insert"><a layadmin-href="member/insertMember">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入成员</a></dd>
                    <dd data-name="search"><a layadmin-href="member/searchMember">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询成员</a></dd>
                  </dl>
                </dd>
                <dd data-name="funds">
                  <a href="javascript:"><i class="fa fa-calendar fa-fw" aria-hidden="true"></i>&nbsp;款项信息</a>
                  <dl class="layui-nav-child">
                    <dd data-name="insert"><a layadmin-href="funds/insertFunds">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入款项</a></dd>
                    <dd data-name="search"><a layadmin-href="funds/searchFunds">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询款项</a></dd>
                  </dl>
                </dd>
                <dd data-name="income">
                  <a href="javascript:"><i class="fa fa-calculator fa-fw" aria-hidden="true"></i>&nbsp;收入信息</a>
                  <dl class="layui-nav-child">
                    <dd data-name="insert"><a layadmin-href="income/insertIncome">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入款项</a></dd>
                    <dd data-name="search"><a layadmin-href="income/searchIncome">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询款项</a></dd>
                  </dl>
                </dd>
                <dd data-name="outlay">
                  <a href="javascript:"><i class="fa fa-address-card-o fa-fw" aria-hidden="true"></i>&nbsp;支出信息</a>
                  <dl class="layui-nav-child">
                    <dd data-name="insert"><a layadmin-href="outlay/insertOutlay">
                      <i class="fa fa-plus-square fa-fw" aria-hidden="true"></i>&nbsp;录入支出</a></dd>
                    <dd data-name="search"><a layadmin-href="outlay/searchOutlay">
                      <i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>&nbsp;查询支出</a></dd>
                  </dl>
                </dd>
                <dd data-name="finance">
                  <a href="javascript:"><i class="fa fa-life-ring fa-fw" aria-hidden="true"></i>&nbsp;收支报表</a>
                  <dl class="layui-nav-child">
                    <dd data-name="income"><a layadmin-href="finance/sumFinance">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;收支汇总</a></dd>
                    <dd data-name="outlay"><a layadmin-href="finance/sumIncome">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;收入汇总</a></dd>
                    <dd data-name="finance"><a layadmin-href="finance/sumOutlay">
                      <i class="fa fa-file-excel-o fa-fw" aria-hidden="true"></i>&nbsp;支出汇总</a></dd>
                  </dl>
                </dd>
              </dl>
            </li>

            <li data-name="layuiAdmin" class="layui-nav-item" id="LAY_side_admin" style="display: none">
              <a href="javascript:" lay-tips="layuiAdmin" lay-direction="2">
                <i class="layui-icon layui-icon-app"></i>
                <cite>layuiAdmin</cite>
              </a>
              <dl class="layui-nav-child">
                <dd data-name="home" class="layui-nav-item layui-nav-itemed">
                  <a href="javascript:" lay-tips="主页" lay-direction="2">
                    <i class="layui-icon layui-icon-home"></i>
                    <cite>主页</cite>
                  </a>
                  <dl class="layui-nav-child">
                    <dd data-name="console" class="layui-this">
                      <a layadmin-href="home/console">控制台</a>
                    </dd>
                    <dd data-name="console">
                      <a layadmin-href="home/homepage1">主页一</a>
                    </dd>
                    <dd data-name="console">
                      <a layadmin-href="home/homepage2">主页二</a>
                    </dd>
                    <dd data-name="console">
                      <a layadmin-href="home/carousel">主页三</a>
                    </dd>
                  </dl>
                </dd>
                <dd data-name="component" class="layui-nav-item">
                  <a href="javascript:" lay-tips="组件" lay-direction="2">
                    <i class="layui-icon layui-icon-component"></i>
                    <cite>组件</cite>
                  </a>
                  <dl class="layui-nav-child">
                    <dd data-name="grid">
                      <a href="javascript:">栅格</a>
                      <dl class="layui-nav-child">
                        <dd data-name="list"><a layadmin-href="component/grid/list">等比例列表排列</a></dd>
                        <dd data-name="mobile"><a layadmin-href="component/grid/mobile">按移动端排列</a></dd>
                        <dd data-name="mobile-pc"><a layadmin-href="component/grid/mobile-pc">移动桌面端组合</a></dd>
                        <dd data-name="all"><a layadmin-href="component/grid/all">全端复杂组合</a></dd>
                        <dd data-name="stack"><a layadmin-href="component/grid/stack">低于桌面堆叠排列</a></dd>
                        <dd data-name="speed-dial"><a layadmin-href="component/grid/speed-dial">九宫格</a></dd>
                      </dl>
                    </dd>
                    <dd data-name="button">
                      <a layadmin-href="component/button/index">按钮</a>
                    </dd>
                    <dd data-name="form">
                      <a href="javascript:">表单</a>
                      <dl class="layui-nav-child">
                        <dd><a layadmin-href="component/form/element">表单元素</a></dd>
                        <dd><a layadmin-href="component/form/group">表单组合</a></dd>
                      </dl>
                    </dd>
                    <dd data-name="nav">
                      <a layadmin-href="component/nav/index">导航</a>
                    </dd>
                    <dd data-name="tabs">
                      <a layadmin-href="component/tabs/index">选项卡</a>
                    </dd>
                    <dd data-name="progress">
                      <a layadmin-href="component/progress/index">进度条</a>
                    </dd>
                    <dd data-name="panel">
                      <a layadmin-href="component/panel/index">面板</a>
                    </dd>
                    <dd data-name="badge">
                      <a layadmin-href="component/badge/index">徽章</a>
                    </dd>
                    <dd data-name="timeline">
                      <a layadmin-href="component/timeline/index">时间线</a>
                    </dd>
                    <dd data-name="anim">
                      <a layadmin-href="component/anim/index">动画</a>
                    </dd>
                    <dd data-name="auxiliar">
                      <a layadmin-href="component/auxiliar/index">辅助</a>
                    </dd>
                    <dd data-name="layer">
                      <a href="javascript:">通用弹层<span class="layui-nav-more"></span></a>
                      <dl class="layui-nav-child">
                        <dd data-name="list">
                          <a layadmin-href="component/layer/list" lay-text="layer 功能演示">功能演示</a>
                        </dd>
                        <dd data-name="special-demo">
                          <a layadmin-href="component/layer/special-demo" lay-text="layer 特殊示例">特殊示例</a>
                        </dd>
                        <dd data-name="theme">
                          <a layadmin-href="component/layer/theme" lay-text="layer 风格定制">风格定制</a>
                        </dd>
                      </dl>
                    </dd>
                    <dd data-name="laydate">
                      <a href="javascript:">日期时间</a>
                      <dl class="layui-nav-child">
                        <dd data-name="demo1">
                          <a layadmin-href="component/laydate/demo1" lay-text="layDate 功能演示一">功能演示一</a>
                        </dd>
                        <dd data-name="demo2">
                          <a layadmin-href="component/laydate/demo2" lay-text="layDate 功能演示二">功能演示二</a>
                        </dd>
                        <dd data-name="theme">
                          <a layadmin-href="component/laydate/theme" lay-text="layDate 设定主题">设定主题</a>
                        </dd>
                        <dd data-name="special-demo">
                          <a layadmin-href="component/laydate/special-demo" lay-text="layDate 特殊示例">特殊示例</a>
                        </dd>
                      </dl>
                    </dd>
                    <dd data-name="table-static">
                      <a layadmin-href="component/table/static">静态表格</a>
                    </dd>
                    <dd data-name="table">
                      <a href="javascript:">数据表格</a>
                      <dl class="layui-nav-child">
                        <dd data-name="simple">
                          <a layadmin-href="component/table/simple" lay-text="">简单数据表格</a>
                        </dd>
                        <dd data-name="auto">
                          <a layadmin-href="component/table/auto" lay-text="">列宽自动分配</a>
                        </dd>
                        <dd data-name="data">
                          <a layadmin-href="component/table/data" lay-text="">赋值已知数据</a>
                        </dd>
                        <dd data-name="tostatic">
                          <a layadmin-href="component/table/tostatic" lay-text="">转化静态表格</a>
                        </dd>
                        <dd data-name="page">
                          <a layadmin-href="component/table/page" lay-text="">开启分页</a>
                        </dd>
                        <dd data-name="resetPage">
                          <a layadmin-href="component/table/resetPage" lay-text="">自定义分页</a>
                        </dd>
                        <dd data-name="toolbar">
                          <a layadmin-href="component/table/toolbar" lay-text="">开启头部工具栏</a>
                        </dd>
                        <dd data-name="totalRow">
                          <a layadmin-href="component/table/totalRow" lay-text="">开启合计行</a>
                        </dd>
                        <dd data-name="height">
                          <a layadmin-href="component/table/height" lay-text="">高度最大适应</a>
                        </dd>
                        <dd data-name="checkbox">
                          <a layadmin-href="component/table/checkbox" lay-text="">开启复选框</a>
                        </dd>
                        <dd data-name="radio">
                          <a layadmin-href="component/table/radio" lay-text="">开启单选框</a>
                        </dd>
                        <dd data-name="cellEdit">
                          <a layadmin-href="component/table/cellEdit" lay-text="">开启单元格编辑</a>
                        </dd>
                        <dd data-name="form">
                          <a layadmin-href="component/table/form" lay-text="">加入表单元素</a>
                        </dd>
                        <dd data-name="style">
                          <a layadmin-href="component/table/style" lay-text="">设置单元格样式</a>
                        </dd>
                        <dd data-name="fixed">
                          <a layadmin-href="component/table/fixed" lay-text="">固定列</a>
                        </dd>
                        <dd data-name="operate">
                          <a layadmin-href="component/table/operate" lay-text="">数据操作</a>
                        </dd>
                        <dd data-name="parseData">
                          <a layadmin-href="component/table/parseData" lay-text="">解析任意数据格式</a>
                        </dd>
                        <dd data-name="onrow">
                          <a layadmin-href="component/table/onrow" lay-text="">监听行事件</a>
                        </dd>
                        <dd data-name="reload">
                          <a layadmin-href="component/table/reload" lay-text="">数据表格的重载</a>
                        </dd>
                        <dd data-name="initSort">
                          <a layadmin-href="component/table/initSort" lay-text="">设置初始排序</a>
                        </dd>
                        <dd data-name="cellEvent">
                          <a layadmin-href="component/table/cellEvent" lay-text="">监听单元格事件</a>
                        </dd>
                        <dd data-name="thead">
                          <a layadmin-href="component/table/thead" lay-text="">复杂表头</a>
                        </dd>
                      </dl>
                    </dd>
                    <dd data-name="laypage">
                      <a href="javascript:">分页</a>
                      <dl class="layui-nav-child">
                        <dd data-name="demo1">
                          <a layadmin-href="component/laypage/demo1" lay-text="layPage 功能演示一">功能演示一</a>
                        </dd>
                        <dd data-name="demo2">
                          <a layadmin-href="component/laypage/demo2" lay-text="layPage 功能演示二">功能演示二</a>
                        </dd>
                      </dl>
                    </dd>
                    <dd data-name="upload">
                      <a href="javascript:">上传</a>
                      <dl class="layui-nav-child">
                        <dd data-name="demo1">
                          <a layadmin-href="component/upload/demo1" lay-text="上传功能演示一">功能演示一</a>
                        </dd>
                        <dd data-name="demo2">
                          <a layadmin-href="component/upload/demo2" lay-text="上传功能演示二">功能演示二</a>
                        </dd>
                      </dl>
                    </dd>
                    <dd data-name="colorpicker">
                      <a layadmin-href="component/colorpicker/index">颜色选择器</a>
                    </dd>
                    <dd data-name="slider">
                      <a layadmin-href="component/slider/index">滑块组件</a>
                    </dd>
                    <dd data-name="rate">
                      <a layadmin-href="component/rate/index">评分</a>
                    </dd>
                    <dd data-name="carousel">
                      <a layadmin-href="component/carousel/index">轮播</a>
                    </dd>
                    <dd data-name="flow">
                      <a layadmin-href="component/flow/index">流加载</a>
                    </dd>
                    <dd data-name="util">
                      <a layadmin-href="component/util/index">工具</a>
                    </dd>
                    <dd data-name="code">
                      <a layadmin-href="component/code/index">代码修饰</a>
                    </dd>
                  </dl>
                </dd>
                <dd data-name="template" class="layui-nav-item">
                  <a href="javascript:" lay-tips="页面" lay-direction="2">
                    <i class="layui-icon layui-icon-template"></i>
                    <cite>页面</cite>
                  </a>
                  <dl class="layui-nav-child">
                    <dd><a layadmin-href="template/iconpage">内置图标</a></dd>
                    <dd><a layadmin-href="template/iconfont">扩展图标</a></dd>
                    <dd><a layadmin-href="template/personalpage">个人主页</a></dd>
                    <dd><a layadmin-href="template/addresslist">通讯录</a></dd>
                    <dd><a layadmin-href="template/caller">客户列表</a></dd>
                    <dd><a layadmin-href="template/goodslist">商品列表</a></dd>
                    <dd><a layadmin-href="template/msgboard">留言板</a></dd>
                    <dd><a layadmin-href="template/search">搜索结果</a></dd>
                    <dd><a href="user/reg" target="_blank">注册</a></dd>
                    <dd><a href="user/login" target="_blank">登入</a></dd>
                    <dd><a href="user/forget" target="_blank">忘记密码</a></dd>
                    <dd><a layadmin-href="template/tips/404">404页面不存在</a></dd>
                    <dd><a layadmin-href="template/tips/error">错误提示</a></dd>
                    <dd><a layadmin-href="//www.baidu.com/">百度一下</a></dd>
                    <dd><a layadmin-href="//www.layui.com/">layui官网</a></dd>
                    <dd><a layadmin-href="//www.layui.com/admin/">layuiAdmin官网</a></dd>
                  </dl>
                </dd>
                <dd data-name="excel" class="layui-nav-item">
                  <a href="javascript:" lay-tips="LAY_EXCEL" lay-direction="2">
                    <i class="layui-icon layui-icon-table"></i>
                    <cite>EXCEL</cite>
                  </a>
                  <dl class="layui-nav-child">
                    <dd>
                      <a layadmin-href="excel/index">excel导出操作演示</a>
                    </dd>
                    <dd>
                      <a layadmin-href="excel/tableExport/index">导出表格数据的DEMO</a>
                    </dd>
                    <dd>
                      <a layadmin-href="excel/noLayui/index">非LAYUI调用及原生表格导出</a>
                    </dd>
                    <dd>
                      <a layadmin-href="excel/borderExport/index">边框设置DEMO</a>
                    </dd>
                    <dd>
                      <a layadmin-href="excel/iframeExport/index">iframe子页面调用导出</a>
                    </dd>
                    <dd>
                      <a layadmin-href="excel/timeHandle/index">时间的导入导出控制</a>
                    </dd>
                  </dl>
                </dd>
                <dd data-name="app" class="layui-nav-item">
                  <a href="javascript:" lay-tips="应用" lay-direction="2">
                    <i class="layui-icon layui-icon-app"></i>
                    <cite>应用</cite>
                  </a>
                  <dl class="layui-nav-child">

                    <dd data-name="content">
                      <a href="javascript:">内容系统</a>
                      <dl class="layui-nav-child">
                        <dd data-name="list"><a layadmin-href="app/content/list">文章列表</a></dd>
                        <dd data-name="tags"><a layadmin-href="app/content/tags">分类管理</a></dd>
                        <dd data-name="comment"><a layadmin-href="app/content/comment">评论管理</a></dd>
                      </dl>
                    </dd>
                    <dd data-name="forum">
                      <a href="javascript:">社区系统</a>
                      <dl class="layui-nav-child">
                        <dd data-name="list"><a layadmin-href="app/forum/list">帖子列表</a></dd>
                        <dd data-name="replys"><a layadmin-href="app/forum/replys">回帖列表</a></dd>
                      </dl>
                    </dd>
                    <dd>
                      <a layadmin-href="app/message/index">消息中心</a>
                    </dd>
                    <dd data-name="workorder">
                      <a layadmin-href="app/workorder/list">工单系统</a>
                    </dd>
                  </dl>
                </dd>
                <dd data-name="senior" class="layui-nav-item">
                  <a href="javascript:" lay-tips="高级" lay-direction="2">
                    <i class="layui-icon layui-icon-senior"></i>
                    <cite>高级</cite>
                  </a>
                  <dl class="layui-nav-child">
                    <dd>
                      <a layadmin-event="im">LayIM 通讯系统</a>
                    </dd>
                    <dd data-name="echarts">
                      <a href="javascript:">Echarts集成</a>
                      <dl class="layui-nav-child">
                        <dd><a layadmin-href="senior/echarts/line">折线图</a></dd>
                        <dd><a layadmin-href="senior/echarts/bar">柱状图</a></dd>
                        <dd><a layadmin-href="senior/echarts/map">地图</a></dd>
                      </dl>
                    </dd>
                  </dl>
                </dd>
                <dd data-name="user" class="layui-nav-item">
                  <a href="javascript:" lay-tips="用户" lay-direction="2">
                    <i class="layui-icon layui-icon-user"></i>
                    <cite>用户</cite>
                  </a>
                  <dl class="layui-nav-child">
                    <dd>
                      <a layadmin-href="user/user/list">网站用户</a>
                    </dd>
                    <dd>
                      <a layadmin-href="user/administrators/list">后台管理员</a>
                    </dd>
                    <dd>
                      <a layadmin-href="user/administrators/role">角色管理</a>
                    </dd>
                  </dl>
                </dd>
                <dd data-name="set" class="layui-nav-item">
                  <a href="javascript:" lay-tips="设置" lay-direction="2">
                    <i class="layui-icon layui-icon-set"></i>
                    <cite>设置</cite>
                  </a>
                  <dl class="layui-nav-child">
                    <dd class="layui-nav-itemed">
                      <a href="javascript:">系统设置</a>
                      <dl class="layui-nav-child">
                        <dd><a layadmin-href="set/system/website">网站设置</a></dd>
                        <dd><a layadmin-href="set/system/email">邮件服务</a></dd>
                      </dl>
                    </dd>
                    <dd class="layui-nav-itemed">
                      <a href="javascript:">我的设置</a>
                      <dl class="layui-nav-child">
                        <dd><a layadmin-href="set/user/info">基本资料</a></dd>
                        <dd><a layadmin-href="set/user/password">修改密码</a></dd>
                      </dl>
                    </dd>
                  </dl>
                </dd>
                <dd data-name="get" class="layui-nav-item">
                  <a href="javascript:" layadmin-href="//www.layui.com/admin/#get" lay-tips="授权" lay-direction="2">
                    <i class="layui-icon layui-icon-auz"></i>
                    <cite>授权</cite>
                  </a>
                </dd>
              </dl>
            </li>

            <li data-name="vueDemo" class="layui-nav-item" id="LAY_side_vue" style="display: none">
              <a href="javascript:" lay-tips="vueDemo" lay-direction="2">
                <i class="layui-icon layui-icon-app"></i>
                <cite>vueDemo</cite>
              </a>
              <dl class="layui-nav-child">
                <dd class="layui-nav-itemed">
                  <a href="javascript:"><i class="layui-icon layui-icon-home"></i>VUE测试</a>
                  <dl class="layui-nav-child">
                    <dd><a layadmin-href="vue/demo">VUE-表单控件</a></dd>
                    <dd><a layadmin-href="vue/custom">VUE-自定义组件</a></dd>
                    <dd><a layadmin-href="vue/animation">VUE-过度动画</a></dd>
                    <dd><a layadmin-href="vue/mixin">VUE-混入</a></dd>
                    <dd><a layadmin-href="vue/grid">VUE-AG-表格</a></dd>
                    <dd><a layadmin-href="vue/drag">VUE-DRAG-表格</a></dd>
                    <dd><a layadmin-href="vue/ant">VUE-ANT-控件</a></dd>
                    <dd><a layadmin-href="vue/strap">BOOT-STRAP-控件</a></dd>
                  </dl>
                </dd>
              </dl>
            </li>
          </ul>
        </div>
      </div>

      <!-- 页面标签 -->
      <div class="layadmin-pagetabs" id="LAY_app_tabs">
        <div class="layui-icon layadmin-tabs-control layui-icon-prev" layadmin-event="leftPage"></div>
        <div class="layui-icon layadmin-tabs-control layui-icon-next" layadmin-event="rightPage"></div>
        <div class="layui-icon layadmin-tabs-control layui-icon-down">
          <ul class="layui-nav layadmin-tabs-select" lay-filter="layadmin-pagetabs-nav">
            <li class="layui-nav-item" lay-unselect>
              <a href="javascript:"></a>
              <dl class="layui-nav-child layui-anim-fadein">
                <dd layadmin-event="closeThisTabs"><a href="javascript:">关闭当前标签页</a></dd>
                <dd layadmin-event="closeOtherTabs"><a href="javascript:">关闭其它标签页</a></dd>
                <dd layadmin-event="closeAllTabs"><a href="javascript:">关闭全部标签页</a></dd>
              </dl>
            </li>
          </ul>
        </div>
        <div class="layui-tab" lay-unauto lay-allowClose="true" lay-filter="layadmin-layout-tabs">
          <ul class="layui-tab-title" id="LAY_app_tabsheader">
            <li lay-id="home/carousel" lay-attr="home/carousel" class="layui-this"><i class="layui-icon layui-icon-home"></i></li>
          </ul>
        </div>
      </div>
      
      
      <!-- 主体内容 -->
      <div class="layui-body" id="LAY_app_body">
        <div class="layadmin-tabsbody-item layui-show">
          <iframe src="home/carousel" frameborder="0" class="layadmin-iframe"></iframe>
        </div>
      </div>
      
      <!-- 辅助元素，一般用于移动设备下遮罩 -->
      <div class="layadmin-body-shade" layadmin-event="shade"></div>
    </div>
  </div>

  <script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/font-ext/iconfont.js"></script>
  <script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>
  <script>
  layui.config({
    base: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'layer', 'form', 'layedit','element', 'upload', 'table', 'jquery'], function(){
    var layer = layui.layer //layer弹层
        ,index = layui.index //index模块
        ,form = layui.form //form表单
        ,layedit = layui.layedit //layedit编辑框
        ,element = layui.element //element模块
        ,upload = layui.upload //upload模块
        ,table = layui.table //table表格
        ,$ = layui.$; //jQuery

    //定义setTimeout执行方法
    var timeFn = null;

    $("#LAY_side_config").dblclick(function(){
      // 取消上次延时未执行的方法
      clearTimeout(timeFn);

      //双击事件的执行代码
      if($('#LAY_side_finance').is(':hidden')) {
        layer.prompt({
          title: '输入密码'
          ,formType: 1
          ,offset: 'l'
        }, function(value, index){
          if(value === 'finance') {
              $("#LAY_side_finance").show();
              layer.close(index);
          }
        });

      } else {
          $("#LAY_side_finance").hide();
      }
    }).click(function(e){
      // 取消上次延时未执行的方法
      clearTimeout(timeFn);
      //执行延时
      timeFn = setTimeout(function(){
        //do function在此处写单击事件要执行的代码
        if($('#LAY_side_admin').is(':hidden')) {
            $("#LAY_side_admin").show();
        } else {
            $("#LAY_side_admin").hide();
        }

        if($('#LAY_side_vue').is(':hidden')) {
          $("#LAY_side_vue").show();
        } else {
          $("#LAY_side_vue").hide();
        }
      },300);
    });

    //页面跳转
    $('body').on('click', '*[layadmin-href]', function(){
      var othis = $(this)
          ,href = othis.attr('layadmin-href')
          ,text = othis.attr('lay-text');

      //执行跳转
      index.openTabsPage(href, text || othis.text());
    });
  });
  </script>
  
  <!-- 百度统计 -->
  <script>
  var _hmt = _hmt || [];
  (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?d214947968792b839fd669a4decaaffc";
    var s = document.getElementsByTagName("script")[0]; 
    s.parentNode.insertBefore(hm, s);
  })();
  </script>
</body>
</html>


