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
  <title>layuiAdmin 控制台主页一</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/font-awesome-4.7.0/css/font-awesome.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/font-awesome-4.7.0/css/font-montserrat.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>
  
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md8">
        <div class="layui-row layui-col-space15">
          <div class="layui-col-md6">
            <div class="layui-card">
              <div class="layui-card-header">快捷方式</div>
              <div class="layui-card-body">
                
                <div class="layui-carousel layadmin-carousel layadmin-shortcut">
                  <div carousel-item>
                    <ul class="layui-row layui-col-space10">
                      <li class="layui-col-xs3">
                        <a lay-href="home/homepage1">
                          <i class="layui-icon layui-icon-console"></i>
                          <cite>主页一</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="home/homepage2">
                          <i class="layui-icon layui-icon-chart"></i>
                          <cite>主页二</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="home/carousel">
                          <i class="layui-icon layui-icon-chart"></i>
                          <cite>主页三</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="component/layer/list">
                          <i class="layui-icon layui-icon-template-1"></i>
                          <cite>弹层</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a layadmin-event="im">
                          <i class="layui-icon layui-icon-chat"></i>
                          <cite>聊天</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="component/progress/index">
                          <i class="layui-icon layui-icon-find-fill"></i>
                          <cite>进度条</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="app/workorder/list">
                          <i class="layui-icon layui-icon-survey"></i>
                          <cite>工单</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="user/user/list">
                          <i class="layui-icon layui-icon-user"></i>
                          <cite>用户</cite>
                        </a>
                      </li>
                    </ul>
                    <ul class="layui-row layui-col-space10">
                      <li class="layui-col-xs3">
                        <a lay-href="set/system/website">
                          <i class="layui-icon layui-icon-set"></i>
                          <cite>设置</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="set/user/info">
                          <i class="layui-icon layui-icon-username"></i>
                          <cite>我的资料</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="component/laydate/demo1">
                          <i class="layui-icon layui-icon-date"></i>
                          <cite>日期时间</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="component/laypage/demo1">
                          <i class="layui-icon layui-icon-table"></i>
                          <cite>数据分页</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="component/slider/index">
                          <i class="layui-icon layui-icon-slider"></i>
                          <cite>滑块组件</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="component/code/index">
                          <i class="layui-icon layui-icon-fonts-code"></i>
                          <cite>代码修饰</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="component/timeline/index">
                          <i class="layui-icon layui-icon-engine"></i>
                          <cite>时间线</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="component/badge/index">
                          <i class="layui-icon layui-icon-rate-half"></i>
                          <cite>徽章</cite>
                        </a>
                      </li>
                    </ul>
                    <ul class="layui-row layui-col-space10">
                      <li class="layui-col-xs3">
                        <a lay-href="partitem/partItemIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-sitemap" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>分部分项</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="netplan/netPlanIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-calendar" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>网络计划</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="quantity/quantityIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-calculator" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>工程数量</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="company/companyIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-address-card-o" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>队伍信息</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="contract/contractIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-table" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>合同清单</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="budget/budgetIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-list" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>单项概算</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="guidance/guidanceIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-road" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>指导价</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="costlayer/costLayerIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-balance-scale" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>成本层</cite>
                        </a>
                      </li>
                    </ul>
                    <ul class="layui-row layui-col-space10">
                      <li class="layui-col-xs3">
                        <a lay-href="labour/labourIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-user-md" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>劳务层</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="material/materialIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-shopping-basket" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>物资层</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="equipment/equipmentIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-train" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>设备层</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="temporary/temporaryIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-building" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>临建层</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="demolition/demolitionIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-tree" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>征拆层</cite>
                        </a>
                      </li>
                      <li class="layui-col-xs3">
                        <a lay-href="indirect/indirectIframe?action=template">
                          <i class="layui-icon"><i class="fa fa-money" aria-hidden="true" style="margin-top: 15px"></i></i>
                          <cite>间接层</cite>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
                
              </div>
            </div>
          </div>
          <div class="layui-col-md6">
            <div class="layui-card">
              <div class="layui-card-header">待办事项</div>
              <div class="layui-card-body">

                <div class="layui-carousel layadmin-carousel layadmin-backlog">
                  <div carousel-item>
                    <ul class="layui-row layui-col-space10">
                      <li class="layui-col-xs6">
                        <a lay-href="app/content/comment" class="layadmin-backlog-body">
                          <h3>待审评论</h3>
                          <p><cite>66</cite></p>
                        </a>
                      </li>
                      <li class="layui-col-xs6">
                        <a lay-href="app/forum/list" class="layadmin-backlog-body">
                          <h3>待审帖子</h3>
                          <p><cite>12</cite></p>
                        </a>
                      </li>
                      <li class="layui-col-xs6">
                        <a lay-href="template/goodslist" class="layadmin-backlog-body">
                          <h3>待审商品</h3>
                          <p><cite>99</cite></p>
                        </a>
                      </li>
                      <li class="layui-col-xs6">
                        <a href="javascript:;" onclick="layer.tips('不跳转', this, {tips: 3});" class="layadmin-backlog-body">
                          <h3>待发货</h3>
                          <p><cite>20</cite></p>
                        </a>
                      </li>
                    </ul>
                    <ul class="layui-row layui-col-space10">
                      <li class="layui-col-xs6">
                        <a href="javascript:;" class="layadmin-backlog-body">
                          <h3>待审友情链接</h3>
                          <p><cite style="color: #FF5722;">5</cite></p>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="layui-col-md12">
            <div class="layui-card">
              <div class="layui-card-header">数据概览</div>
              <div class="layui-card-body">
                
                <div class="layui-carousel layadmin-carousel layadmin-dataview" data-anim="fade" lay-filter="LAY-index-dataview">
                  <div carousel-item id="LAY-index-dataview">
                    <div><i class="layui-icon layui-icon-loading1 layadmin-loading"></i></div>
                    <div></div>
                    <div></div>
                  </div>
                </div>
                
              </div>
            </div>
            <div class="layui-card">
              <div class="layui-tab layui-tab-brief layadmin-latestData">
                <ul class="layui-tab-title">
                  <li class="layui-this">今日热搜</li>
                  <li>今日热帖</li>
                </ul>
                <div class="layui-tab-content">
                  <div class="layui-tab-item layui-show">
                    <table id="LAY-index-topSearch"></table>
                  </div>
                  <div class="layui-tab-item">
                    <table id="LAY-index-topCard"></table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <div class="layui-col-md4">
        <div class="layui-card">
          <div class="layui-card-header">版本信息</div>
          <div class="layui-card-body layui-text">
            <table class="layui-table">
              <colgroup>
                <col width="100">
                <col>
              </colgroup>
              <tbody>
                <tr>
                  <td>当前版本</td>
                  <td>
                    <script type="text/html" template>
                      v{{ layui.admin.v }}
                      <a href="http://fly.layui.com/docs/3/" target="_blank" style="padding-left: 15px;">更新日志</a>
                    </script>
                  </td>
                </tr>
                <tr>
                  <td>基于框架</td>
                  <td>
                    <script type="text/html" template>
                      layui-v{{ layui.v }}
                    </script>
                 </td>
                </tr>
                <tr>
                  <td>主要特色</td>
                  <td>零门槛 / 响应式 / 清爽 / 极简</td>
                </tr>
                <tr>
                  <td>获取渠道</td>
                  <td style="padding-bottom: 0;">
                    <div class="layui-btn-container">
                      <a href="http://www.layui.com/admin/" target="_blank" class="layui-btn layui-btn-danger">获取授权</a>
                      <a href="http://fly.layui.com/download/layuiAdmin/" target="_blank" class="layui-btn">立即下载</a>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        
        <div class="layui-card">
          <div class="layui-card-header">效果报告</div>
          <div class="layui-card-body layadmin-takerates">
            <div class="layui-progress" lay-showPercent="yes">
              <h3>转化率（日同比 28% <span class="layui-edge layui-edge-top" lay-tips="增长" lay-offset="-15"></span>）</h3>
              <div class="layui-progress-bar" lay-percent="65%"></div>
            </div>
            <div class="layui-progress" lay-showPercent="yes">
              <h3>签到率（日同比 11% <span class="layui-edge layui-edge-bottom" lay-tips="下降" lay-offset="-15"></span>）</h3>
              <div class="layui-progress-bar" lay-percent="32%"></div>
            </div>
          </div>
        </div>
        
        <div class="layui-card">
          <div class="layui-card-header">实时监控</div>
          <div class="layui-card-body layadmin-takerates">
            <div class="layui-progress" lay-showPercent="yes">
              <h3>CPU使用率</h3>
              <div class="layui-progress-bar" lay-percent="58%"></div>
            </div>
            <div class="layui-progress" lay-showPercent="yes">
              <h3>内存占用率</h3>
              <div class="layui-progress-bar layui-bg-red" lay-percent="90%"></div>
            </div>
          </div>
        </div>
        
        <div class="layui-card">
          <div class="layui-card-header">产品动态</div>
          <div class="layui-card-body">
            <div class="layui-carousel layadmin-carousel layadmin-news" data-autoplay="true" data-anim="fade" lay-filter="news">
              <div carousel-item>
                <div><a href="http://fly.layui.com/docs/2/" target="_blank" class="layui-bg-red">layuiAdmin 快速上手文档</a></div>
                <div><a href="http://fly.layui.com/vipclub/list/layui-2.5.6/ext/modules/admin/" target="_blank" class="layui-bg-green">layuiAdmin 会员讨论专区</a></div> 
                <div><a href="http://www.layui.com/admin/#get" target="_blank" class="layui-bg-blue">获得 layui 官方后台模板系统</a></div>
              </div>
            </div>
          </div>
        </div>

        <div class="layui-card">
          <div class="layui-card-header">
            作者心语
            <i class="layui-icon layui-icon-tips" lay-tips="要支持的噢" lay-offset="5"></i>
          </div>
          <div class="layui-card-body layui-text layadmin-text">
            <p>一直以来，layui 秉承无偿开源的初心，虔诚致力于服务各层次前后端 Web 开发者，在商业横飞的当今时代，这一信念从未动摇。即便身单力薄，仍然重拾决心，埋头造轮，以尽可能地填补产品本身的缺口。</p>
            <p>在过去的一段的时间，我一直在寻求持久之道，已维持你眼前所见的一切。而 layuiAdmin 是我们尝试解决的手段之一。我相信真正有爱于 layui 生态的你，定然不会错过这一拥抱吧。</p>
            <p>子曰：君子不用防，小人防不住。请务必通过官网正规渠道，获得 <a href="http://www.layui.com/admin/" target="_blank">layuiAdmin</a>！</p>
            <p>—— 贤心（<a href="http://www.layui.com/" target="_blank">layui.com</a>）</p>
          </div>
        </div>
      </div>
      
    </div>
  </div>

  <script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js?t=1"></script>  
  <script>
  layui.config({
    base: '${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'console']);
  </script>
</body>
</html>


