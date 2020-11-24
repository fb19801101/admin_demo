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
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/res/js/ant-design-vue-1.6.5/antd.css">

  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/moment-2.24.0/moment.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/vue-v2.6.12/vue.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/ant-design-vue-1.6.5/antd.js"></script>
  <!--国际化-->
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/ant-design-vue-1.6.5/antd-with-locales.js"></script>
  <!--浏览器方式下有些事件无法响应，需要引入vue-dash-event插件-->
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/ant-design-vue-1.6.5/vue-dash-event.js"></script>

  <style>
    body {
      padding-top: 10px;
      padding-left: 30px;
    }
    .icons-list .anticon {
      margin-right: 6px;
      font-size: 24px;
      color: #1890ff;
    }
    #components-dropdown-demo-placement .ant-btn {
      margin-right: 8px;
      margin-bottom: 8px;
    }
    .icons-list .anticon {
    }
    h4 {
      margin: 16px 0;
      font-size: 14px;
      line-height: 1;
      font-weight: normal;
    }
    h4:first-child {
      margin-top: 0;
    }
    .ant-btn-group {
      margin-right: 8px;
    }
    #app {
      height: 1800px;
    }
    #app .ant-btn {
      margin-right: 8px;
      margin-bottom: 8px;
    }
    .red{
      color: red;
      top: 100px !important;
    }
    .red a{
      color:red !important;
    }
    .ant-pagination-item-link.red {
      color: red;
      padding-left: 6px;
      padding-right: 6px;
    }
    .itxst-mini .ant-pagination:not(:last-child) {
      margin-bottom: 25px;
    }
    .ant-select-dropdown-menu{
      max-height: 350px;
    }
    /*自定义按钮填充色*/
    .ant-radio-group-solid .ant-radio-button-wrapper-checked:not(.ant-radio-button-wrapper-disabled){
      background-color: red;
      border-color: red;
    }
    .ant-radio-button-wrapper-checked:not(.ant-radio-button-wrapper-disabled) {
      z-index: 1;
      color: red;
      background: #fff;
      border-color: red;
      -webkit-box-shadow: -1px 0 0 0 red;
      box-shadow: -1px 0 0 0 red;
    }
    /* to prevent the arrow overflow the popup container,
or the height is not enough when content is empty */
    .numeric-input .ant-tooltip-inner {
      min-width: 32px;
      min-height: 37px;
    }

    .numeric-input .numeric-input-title {
      font-size: 14px;
    }
  </style>
</head>
<body>
  <div>
    <h3>Ant Design Vue Button 按钮例子</h3>
    <div id="app-button">
      <a-button type="primary">Primary</a-button>
      <a-button>Default</a-button>
      <a-button type="dashed">Dashed</a-button>
      <a-button type="danger">Danger</a-button>
      <a-config-provider :autoInsertSpaceInButton="false">
        <a-button type="primary">按钮</a-button>
      </a-config-provider>
      <a-button type="primary">按钮</a-button>
      <a-button type="link">Link</a-button>
    </div>

    <hr>
    <h3>Ant Design Button Group 按钮组例子</h3>
    <div id="app-btn-group">
      <h4>Basic</h4>
      <a-button-group>
        <a-button>取消</a-button>
        <a-button type="primary">OK</a-button>
      </a-button-group>
      <a-button-group>
        <a-button disabled>左</a-button>
        <a-button disabled>中</a-button>
        <a-button disabled>右</a-button>
      </a-button-group>
      <a-button-group>
        <a-button type="primary">左</a-button>
        <a-button>中</a-button>
        <a-button type="dashed">右</a-button>
      </a-button-group>

      <h4>With Icon</h4>
      <a-button-group>
        <a-button type="primary"> <a-icon type="left" />Go back </a-button>
        <a-button type="primary">跳转<a-icon type="right" /> </a-button>
      </a-button-group>
    </div>

    <hr>
    <h3>Ant Design Button Ghost 幽灵按钮例子</h3>
    <div id="app-btn-ghost">
      <div :style="{ background: '#ddd', padding: '26px 16px 16px' }">
        <a-button type="primary" ghost>Primary</a-button>
        <a-button ghost>Default</a-button>
        <a-button type="dashed" ghost>Dashed</a-button>
        <a-button type="danger" ghost>Danger</a-button>
        <a-button type="link" ghost>Link</a-button>
      </div>
    </div>

    <hr>
    <h3>Ant Design Button Icon 图标按钮例子</h3>
    <div id="app-btn-icon">
      <a-button type="primary" shape="circle" icon="search"></a-button>
      <a-button type="primary" icon="lock">使用icon属性</a-button>
      <a-button shape="circle" icon="search"></a-button>
      <a-button icon="search">Search</a-button>
      <a-button shape="circle" icon="search"></a-button>
      <a-button>
        <a-icon type="pie-chart"> </a-icon>
        使用Icon组件
      </a-button>
      <a-button type="dashed" shape="circle" icon="search"></a-button>
      <a-button type="dashed" icon="search">Search</a-button>
    </div>

    <hr>
    <h3>Ant Design Button Load 按钮加载中例子</h3>
    <div id="app-btn-load">
      <div>
        <a-button type="primary" loading>
          Loading
        </a-button>
        <a-button type="primary" :loading="loading" @mouseenter="enterLoading">
          鼠标放此上面
        </a-button>
        <a-button type="primary" icon="poweroff" :loading="iconLoading" @click="enterIconLoading">
          点击按钮试试看
        </a-button>
      </div>
    </div>

    <hr>
    <h3>Ant Design Vue Button Size 按钮大小例子</h3>
    <div id="app-btn-size">
      <a-button type="primary" size="large">large大尺寸</a-button>
      <a-button size="default">default默认大小</a-button>
      <a-button type="dashed" size="small">small小尺寸</a-button>
    </div>

    <hr>
    <h3>Ant Design Vue Button Block 块按钮例子</h3>
    <div id="app-btn-block">
      <a-button type="primary" block>Primary</a-button>
      </br>  </br>
      <a-button block>Default</a-button>
      </br>  </br>
      <a-button type="dashed" block>Dashed</a-button>
      </br>  </br>
      <a-button type="danger" block>Danger</a-button>
      </br>  </br>
      <a-button type="link" block>Link</a-button>
    </div>

    <hr>
    <h3>Ant Design Icon 图标例子</h3>
    <div id="app-icon">
      <div class="icons-list">
        <a-icon type="home"></a-icon>
        <a-icon type="setting" theme="filled"></a-icon>
        <a-icon type="smile" theme="outlined"></a-icon>
        <a-icon type="sync" spin></a-icon>
        <a-icon type="smile" :rotate="180"></a-icon>
        <a-icon type="loading"></a-icon>
      </div>
    </div>

    <hr>
    <h3>Ant Design Vue Dropdown Button 下拉菜单例子</h3>
    <div id="app-dropdown-button">
      <div id="components-dropdown-demo-placement">
        <template v-for="(placement, index) in placements">
          <a-dropdown :placement="placement">
            <a-button>{{placement}}</a-button>
            <a-menu slot="overlay">
              <a-menu-item>
                <a target="_blank" rel="noopener noreferrer" href="http://www.itxst.com/">1st menu item</a>
              </a-menu-item>
              <a-menu-item>
                <a target="_blank" rel="noopener noreferrer" href="http://www.itxst.com/">2nd menu item</a>
              </a-menu-item>
              <a-menu-item>
                <a target="_blank" rel="noopener noreferrer" href="http://www.itxst.com/">3rd menu item</a>
              </a-menu-item>
            </a-menu>
          </a-dropdown>
          <br v-if="index === 2" />
        </template>
      </div>
    </div>

    <hr>
    <h3>Ant Design Vue Dropdown Menu 下拉菜单例子</h3>
    <div id="app-dropdown-menu">
      <a-dropdown>
        <a class="ant-dropdown-link" href="#"> Hover me <a-icon type="down" /> </a>
        <a-menu slot="overlay">
          <a-menu-item>
            <a href="javascript:;">1st menu item</a>
          </a-menu-item>
          <a-menu-item>
            <a href="javascript:;">2nd menu item</a>
          </a-menu-item>
          <a-menu-item>
            <a href="javascript:;">3rd menu item</a>
          </a-menu-item>
        </a-menu>
      </a-dropdown>
      <span>移入自动触发</span>
      <a-dropdown :trigger="['click']">
        <a class="ant-dropdown-link" href="#"> Click me <a-icon type="down" /> </a>
        <a-menu slot="overlay">
          <a-menu-item key="0">
            <a href="http://www.itxst.com/">1st menu item</a>
          </a-menu-item>
          <a-menu-item key="1">
            <a href="http://www.taobao.com/">2nd menu item</a>
          </a-menu-item>
          <a-menu-divider></a-menu-divider>
          <a-menu-item key="3">3rd menu item</a-menu-item>
        </a-menu>
      </a-dropdown>
      <span>点击触发菜单</span>
      <a-dropdown :trigger="['contextmenu']">
        <span style="user-select: none;color:#1890ff">Right Click on Me</span>
        <a-menu slot="overlay">
          <a-menu-item key="1">1st menu item</a-menu-item>
          <a-menu-item key="2">2nd menu item</a-menu-item>
          <a-menu-item key="3">3rd menu item</a-menu-item>
        </a-menu>
      </a-dropdown>
      <span>右键触发菜单</span>
    </div>

    <hr>
    <h3>Ant Design Vue Dropdown Hide 隐藏显示例子</h3>
    <div id="app-dropdown-hide">
      <a-button type="primary" @click="show">显示菜单</a-button>
      <a-button  @click="hide">隐藏菜单</a-button>
      <a-dropdown :visible="isVisible">
        <a class="ant-dropdown-link" href="javascript:void(0)"> Hover me <a-icon type="down" /> </a>
        <a-menu slot="overlay">
          <a-menu-item>
            <a href="javascript:;">1st menu item</a>
          </a-menu-item>
          <a-menu-item>
            <a href="javascript:;">2nd menu item</a>
          </a-menu-item>
          <a-menu-item>
            <a href="javascript:;">3rd menu item</a>
          </a-menu-item>
        </a-menu>
      </a-dropdown>
    </div>

    <hr>
    <h3>Ant Design Vue Dropdown Expand 自动展开下拉菜单例子</h3>
    <div id="app-dropdown-expand">
      <a-dropdown id="itxst" placement="bottomLeft" trigger="click">
        <a-button>2秒后自动展开菜单</a-button>
        <a-menu slot="overlay">
          <a-menu-item>
            <a target="_blank" href="http://www.alipay.com/">1st menu item</a>
          </a-menu-item>
          <a-menu-item>
            <a target="_blank" href="http://www.itxst.com/">2nd menu item</a>
          </a-menu-item>
          <a-menu-item>
            <a target="_blank" href="http://www.tmall.com/">3rd menu item</a>
          </a-menu-item>
        </a-menu>
      </a-dropdown>
      <a-button type="primary" @click="show">展开菜单</a-button>
    </div>

    <hr>
    <h3>Ant Design Vue Dropdown Attribute 属性</h3>
    <div id="app-dropdown-attribute">
      <a-dropdown  overlay-class-name="red" overlay-style="color:red">
        <a class="ant-dropdown-link" href="javascript:void(0)"> Hover me <a-icon type="down" /> </a>
        <a-menu slot="overlay">
          <a-menu-item>
            <a href="javascript:;">1st menu item</a>
          </a-menu-item>
          <a-menu-item>
            <a href="javascript:;">2nd menu item</a>
          </a-menu-item>
          <a-menu-item>
            <a href="javascript:;">3rd menu item</a>
          </a-menu-item>
        </a-menu>
      </a-dropdown>
    </div>

    <hr>
    <h3>Ant Design Vue Dropdown Button Event 事件</h3>
    <div id="app-dropdown-btn-event">
      <a-dropdown-button size="small" type="danger" @click="handleButtonClick" @visibleChange="changex">
        Dropdown
        <a-menu slot="overlay" @click="handleMenuClick">
          <a-menu-item key="1"><a-icon type="user"></a-icon>1st menu item</a-menu-item>
          <a-menu-item key="2"><a-icon type="user"></a-icon>2nd menu item</a-menu-item>
          <a-menu-item key="3"><a-icon type="user"></a-icon>3rd item</a-menu-item>
        </a-menu>
      </a-dropdown-button>
    </div>

    <hr>
    <h3>Ant Design Vue Breadcrumb 面包屑例子</h3>
    <div id="app-breadcrumb">
      <a-breadcrumb>
        <a-breadcrumb-item>首页</a-breadcrumb-item>
        <a-breadcrumb-item><a href="">产品管理</a></a-breadcrumb-item>
        <a-breadcrumb-item><a href="">产品详情</a></a-breadcrumb-item>
      </a-breadcrumb>
      <br>
      带图标
      <a-breadcrumb separator=">">
        <a-breadcrumb-item href="">
          <a-icon type="home" />
        </a-breadcrumb-item>
        <a-breadcrumb-item href="">
          <a-icon type="user" />
          <span>Application List</span>
        </a-breadcrumb-item>
        <a-breadcrumb-item>
          Application
        </a-breadcrumb-item>
      </a-breadcrumb>
      自定义分隔符 <br>
      <a-breadcrumb>
        <span slot="separator" style="color: red">-></span>
        <a-breadcrumb-item>Home</a-breadcrumb-item>
        <a-breadcrumb-item href="">Application Center</a-breadcrumb-item>
        <a-breadcrumb-item href="">Application List</a-breadcrumb-item>
        <a-breadcrumb-item>An Application</a-breadcrumb-item>
      </a-breadcrumb>
    </div>

    <hr>
    <h3>Ant Design Vue Affix 固钉固定内容元素</h3>
    <div id="app-affix">
      <div style="height:100px;background-color:#ededed"> itxst.com是一个网站,这个部分内容是不会被固定的</div>
      <a-affix :offset-top="50" @change="change">
        <div style="height:60px;background-color:red">红色区域会被固定在距离顶部50px的位置</div>
      </a-affix>
      <div style="height:100px;background-color:#ededed"> itxst.com是一个网站,这个部分内容是不会被固定的</div>
      <a-affix :offset-bottom="bottom">
        <a-button type="primary">当往下滚动距离底部200px时将会被固定</a-button>
      </a-affix>
    </div>

    <hr>
    <h3>Ant Design Vue Menu Horizontal 水平导航菜单</h3>
    <div id="app-menu-horizontal">
      <a-menu v-model="current" mode="horizontal">
        <a-menu-item key="home" @click="home"> <a-icon type="home"></a-icon>首页</a-menu-item>
        <a-menu-item key="product" disabled> <a-icon type="dropbox"></a-icon>禁用项</a-menu-item>
        <a-sub-menu>
          <span slot="title" class="submenu-title-wrapper"><a-icon type="share-alt"></a-icon>产品列表</span>
          <a-menu-item-group title="水果商品">
            <a-menu-item key="setting:1"> <a-icon type="windows"></a-icon>苹果</a-menu-item>
            <a-menu-item key="setting:2"> <a-icon type="apple"></a-icon>香蕉</a-menu-item>
          </a-menu-item-group>
          <a-menu-item-group title="蔬菜商品">
            <a-menu-item key="setting:3">胡萝卜</a-menu-item>
            <a-menu-item key="setting:4">西红柿</a-menu-item>
          </a-menu-item-group>
        </a-sub-menu>
        <a-menu-item key="itxst">
          <a href="http://www.itxst.com" target="_blank">友情链接 - Link</a>
        </a-menu-item>
      </a-menu>
    </div>

    <hr>
    <h3>Ant Design Vue Menu Inline 内嵌导航菜单</h3>
    <div id="app-menu-inline">
      <a-menu v-model="current" mode="inline" style="width: 256px">
        <a-menu-item key="home" @click="home"> <a-icon type="home"></a-icon>首页</a-menu-item>
        <a-menu-item key="product" disabled> <a-icon type="dropbox"></a-icon>禁用项</a-menu-item>
        <a-sub-menu>
          <span slot="title" class="submenu-title-wrapper"><a-icon type="share-alt"></a-icon>产品列表</span>
          <a-menu-item-group title="水果商品">
            <a-menu-item key="setting:1"> <a-icon type="windows"></a-icon>苹果</a-menu-item>
            <a-menu-item key="setting:2"> <a-icon type="apple"></a-icon>香蕉</a-menu-item>
          </a-menu-item-group>
          <a-menu-item-group title="蔬菜商品">
            <a-menu-item key="setting:3">胡萝卜</a-menu-item>
            <a-menu-item key="setting:4">西红柿</a-menu-item>
          </a-menu-item-group>
        </a-sub-menu>
        <a-menu-item key="itxst">
          <a-icon type="apple"></a-icon>  友情链接
        </a-menu-item>
      </a-menu>
    </div>

    <hr>
    <h3>Ant Design Vue Menu Vertical 垂直导航菜单</h3>
    <div id="app-menu-vertical">
      <a-menu v-model="current" mode="vertical" style="width: 256px">
        <a-menu-item key="home" @click="home"> <a-icon type="home"></a-icon>首页</a-menu-item>
        <a-menu-item key="product" disabled> <a-icon type="dropbox"></a-icon>禁用项</a-menu-item>
        <a-sub-menu>
          <span slot="title" class="submenu-title-wrapper"><a-icon type="share-alt"></a-icon>产品列表</span>
          <a-menu-item-group title="水果商品">
            <a-menu-item key="setting:1"> <a-icon type="windows"></a-icon>苹果</a-menu-item>
            <a-menu-item key="setting:2"> <a-icon type="apple"></a-icon>香蕉</a-menu-item>
          </a-menu-item-group>
          <a-menu-item-group title="蔬菜商品">
            <a-menu-item key="setting:3">胡萝卜</a-menu-item>
            <a-menu-item key="setting:4">西红柿</a-menu-item>
          </a-menu-item-group>
        </a-sub-menu>
        <a-menu-item key="itxst">
          <a-icon type="apple"></a-icon>  友情链接
        </a-menu-item>
      </a-menu>
    </div>

    <hr>
    <h3>Ant Design Vue Menu Collapsed 缩起展开内嵌菜单</h3>
    <div id="app-menu-collapsed" style="width: 256px">
      <a-button type="primary" @click="toggleCollapsed" style="margin-bottom: 16px" >
        <a-icon :type="collapsed ? 'menu-unfold' : 'menu-fold'" />
      </a-button>
      <a-menu  mode="inline" :inline-collapsed="collapsed"  :default-selected-keys="['itxst']"  :default-open-keys="['itxst']">
        <a-menu-item key="home" @click="home"> <a-icon type="home"></a-icon>
          <span>首页</span>
        </a-menu-item>
        <a-menu-item key="product" disabled> <a-icon type="dropbox"></a-icon>
          <span>禁用项</span>
        </a-menu-item>
        <a-sub-menu key="prod">
          <span slot="title" class="submenu-title-wrapper"><a-icon type="share-alt"></a-icon><span>产品列表</span></span>
          <a-menu-item-group title="水果商品">
            <a-menu-item key="setting:1"> <a-icon type="windows"></a-icon>苹果</a-menu-item>
            <a-menu-item key="setting:2"> <a-icon type="apple"></a-icon>香蕉</a-menu-item>
          </a-menu-item-group>
          <a-menu-item-group title="蔬菜商品">
            <a-menu-item key="setting:3">胡萝卜</a-menu-item>
            <a-menu-item key="setting:4">西红柿</a-menu-item>
          </a-menu-item-group>
        </a-sub-menu>
        <a-menu-item key="itxst">
          <a-icon type="apple"></a-icon> <span>友情链接</span>
        </a-menu-item>
      </a-menu>
    </div>

    <hr>
    <h3>Ant Design Vue Menu Parent 只展开当前父级菜单</h3>
    <div id="app-menu-parent">
      <a-menu  v-on:open-change="openChange"  :open-keys="openKeys" mode="inline" style="width: 256px">
        <a-menu-item key="home"> <a-icon type="home"></a-icon>首页</a-menu-item>
        <a-menu-item key="product" disabled> <a-icon type="dropbox"></a-icon>禁用项</a-menu-item>
        <a-sub-menu key="sub1">
          <span slot="title" class="submenu-title-wrapper"><a-icon type="share-alt"></a-icon>产品列表</span>
          <a-menu-item-group title="水果商品">
            <a-menu-item key="setting:1"> <a-icon type="windows"></a-icon>苹果</a-menu-item>
            <a-menu-item key="setting:2"> <a-icon type="apple"></a-icon>香蕉</a-menu-item>
          </a-menu-item-group>
          <a-menu-item-group title="蔬菜商品">
            <a-menu-item key="setting:3">胡萝卜</a-menu-item>
            <a-menu-item key="setting:4">西红柿</a-menu-item>
          </a-menu-item-group>
        </a-sub-menu>
        <a-sub-menu key="sub2">
          <span slot="title" class="submenu-title-wrapper"><a-icon type="windows"></a-icon>订单列表</span>
          <a-menu-item-group title="水果商品">
            <a-menu-item key="order:1"> <a-icon type="windows"></a-icon>苹果</a-menu-item>
            <a-menu-item key="order:2"> <a-icon type="apple"></a-icon>香蕉</a-menu-item>
          </a-menu-item-group>
          <a-menu-item-group title="蔬菜商品">
            <a-menu-item key="order:3">胡萝卜</a-menu-item>
            <a-menu-item key="order:4">西红柿</a-menu-item>
          </a-menu-item-group>
        </a-sub-menu>
        <a-menu-item key="itxst">
          <a-icon type="apple"></a-icon>  友情链接
        </a-menu-item>
      </a-menu>
    </div>

    <hr>
    <h3>Ant Design Vue Menu Switch 动态切换导航菜单的模式和主题</h3>
    <div id="app-menu-switch">
      <a-switch :defaultChecked="false" @change="changeMode" ></a-switch> Change Mode
      <span className="ant-divider" style="margin: 0 1em" />
      <a-switch :defaultChecked="false" @change="changeTheme"  ></a-switch> Change Theme
      <br />
      <a-menu :mode="mode" :theme="theme" style="width: 256px">
        <a-menu-item key="home" > <a-icon type="home"></a-icon>首页</a-menu-item>
        <a-menu-item key="product" disabled> <a-icon type="dropbox"></a-icon>禁用项</a-menu-item>
        <a-sub-menu>
          <span slot="title" class="submenu-title-wrapper"><a-icon type="share-alt"></a-icon>产品列表</span>
          <a-menu-item-group title="水果商品">
            <a-menu-item key="setting:1"> <a-icon type="windows"></a-icon>苹果</a-menu-item>
            <a-menu-item key="setting:2"> <a-icon type="apple"></a-icon>香蕉</a-menu-item>
          </a-menu-item-group>
          <a-menu-item-group title="蔬菜商品">
            <a-menu-item key="setting:3">胡萝卜</a-menu-item>
            <a-menu-item key="setting:4">西红柿</a-menu-item>
          </a-menu-item-group>
        </a-sub-menu>
        <a-menu-item key="itxst">
          <a-icon type="apple"></a-icon>  友情链接
        </a-menu-item>
      </a-menu>
    </div>

    <hr>
    <h3>Ant Design Vue Menu Attribute Event 导航菜单属性及事件</h3>
    <div id="app-menu-event">
      <a-menu multiple="true" v-on:open-change="openChange" @click="home" @deselect="deselect" @select="select"
              style="width: 256px">
        <a-menu-item key="home"> <a-icon type="home"></a-icon>首页</a-menu-item>
        <a-menu-item key="product" disabled> <a-icon type="dropbox"></a-icon>禁用项</a-menu-item>
        <a-menu-item key="itxst">
          <a-icon type="apple"></a-icon> <span>ITXST.COM</span>
        </a-menu-item>
        <a-sub-menu key="sub1">
          <span slot="title" class="submenu-title-wrapper"><a-icon type="share-alt"></a-icon>产品列表</span>
          <a-menu-item-group title="水果商品">
            <a-menu-item key="setting:1"> <a-icon type="windows"></a-icon>苹果</a-menu-item>
            <a-menu-item key="setting:2"> <a-icon type="apple"></a-icon>香蕉</a-menu-item>
          </a-menu-item-group>
          <a-menu-item-group title="蔬菜商品">
            <a-menu-item key="setting:3">胡萝卜</a-menu-item>
            <a-menu-item key="setting:4">西红柿</a-menu-item>
          </a-menu-item-group>
        </a-sub-menu>
      </a-menu>
    </div>

    <hr>
    <h3>Ant Design Vue Pagination Goto 跳转</h3>
    <div id="app-page-goto">
      <a-config-provider :locale="zh_CN">
        <a-pagination
            show-quick-jumper
            show-size-changer
            :page-size.sync="pageSize"
            v-on:show-size-change= "onShowSizeChange"
            :total="500"
            v-model="current"
        />
      </a-config-provider>
    </div>

    <hr>
    <h3>Ant Design Vue Pagination Dropdown 自定义下拉选项</h3>
    <div id="app-page-dropdown">
      <a-pagination
          show-size-changer
          :page-size.sync="pageSize"
          v-on:show-size-change= "onShowSizeChange"
          :total="500"
          v-model="current"
          :page-size-options="pageSizeOptions"
      >
        <template slot="buildOptionText" slot-scope="props">
          <span v-if="props.value!=='100'">{{props.value}}台/页</span>
          <span v-if="props.value==='100'">全部数据</span>
        </template>
      </a-pagination>
    </div>

    <hr>
    <h3>Ant Design Vue Pagination Limit 选择每页数量例子</h3>
    <div id="app-page-limit">
      <a-pagination v-model="current" :total="500" />
    </div>

    <hr>
    <h3>Ant Design Vue Pagination Text 自定义上一页下一页和页码文字</h3>
    <div id="app-page-text">
      <a-pagination v-model="current" :item-render="itemRender" :total="50" />
    </div>

    <hr>
    <h3>Ant Design Vue Pagination Style 样式风格</h3>
    <div id="app-page-style">
      <a-config-provider :locale="zh_CN">
        <div class="itxst-mini">
          <!--风格1-->
          <a-pagination size="small" :total="100" :page-size="pageSize" v-model="current" ></a-pagination>
          <!--风格2-->
          <a-pagination size="small" :total="100" :page-size="pageSize" v-model="current" show-size-changer show-quick-jumper   v-on:show-size-change="onShowSizeChange"></a-pagination>
          <!--风格3-->
          <a-pagination size="small" :total="100"  :page-size="pageSize"  v-model="current"   v-on:show-size-change="onShowSizeChange" :show-total="total => `总计 ${total} 条`"  show-size-changer show-quick-jumper ></a-pagination>
        </div>
      </a-config-provider>
    </div>

    <hr>
    <h3>Ant Design Vue Pagination Event 分页组件事件</h3>
    <div id="app-page-event">
      <a-config-provider :locale="zh_CN">
        <a-pagination
            :default-current="3"
            :default-pageSize="20"
            :page-size="10"
            :hide-on-singlePage="showSizeChanger"
            :page-size-options="pageSizeOptions"
            :show-size-changer="true"
            :show-quick-jumper="showQuickJumper"
            :show-total="showTotal"
            :item-render="itemRender"
            :total="60"
        />
      </a-config-provider>
    </div>

    <hr>
    <h3>Ant Design Vue Steps Base 步骤条基础用法</h3>
    <div id="app-step-base">
      <template>
        <div class="steps">
          <a-steps :current="1">
            <a-step>
              <template slot="title">
                注册
              </template>
              <span slot="description">输入用户名和密码</span>
            </a-step>
            <a-step title="手机号" description="验证手机号" ></a-step>
            <a-step title="邮箱" description="验证工作邮箱" ></a-step>
            <a-step title="完成" description="完成账号注册"></a-step>
          </a-steps>
        </div>
      </template>
    </div>

    <hr>
    <h3>Ant Design Vue Steps Mini 步骤条迷你样式</h3>
    <div id="app-step-mini">
      <template>
        <div class="steps">
          <a-steps :current="1" size="small">
            <a-step>
              <template slot="title">
                注册
              </template>
              <span slot="description">输入用户名和密码</span>
            </a-step>
            <a-step title="手机号" description="验证手机号" ></a-step>
            <a-step title="邮箱" description="验证工作邮箱" ></a-step>
            <a-step title="完成" description="完成账号注册"></a-step>
          </a-steps>
        </div>
      </template>
    </div>

    <hr>
    <h3>Ant Design Vue Steps Vertical 步骤条竖直方向用法</h3>
    <div id="app-step-vertical">
      <template>
        <div class="steps">
          <a-steps :current="1" direction="vertical">
            <a-step>
              <template slot="title">
                注册
              </template>
              <span slot="description">输入用户名和密码</span>
            </a-step>
            <a-step title="手机号" description="验证手机号" ></a-step>
            <a-step title="邮箱" description="验证工作邮箱" ></a-step>
            <a-step title="完成" description="完成账号注册"></a-step>
          </a-steps>
        </div>
      </template>
    </div>

    <hr>
    <h3>Ant Design Vue Steps Error 步骤条错误状态用法</h3>
    <div id="app-step-error">
      <template>
        <div class="steps">
          <a-steps :current="1"   status="error" >
            <a-step>
              <template slot="title">
                注册
              </template>
              <span slot="description">输入用户名和密码</span>
            </a-step>
            <a-step title="手机号" description="验证手机号" ></a-step>
            <a-step title="邮箱"  status="error" description="验证工作邮箱" ></a-step>
            <a-step title="完成" description="完成账号注册"></a-step>
          </a-steps>
        </div>
      </template>
    </div>

    <hr>
    <h3>Ant Design Vue Steps Dot 步骤条点状步骤用法</h3>
    <div id="app-step-dot">
      <template>
        <div class="steps">
          <a-steps :current="1"  progress-dot >
            <a-step>
              <template slot="title">
                注册
              </template>
              <span slot="description">输入用户名和密码</span>
            </a-step>
            <a-step title="手机号" description="验证手机号" ></a-step>
            <a-step title="邮箱"    description="验证工作邮箱" ></a-step>
            <a-step title="完成" description="完成账号注册"></a-step>
          </a-steps>
        </div>
      </template>
    </div>

    <hr>
    <h3>Ant Design Vue Steps 步骤条自定义点状步骤用法</h3>
    <div id="app-step-cdot">
      <template>
        <div class="steps">
          <a-steps :current="1">
            <a-popover slot="progressDot" slot-scope="{index, status, prefixCls}">
              <template slot="content">
                <span>step {{index}} status: {{status}}</span>
              </template>
              <span :class="`${prefixCls}-icon-dot`"></span>
            </a-popover>
            <a-step>
              <template slot="title">
                注册
              </template>
              <span slot="description">输入用户名和密码</span>
            </a-step>
            <a-step title="手机号" description="验证手机号" ></a-step>
            <a-step title="邮箱"    description="验证工作邮箱" ></a-step>
            <a-step title="完成" description="完成账号注册"></a-step>
          </a-steps>
        </div>
      </template>
    </div>

    <hr>
    <h3>Ant Design Vue Steps Icon 步骤条自定义图标和html内容</h3>
    <div id="app-step-icon">
    <template>
      <div class="steps">
        <a-steps :current="1">
          <a-step>
            <template slot="title">
              <div class="red">html内容</div>
            </template>
            <template slot="description">
              <div class="red">这里可以是html内容</div>
            </template>
            <a-icon type="user" slot="icon"></a-icon>
          </a-step>
          <a-step title="手机号" description="验证手机号">
            <a-icon type="solution" slot="icon"></a-icon>
          </a-step>
          <a-step title="邮箱" description="验证工作邮箱">
            <a-icon type="loading" slot="icon"></a-icon>
          </a-step>
          <a-step title="完成" description="完成账号注册">
            <a-icon type="smile-o" slot="icon"></a-icon>
          </a-step>
        </a-steps>
      </div>
    </template>
  </div>
  </div>
  <script>
      //国际化设置
      const { ConfigProvider, locales } = window.antd;
      Vue.use(window['vue-dash-event']);

      ////////////////////////////////////////////
      //Ant Design Vue Button 按钮例子
      new Vue({
          el: '#app-button',
          data: {
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Button Group 按钮组合例子
      new Vue({
          el: '#app-btn-group',
          data: {
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Button Ghost 幽灵按钮例子
      new Vue({
          el: '#app-btn-ghost',
          data: {
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Button Icon 图标按钮例子
      new Vue({
          el: '#app-btn-icon',
          data: {
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Button Load 按钮加载中例子
      new Vue({
          el: '#app-btn-load',
          data() {
              return {
                  loading: false,
                  iconLoading: false,
              };
          },
          methods: {
              enterLoading() {
                  this.loading = true;
              },
              enterIconLoading() {
                  this.iconLoading = { delay: 1000 };
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Button Size 按钮大小例子
      new Vue({
          el: '#app-btn-size',
          data: {
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Button Block 块按钮例子
      new Vue({
          el: '#app-btn-block',
          data: {
          }
      });

      ////////////////////////////////////////////
      //Ant Design Icon 图标例子
      new Vue({
          el: '#app-icon',
          data: {
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Dropdown Button下拉菜单例子
      new Vue({
          el: '#app-dropdown-button',
          data() {
              return {
                  placements: [
                      'bottomLeft',
                      'bottomCenter',
                      'bottomRight',
                      'topLeft',
                      'topCenter',
                      'topRight',
                  ],
              };
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Dropdown Menu 下拉菜单例子
      new Vue({
          el: '#app-dropdown-menu',
          data: {
              bottom: 200
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Dropdown Hide 隐藏显示例子
      new Vue({
          el: '#app-dropdown-hide',
          data: {
              isVisible: false
          },
          methods:{
              show:function(){
                  this.isVisible=true;
              },
              hide:function(){
                  this.isVisible=false;
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Dropdown Expand 自动展开下拉菜单例子
      new Vue({
          el: '#app-dropdown-expand',
          methods:{
              show:function(){
                  document.getElementById("itxst").click();
              }

          }
      });
      //展开id为itxst的下拉菜单
      setTimeout(function () {
          document.getElementById("itxst").click();
      }, 2000);


      ////////////////////////////////////////////
      //Ant Design Vue Dropdown Attribute 属性
      // Dropdown属性
      // 属性	说明	类型	默认值
      // disabled	是否禁用菜单
      // <a-dropdown  disabled="true"  >...</a-dropdown>
      // boolean	false
      // ----------------------------------------------
      // getPopupContainer	菜单渲染父节点。默认渲染到 body ，如遇到菜单滚动定位问题，试试修改为滚动的区域，并相对其定位。
      // <a-dropdown  :getPopupContainer=" triggerNode => {return triggerNode.parentNode || document.body; }">
      //     或者
      //     <a-dropdown   :getPopupContainer="{()=>document.querySelector('.itxst')}">
      // Function(triggerNode)
      // () => document.body
      // ----------------------------------------------
      // overlay(slot-scope)	菜单	Menu
      // ----------------------------------------------
      // overlayClassName 注意直接引用JS的是 overlay-class-name	下拉菜单根元素的样式表类名称
      // <a-dropdown  overlayClassName="red" >浏览器引用JS方式如下
      //     <a-dropdown  overlay-class-name="red" >
      //     在线试一试
      //  string
      // -
      // ----------------------------------------------
      // overlayStyle 注意直接引用JS的是overlay-style	下拉菜单根元素的样式
      // <a-dropdown  :overlayStyle='{"background-color":"red  !important" }'>
      //     浏览器引用JS方式如下
      //     <a-dropdown  :overlay-style='{"background-color":"red  !important" }'>
      // object
      // -
      // ----------------------------------------------
      // placement	弹出位置：
      // bottomLeft bottomCenter bottomRight topLeft topCenter topRight
      // string
      // bottomLeft
      // ----------------------------------------------
      // trigger	Array<click|hover|contextmenu>
      // <a-dropdown  placement="bottomLeft" trigger="['click','contextmenu']">
      // 触发下拉的行为, 移动端不支持 hover
      // ----------------------------------------------
      // visible(v-model)	菜单是否显示
      // <a-dropdown :visible="false">
      // boolean
      // -
      // ----------------------------------------------
      //  Dropdown.Button属性
      // 属性	说明	类型	默认值
      // disabled	是否禁用菜单
      // <a-dropdown-button  disabled="true"  >...</a-dropdown-button>
      // boolean
      // false
      // ----------------------------------------------
      // overlay(slot-scope)	菜单	Menu
      // ----------------------------------------------
      // placement	弹出位置：
      // bottomLeft bottomCenter bottomRight topLeft topCenter topRight
      // string
      // bottomLeft
      // ----------------------------------------------
      // trigger	Array<click|hover|contextmenu>
      // <a-dropdown-button  placement="bottomLeft" trigger="['click','contextmenu']">
      // 触发下拉的行为, 移动端不支持 hover
      // ----------------------------------------------
      // visible(v-model)	菜单是否显示
      // <a-dropdown :visible="false">
      // boolean
      // -
      // ----------------------------------------------
      // size 大小 small large default
      // <a-dropdown-button size="small" @click="handleButtonClick">
      // string
      // default
      // ----------------------------------------------
      // type	default primary dashed danger link
      // <a-dropdown-button type="primary" @click="handleButtonClick">
      // string
      // default
      new Vue({
          el: '#app-dropdown-attribute',
          data: {
              bottom: 200
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Dropdown Button Event 事件
      new Vue({
          el: '#app-dropdown-btn-event',
          data: {
              bottom: 200
          },
          methods: {
              handleButtonClick(e) {
                  console.log('click left button', e);
              },
              handleMenuClick(e) {
                  console.log('click', e);
              }, changex(e) {
                  alert(1)
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Breadcrumb 面包屑例子
      new Vue({
          el: '#app-breadcrumb',
          data: {
              bottom: 200
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Affix 固钉固定内容元素
      // Affix 固钉可以把内容元素固定在顶部或者顶部，当网页内容很长超过一屏滚动时固定在顶部或者底部。
      // Affix 属性
      // 属性	类型	说明
      // offset-top	整数	当往下滚动时，对象元素距离offset-top的值时，元素将会被固定不再往下滚动。
      // node.js web开发环境下属性名称为offsetTop
      // offset-bottom	整数	往上滚动时， 元素将会被固定不再往上滚动
      // node.js web开发环境下属性名称为offsetBottom
      // target	函数	设置 Affix 需要监听其滚动事件的元素，默认() => window，如果理解不了看例子吧
      new Vue({
          el: '#app-affix',
          data: {
              bottom: 200
          },
          methods: {
              change(affixed) {
                  if(affixed==true) {
                      console.log("到达固定的位置");
                  } else {
                      console.log("离开固定的位置");
                  }
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Menu Horizontal 水平导航菜单
      new Vue({
          el: '#app-menu-horizontal',
          data: {
              current: ['home']
          },
          methods: {
              home: function () {
                  alert('你点击了首页')
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Menu Inline 内嵌导航菜单
      new Vue({
          el: '#app-menu-inline',
          data: {
              current: ['home']
          },
          methods:{
              home:function(){
                  alert('你点击了首页')
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Menu Vertical 垂直导航菜单
      new Vue({
          el: '#app-menu-vertical',
          data: {
              current: ['home']
          },
          methods:{
              home:function(){
                  alert('你点击了首页')
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Menu Collapsed 缩起展开内嵌菜单
      new Vue({
          el: '#app-menu-collapsed',
          data: {
              collapsed:false
          },
          methods:{
              home:function(){
                  alert('你点击了首页')
              },
              toggleCollapsed() {
                  this.collapsed = !this.collapsed;
              },
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Menu Parent 只展开当前父级菜单
      new Vue({
          el: '#app-menu-parent',
          data: {
              msg: "Welcome to Your Vue.js App",
              rootSubmenuKeys: ['sub1', 'sub2'],
              openKeys: ['sub1'],
          },
          methods: {
              openChange(openKeys) {

                  const latestOpenKey = openKeys.find(key => this.openKeys.indexOf(key) === -1);
                  if (this.rootSubmenuKeys.indexOf(latestOpenKey) === -1) {
                      this.openKeys = openKeys;
                  } else {
                      this.openKeys = latestOpenKey ? [latestOpenKey] : [];
                  }
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Menu Switch 动态切换导航菜单的模式和主题
      new Vue({
          el: '#app-menu-switch',
          data: {
              mode: 'inline',
              theme: 'light',
          },
          methods: {
              changeMode(checked) {
                  this.mode = checked ? 'vertical' : 'inline';
              },
              changeTheme(checked) {
                  this.theme = checked ? 'dark' : 'light';
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Menu Attribute Event 导航菜单属性及事件
      //     ant design vue menu 导航菜单属性及事件。导航菜单由菜单、菜单项、子菜单、项分组、分割线组成。
      // ----Menu----
      //      └──Menu.Item 菜单项
      //      └──Menu.SubMenu  子菜单
      //      └──Menu.ItemGroup 菜单项分组
      //      └──Menu.Divider   分割线
      //     在菜单项有给重要的属性叫key,这个一定要先了解，可以理解成Id。
      //     <a-menu-item key="home" >
      //         <a-icon type="home"></a-icon><span>首页</span>
      //     </a-menu-item>
      //------------------------------------------------------
      // Menu导航菜单属性
      // 属性名称	说明	类型	默认值
      // defaultOpenKeys	初始展开的 SubMenu 子菜单项 key 数组
      // <a-menu v-model="current" defaultOpenKeys="['sub1']"  mode="inline" >
      //     网页直接引用js方式
      //     <a-menu v-model="current" default-open-keys="['sub1']"  mode="inline" >
      // string[]
      //------------------------------------------------------
      // defaultSelectedKeys	初始时选中的菜单项
      // <a-menu  defaultSelectedKeys="['home']"  mode="inline" >
      //     网页直接引用js方式
      //     <a-menu  default-selected-keys="['home']"  mode="inline" >
      //     如果设置了v-model="current"属性defaultSelectedKeys就会无效
      // string[]
      //------------------------------------------------------
      // forceSubMenuRender	在子菜单展示之前就渲染进 DOM	boolean	false
      //------------------------------------------------------
      // inlineCollapsed	inline 时菜单是否收起状态（收起状态）,这时需要注意的是,下面的“首页”必须用span标签，否则，收起状态会看文字，而不是只有图标。
      // <a-menu-item key="home" >
      //     <a-icon type="home"></a-icon><span>首页</span>
      //     </a-menu-item>
      // boolean
      // false
      //------------------------------------------------------
      // inlineIndent	inline 模式的菜单文字图标距离左边的间隔	number	24
      //------------------------------------------------------
      // mode	支持水平、垂直、和内嵌模式三种 vertical vertical-right horizontal inline	 string	vertical
      //------------------------------------------------------
      // multiple	是否允许选中多个菜单项，效果图如下A001	boolean	false
      //------------------------------------------------------
      // selectable	是否允许选中   (ITXST.COM测试后无效)	boolean	true
      //------------------------------------------------------
      // selectedKeys(v-model)	设置选中的菜单项 key 数组
      // <a-menu selectedKeys="['home','itxst']" mode="inline" style="width: 256px">
      //     浏览器引入js网址的方式
      //     <a-menu selected-keys="['home','itxst']" mode="inline" style="width: 256px">
      // string[]
      //------------------------------------------------------
      //  subMenuCloseDelay	鼠标离开子菜单后多少秒后关闭子菜单，单位：秒
      // (ITXST.COM测试后无效)
      // number
      // 0.1
      //------------------------------------------------------
      // subMenuOpenDelay	鼠标进入子菜单后多少秒后展开子菜单，单位：秒
      // (ITXST.COM测试后无效)
      // number
      // 0
      //------------------------------------------------------
      // theme	主题颜色 string: light dark	string	light
      //------------------------------------------------------
      // overflowedIndicator	自定义 Menu 折叠时(收缩时)的图标	DOM	<span>···</span>
      //------------------------------------------------------
      // Menu导航菜单事件
      // 事件名称  说明	回调参数
      // click	点击 MenuItem 菜单项调用此函数	function({ item, key, keyPath })
      //------------------------------------------------------
      // deselect	取消选中时调用，仅在 multiple 生效	function({ item, key, selectedKeys })
      //------------------------------------------------------
      // openChange	SubMenu 展开/关闭的回调  在webpack开发环境中
      // <a-menu  @openChange="openChange"  " mode="inline" style="width: 256px">
      //     在网页直接引入js的环境中
      //     <a-menu  v-on:open-change="openChange"   mode="inline" style="width: 256px">
      //     具体使用方法请看下方
      // function(openKeys: string[])
      //------------------------------------------------------
      // select	被选中时调用	function({ item, key, selectedKeys })
      //------------------------------------------------------
      // Menu.Item菜单项属性
      // 属性名称	说明	类型	默认值
      // disabled	是否禁用菜单项	boolean	false
      //------------------------------------------------------
      // key	item 菜单项的唯一标志	string
      //------------------------------------------------------
      // title	设置收缩时展示的悬浮标题	string
      //------------------------------------------------------
      // Menu.SubMenu子菜单事件
      // 属性名称	说明	回调参数
      // titleClick	点击子菜单标题事件	({ key, domEvent })
      //------------------------------------------------------
      // enu.ItemGroup菜单分组
      // 菜单项分组Menu.ItemGroup 的子元素必须是 MenuItem.
      //------------------------------------------------------
      //  Menu.Divider菜单项分割线
      // 菜单项分割线，只用在弹出子菜单内。
      new Vue({
          el: '#app-menu-event',
          data: {
              current: ['home']
          },
          methods: {
              home: function (obj) {
                  alert("点击了：" + obj.key)
              },
              deselect: function (obj) {
                  alert("取消了：" + obj.key)
              },
              select: function (obj) {
                  alert("选择了：" + obj.key)
              },
              openChange(openKeys) {
                  alert("展开了：" + openKeys)
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Pagination Goto跳转
      new Vue({
          el: '#app-page-goto',
          data() {
              return {
                  pageSize: 20,
                  current: 4,
              };
          },
          watch: {
              pageSize(val) {
                  console.log('pageSize', val);
              },
              current(val) {
                  console.log('current', val);
              },
          },
          methods: {
              onShowSizeChange(current, pageSize) {

                  console.log("onShowSizeChange",current, pageSize);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Pagination Dropdown 自定义下拉选项
      new Vue({
          el: '#app-page-dropdown',
          data() {
              return {
                  pageSizeOptions: ['30', '50', '100'],
                  pageSize: 30,
                  current: 4,
              };
          },
          watch: {
              pageSize(val) {
                  console.log('pageSize', val);
              },
              current(val) {
                  console.log('current', val);
              },
          },
          methods: {
              onShowSizeChange(current, pageSize) {

                  console.log("onShowSizeChange",current, pageSize);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Pagination Limit 选择每页数量例子
      new Vue({
          el: '#app-page-limit',
          data() {
              return {
                  current: 2,
              };
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Pagination Text 自定义上一页下一页和页码文字
      new Vue({
          el: '#app-page-text',
          data() {
              return {
                  current: 2,
              };
          },
          methods: {
              itemRender(current, type, originalElement) {
                  if (type === 'prev') {
                      originalElement.children = undefined;
                      originalElement.text = "上一页";
                      originalElement.data.class = originalElement.data.class + " red";
                      return originalElement;
                  } else if (type === 'next') {
                      originalElement.children = undefined;
                      originalElement.text = "下一页";
                      originalElement.data.class = originalElement.data.class + " red";
                      return originalElement;
                  }
                  return originalElement;
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Pagination Style 样式风格
      var app = new Vue({
          el: '#app-page-style',
          data() {
              return {
                  pageSize: 10,
                  current: 3,
              };
          },
          watch: {
              pageSize(val) {
                  console.log('pageSize', val);
              },
              current(val) {
                  console.log('current', val);
              },
          },
          methods: {
              onShowSizeChange(current, pageSize) {

                  console.log("onShowSizeChange",current, pageSize);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Pagination Event 分页组件事件
      new Vue({
          el: '#app-page-event',
          data() {
              return {
                  current: 2,
                  pageSizeOptions:['10', '50', '100','200'] ,//下拉选择每页显示多少条
                  showSizeChanger:true, //显示下拉选项
                  showQuickJumper:true,//显示跳转输入框
              };
          },
          methods: {
              showTotal:function(total, range){
                  return "第"+range[0]+"至"+range[1]+"/总计："+total;
              },
              itemRender(current, type, originalElement) {
                  if (type === 'prev') {
                      originalElement.children = undefined;
                      originalElement.text = "上一页";
                      originalElement.data.class = originalElement.data.class + " red";
                      return originalElement;
                  } else if (type === 'next') {
                      originalElement.children = undefined;
                      originalElement.text = "下一页";
                      originalElement.data.class = originalElement.data.class + " red";
                      return originalElement;
                  }
                  return originalElement;
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Steps Base 步骤条基础用法
      new Vue({
          el: '#app-step-base',
          data() {
              return {
              };
          },
          methods: {

          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Steps Mini 步骤条迷你样式
      new Vue({
          el: '#app-step-mini',
          data() {
              return {
              };
          },
          methods: {

          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Steps Vertical 步骤条竖直方向用法
      new Vue({
          el: '#app-step-vertical',
          data() {
              return {
              };
          },
          methods: {

          },
      });

      ////////////////////////////////////////////
      //Ant Design Vue Steps Error 步骤条错误状态用法
      new Vue({
          el: '#app-step-error',
          data() {
              return {
              };
          },
          methods: {

          },
      });

      ////////////////////////////////////////////
      //Ant Design Vue Steps Dot 步骤条点状步骤用法
      new Vue({
          el: '#app-step-dot',
          data() {
              return {
              };
          },
          methods: {

          },
      });

      ////////////////////////////////////////////
      //Ant Design Vue Steps CDot 步骤条自定义点状步骤用法
      new Vue({
          el: '#app-step-cdot',
          data() {
              return {
              };
          },
          methods: {

          },
      });

      ////////////////////////////////////////////
      //Ant Design Vue Steps Icon 步骤条自定义图标和html内容
      // 整体步骤条属性
      // 及<a-steps :current="1">标签的属性
      //----------------------------------
      // 属性名称	说明	类型	默认值
      // current	指定当前步骤，从 0 开始记数	number	0
      // direction	步骤条方向，支持水平（horizontal）和竖直（vertical）两种方向	string	horizontal
      // labelPlacement	标签放置位置，默认放图标右侧，设置vertical放图标下方	string	horizontal
      // progressDot	点状步骤条样式，设置后labelPlacement 将强制为vertical	Boolean	false
      // size	步骤条大小，普通（default）和迷你（small）	string	default
      // status	当前步骤的状态，可选 wait process finish error	string	process
      // initial	起始序号，从 0 开始记数	number	0
      //----------------------------------
      // 步骤条内的步骤属性
      // 及<a-step title="手机号" description="验证手机号">的属性
      //----------------------------------
      // 属性名称	说明	类型	默认值
      // description	步骤名称	string|slot	-
      // icon	步骤图标	string
      // status	步骤器状态，当不配置该属性时，会使用 Steps 的 current 来自动指定状态。
      // 可选：wait 、process 、 finish 、 error	string	wait
      // title	步骤标题	string	-
      new Vue({
          el: '#app-step-icon',
          data() {
              return {
              };
          },
          methods: {

          },
      });
  </script>

  <div>
    <hr>
    <h3>Ant Design Vue AutoComplete 输入框自动填充自动完成组件</h3>
    <div id="app-complete">
      <a-auto-complete
          :data-source="ds"
          style="width: 260px; height: 60px;"
          @select="onSelect"
          @search="handleSearch"
          placeholder="input here"
      ></a-auto-complete>
    </div>

    <hr>
    <h3>Ant Design Vue AutoComplete FilterOption 自定义前端筛选函数 FilterOption</h3>
    <div id="app-complete-filter">
      <a-auto-complete
          :data-source="dataSource"
          style="width: 200px; height: 60px;"
          placeholder="输入1或者2看看"
          :filter-option="filterOption"
      />
    </div>

    <hr>
    <h3>Ant Design Vue AutoComplete Email 通过自定义选项search实现如自动补充邮箱后缀功能</h3>
    <div id="app-complete-email">
      <a-auto-complete style="width: 260px; height: 60px;" @search="search" placeholder="输入字母看看">
        <template slot="dataSource">
          <a-select-option v-for="email in dataSource" :key="email">{{email}}</a-select-option>
        </template>
      </a-auto-complete>
    </div>

    <hr>
    <h3>Ant Design Vue AutoComplete Ajax 通过Ajax返回服务器端数据例子</h3>
    <div id="app-complete-ajax">
      <a-auto-complete
          :data-source="ds"
          style="width: 260px; height: 60px;"
          @select="onSelect"
          @search="search"
          placeholder="input here"
      ></a-auto-complete>
    </div>

    <hr>
    <h3>Ant Design Vue AutoComplete Search 通查询模式自定义下拉选项内容</h3>
    <div id="app-complete-search">
        <a-auto-complete
            class="certain-category-search"
            dropdown-className="certain-category-search-dropdown"
            :dropdown-match-selectWidth="false"
            :dropdown-style="{width: '300px'}"
            size="large"
            style="width: 300px; height: 100px"
            placeholder="请输入关键词"
            option-label-prop="selectvalue">

          <a-input>
            <a-icon slot="suffix" type="search" class="certain-category-icon" style="margin-top: -60px" />
          </a-input>

          <template slot="dataSource">
            <a-select-opt-group v-for="group in dataSource" :key="group.title">
              <span slot="label">
                {{group.title}}
                <a style="float: right"
                    href="https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=baidu&wd=ant%20design%20vue%20site%3Aitxst.com"
                    target="_blank"
                    rel="noopener noreferrer"
                >更多
                </a>
              </span>
              <a-select-option v-for="opt in group.children" :key="opt.title"  :selectvalue="opt.title" :value="opt.title">
                {{opt.title}}
                <span class="certain-search-item-count">{{opt.count}} 条</span>
              </a-select-option>
            </a-select-opt-group>
            <a-select-option disabled key="all" class="show-all">
              <a href="https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=baidu&wd=ant%20design%20vue%20site%3Aitxst.com" target="_blank" rel="noopener noreferrer">
                查看所有结果
              </a>
            </a-select-option>
          </template>
        </a-auto-complete>
    </div>

    <hr>
    <h3>Ant Design Vue AutoComplete Attribute 属性列表</h3>
    <div id="app-complete-attribute">
      <a-auto-complete
          :allow-clear="true"
          :auto-focus="true"
          :backfill="true"
          :data-source="ds"
          class="certain-category-search"
          dropdown-className="certain-category-search-dropdown"
          :dropdown-match-select-width="false"
          :dropdown-style="{width: '300px'}"
          size="large"
          style="width: 260px; height: 60px;"
          placeholder="请输入关键词"
          option-label-prop="selectvalue"
          :default-value="defaultValue"
          :disabled="false"
          :filter-option="filterOption"
          v-model="currVal"
          :default-open="false"
      />
    </div>

    <hr>
    <h3>Ant Design Vue AutoComplete Focus 获取焦点</h3>
    <div id="app-complete-focus">
      <a-auto-complete
          :dataSource="ds"
          :dropdownStyle="{width: '300px'}"
          ref="xst"
          style="width: 260px; height: 60px;"
      ></a-auto-complete>
      <a-button type="primary" @click="click">获取焦点</a-button>
    </div>

    <hr>
    <h3>Ant Design Vue AutoComplete Blur 失去焦点</h3>
    <div id="app-complete-blur">
      <a-auto-complete
          :dataSource="ds"
          :dropdownStyle="{width: '300px'}"
          ref="xst"
          style="width: 260px; height: 60px;"
      ></a-auto-complete>
      <a-button type="primary" @click="click">失去焦点</a-button>
    </div>

    <hr>
    <h3>Ant Design Vue Cascader 级联省市区选择组件的基础用法</h3>
    <div id="app-cascader">
      <a-config-provider :locale="zh_CN">
        <a-cascader :options="options" @change="onChange" placeholder="请选择省市区"   style="width: 340px" ></a-cascader>
      </a-config-provider>
    </div>

    <hr>
    <h3>Ant Design Vue Cascader ShowSearch 搜索筛选</h3>
    <div id="app-cascader-search">
      <a-config-provider :locale="zh_CN">
        <a-cascader :options="options" @change="onChange" :show-search="{filter}" placeholder="输入浦区试试看"
                    style="width: 330px"></a-cascader>
      </a-config-provider>
    </div>

    <hr>
    <h3>Ant Design Vue Cascader Ajax Icon 服务器端加载和修改图标的例子</h3>
    <div id="app-cascader-icon">
      <a-config-provider  :locale="zh_CN">
        <a-cascader  :options="options" @change="onChange" :load-data="loadData" placeholder="请选择城市"   style="width: 330px">
          <!--自定义图标**************-->
          <a-icon type="home" slot="suffixIcon" />
        </a-cascader>
      </a-config-provider>
    </div>

    <hr>
    <h3>Ant Design Vue Cascader 省市区 FieldNames 自定义字段名称</h3>
    <div id="app-cascader-field">
      <a-config-provider :locale="zh_CN">
        <a-cascader :options="options" @change="onChange" placeholder="请选择省市区"   style="width: 340px" :field-names="fieldNames"></a-cascader>
      </a-config-provider>
    </div>

    <hr>
    <h3>Ant Design Vue Checkbox 多选框用法</h3>
    <div id="app-check">
      <div style="text-align: left;padding-left: 20px; ">
        第一组<br />
        <a-checkbox-group name="checkboxgroup" :options="options1" v-model="value" @change="onChange" ></a-checkbox-group>
        <br />第二组默认值<br />
        <a-checkbox-group :options="options_ck1" :defaultValue="['Apple']" @change="onChange"  ></a-checkbox-group>
        <br />第三组全部禁用<br />
        <a-checkbox-group :options="options_ck2"  disabled :value="['Pear']" @change="onChange"  ></a-checkbox-group>
        <br />第四组禁用个别项目并使用插槽<br />
        <a-checkbox-group
            :options="options_ck3"
            :defaultValue="['Apple']"
            @change="onChange"
        >
          <span style="color: red" slot="label" slot-scope="{value}">{{value}}</span>
        </a-checkbox-group>
      </div>
    </div>

    <hr>
    <h3>Ant Design Vue Checkbox Grid 多选框与Grid组件实现自定义布局</h3>
    <div id="app-check-grid">
      <a-checkbox-group @change="onChange" style="width:300px">
        <a-row>
          <a-col :span="6" v-for="item in options" v-bind:key="item.value">
            <a-checkbox :disabled="item.disabled" :value="item.value">{{item.label}}</a-checkbox>
          </a-col>
        </a-row>
      </a-checkbox-group>
    </div>

    <hr>
    <h3>Ant Design Vue Checkbox Select 复选框全选反选</h3>
    <div id="app-check-select">
      <div :style="{ borderBottom: '1px solid #E9E9E9',paddingBottom:'10px' }">
        <a-button type="primary" @click="onCheckAll(true)">全选</a-button>
        <a-button @click="onCheckAll(false)">反选</a-button>
      </div>
      <br />
      <a-checkbox-group :options="options" v-model="checkedList" @change="onChange" />
    </div>

    <hr>
    <h3>Ant Design Vue DatePicker 日期选择框</h3>
    <div id="app-date-picker">
      <div :style="{  paddingBottom:'10px' }">
        <a-config-provider :locale="locales.zh_CN">
          <a-date-picker :default-value="moment(getCurrentDate(),'YYYY-MM-DD')"></a-date-picker>
        </a-config-provider>
        <br />
        <a-config-provider :locale="locales.zh_CN">
          <a-month-picker @change="onChange" placeholder="选择月份"></a-month-picker>
        </a-config-provider>
        <br />
        <a-config-provider :locale="locales.zh_CN">
          <a-range-picker @change="onChange" ></a-range-picker>
        </a-config-provider>
        <br />
        <a-config-provider :locale="locales.zh_CN">
          <a-week-picker @change="onChange" placeholder="选择第几周"></a-week-picker>
        </a-config-provider>
      </div>
    </div>

    <hr>
    <h3>Ant Design Vue DatePicker Disable 设置不可选的日期和时间或月份</h3>
    <div id="app-date-disable">
      <div :style="{  paddingBottom:'10px' }">
        <a-config-provider :locale="locales.zh_CN">
          <a-date-picker :disabled-date="disabledDate" :default-value="moment(getCurrentDate(),'YYYY-MM-DD')"></a-date-picker>
        </a-config-provider>

      </div>
    </div>

    <hr>
    <h3>Ant Design Vue DatePicker Select 选择时间</h3>
    <div id="app-date-select">
      <div :style="{  paddingBottom:'10px' }">
        <a-config-provider :locale="locales.zh_CN">
          <a-date-picker  :show-time="{ format: 'HH:mm' }" :disabled-time="disabledDateTime"></a-date-picker>
        </a-config-provider>

      </div>
    </div>

    <hr>
    <h3>Ant Design Vue DatePicker Formt 设置日期格式</h3>
    <div id="app-date-format">
      <div :style="{  paddingBottom:'10px' }">
        <a-config-provider :locale="locales.zh_CN">
          <a-date-picker :disabled-date="disabledDate" :default-value="moment(getCurrentDate(),'YYYY年MM月DD日')"  format= "YYYY年MM月DD日"></a-date-picker>
        </a-config-provider>

      </div>
    </div>

    <hr>
    <h3>Ant Design Vue DatePicker Range 选择开始日期和结束日期(日期范围选择)</h3>
    <div id="app-date-range">
      <div :style="{  paddingBottom:'10px' }">
        <a-config-provider :locale="locales.zh_CN">
          <a-range-picker @change="onChange" :ranges="ranges"></a-range-picker>
        </a-config-provider>
      </div>
    </div>

    <hr>
    <h3>Ant Design Vue DatePicker Day 定制日期单元格</h3>
    <div id="app-date-day">
      <div :style="{  paddingBottom:'10px' }">
        <a-config-provider :locale="locales.zh_CN">
          <a-date-picker >
            <template slot="dateRender" slot-scope="current, today">
              <div  class="ant-calendar-date" :style="getCurrentStyle(current, today)">
                {{ current.date() }}
              </div>
            </template>
          </a-date-picker>    </a-config-provider>

      </div>
    </div>

    <hr>
    <h3>Ant Design Vue DatePicker Render 自定义渲染通过按钮来触发时间选择组件</h3>
    <div id="app-date-render">
      <div :style="{  paddingBottom:'10px' }">
        <a-config-provider :locale="locales.zh_CN">
          <a-date-picker v-model="selectDatae" :default-value="moment(getCurrentDate(),'YYYY-MM-DD')">
            <a-button type="primary">{{ selectDatae ? selectDatae : '请选择日期' }}</a-button>
          </a-date-picker>    </a-config-provider>

      </div>
    </div>

    <hr>
    <h3>Ant Design Vue Radio 单选框用法</h3>
    <div id="app-radio">
      <a-radio-group v-model="defValue" @change="onChange">
        <a-radio :value="item.value" :checked="item.checked" v-for="item in options_radio" :key="item.value">
          {{item.name}}
        </a-radio>
      </a-radio-group>
    </div>

    <hr>
    <h3>Ant Design Vue Radio Group 单选框分组</h3>
    <div id="app-radio-group">
      A组
      <div>
        <a-radio-group name="a" :default-value="1" @change="onChange">
          <a-radio :value="1">A</a-radio>
          <a-radio :value="2">B</a-radio>
          <a-radio :value="3">C</a-radio>
          <a-radio :value="4">D</a-radio>
        </a-radio-group>
      </div>
      B组
      <div>
        <a-radio-group name="b" :default-value="1" @change="onChange">
          <a-radio :value="1">A</a-radio>
          <a-radio :value="2">B</a-radio>
          <a-radio :value="3">C</a-radio>
          <a-radio :value="4">D</a-radio>
        </a-radio-group>
      </div>
    </div>

    <hr>
    <h3>Ant Design Vue Radio Button 按钮样式</h3>
    <div id="app-radio-button">
      <a-radio-group :default-value="value" @change="onChange">
        <a-radio-button value="a">
          杭州
        </a-radio-button>
        <a-radio-button value="b" disabled>
          上海
        </a-radio-button>
        <a-radio-button value="c">
          江西
        </a-radio-button>
        <a-radio-button value="d">
          雷蒙德
        </a-radio-button>
      </a-radio-group>
    </div>

    <hr>
    <h3>Ant Design Vue Radio Style 按钮样式</h3>
    <div id="app-radio-style">
      <a-radio-group :default-value="value" button-style="solid">
        <a-radio-button value="a">
          杭州
        </a-radio-button>
        <a-radio-button value="b" disabled>
          上海
        </a-radio-button>
        <a-radio-button value="c">
          江西
        </a-radio-button>
        <a-radio-button value="d">
          雷蒙德
        </a-radio-button>
      </a-radio-group>
    </div>
  </div>
  <script>
      ////////////////////////////////////////////
      //Ant Design Vue AutoComplete 输入框自动填充自动完成组件
      new Vue({
          el: '#app-complete-auto',
          data() {
              return {
                  ds: [],
              };
          },
          methods: {
              handleSearch(value) {

                  this.ds = !value ? [] : [value, value + value, value + value + value];
              },
              onSelect(value) {
                  console.log('onSelect', value);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue AutoComplete FilterOption 自定义前端筛选函数 FilterOption
      new Vue({
          el: '#app-complete-filter',
          data() {
              return {
                  dataSource: ['1', '2', '3', '20', '300'],
              };
          },
          methods: {
              filterOption(input, option) {
                  return (
                      parseInt(option.componentOptions.children[0].text) >= parseInt(input)
                  );
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue AutoComplete Email 通过自定义选项search实现如自动补充邮箱后缀功能
      new Vue({
          el: '#app-complete-email',
          data() {
              return {
                  dataSource: [],
              };
          },
          methods: {
              search(value) {
                  let result;
                  if (!value || value.indexOf('@') >= 0) {
                      result = [];
                  } else {
                      result = ['ixst.com', 'gmail.com', '163.com','qq.com'];
                      for(var i=0;i<result.length;i++)
                      {
                          result[i]=value+"@"+result[i]
                      }
                  }
                  this.dataSource = result;
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue AutoComplete Ajax 通过Ajax返回服务器端数据例子
      new Vue({
          el: '#app-complete-ajax',
          data() {
              return {
                  ds: ['这是前端数据','22','33'],
              };
          },
          methods: {
              search(value) {
                  var that=this;
                  var url = '/package/ant-design-vue/data.json?keyword='+value
                  $.ajax({
                      url:url,
                      dataType:"JSON", //返回格式为json
                      async:false ,
                      data:{"id":"value"},
                      type:"GET",
                      success:function(res){
                          //请求成功时处理
                          //var result=$.parseJSON(res);
                          res.ds.push("这是服务器端返回的数据");
                          that.ds=res.ds;
                      },
                      error:function(){
                          //请求出错处理
                          console.log('请求出错处理');
                      }
                  });
              },
              onSelect(value) {
                  //选择的数据
                  console.log('onSelect', value);
              }
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue AutoComplete Search 通查询模式自定义下拉选项内容
      const dataSource = [
          {
              title: '商品',
              children: [
                  {
                      title: 'Iphone 11',
                      count: 30000,
                  },
                  {
                      title: 'Dell xps',
                      count: 50000,
                  },
              ],
          },
          {
              title: '店铺',
              children: [
                  {
                      title: 'Apple旗舰店',
                      count: 60100,
                  },
                  {
                      title: 'DELL旗舰店',
                      count: 30010,
                  },
              ],
          },
          {
              title: '全网',
              children: [
                  {
                      title: 'www.itxst.com',
                      count: 100000,
                  },
              ],
          },
      ];
      new Vue({
          el: '#app-complete-search',
          data() {
              return {
                  dataSource,
              };
          },
          methods: {
              search(value) {

              },
              onSelect(value) {
                  //选择的数据
                  console.log('onSelect', value);
              }
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue AutoComplete AutoComplete Attribute 属性列表
      // AutoComplete 属性列表
      // 属性  说明  类型	默认值
      // allowClear	当鼠标移入输入框会有清除图标, 单选模式有效	boolean	false
      // autoFocus	自动获取焦点	boolean	false
      // backfill	使用键盘操作选择选项的时把选中项回填到输入框中	boolean	false
      // slot="default"	自定义输入框插槽	HTMLInputElement  / HTMLTextAreaElement	<Input />
      // dataSource	选择项的数据源	slot | 数组
      // dropdownMenuStyle	dropdown 菜单的自定义样式，1.5.0及以上版本支持	object
      // defaultActiveFirstOption	是否默认高亮第1个选项。	boolean	true
      // defaultValue	指定默认选中的项	string|string[]| 无
      // disabled	是否禁用组件	boolean	false
      // filterOption	自定义筛选函数返回true表示筛选成功	boolean or
      // function(inputValue, option)	true
      // optionLabelProp	回填到选择框的 Option 的属性值，  默认是 Option 的子元素。
      //                  比如在子元素需要高亮效果时，此值可以设为 value。	string	children
      // placeholder	输入框提示	string | slot	-
      // value(v-model)	指定当前选中的条目  设置了此值时  defaultValue无效  string|string[]|{ key: string,
      //     label: string|vNodes }| Array<{ key: string, label: string|vNodes }>
      // defaultOpen	是否默认展开下拉菜单	boolean
      // open	是否展开下拉菜单	boolean
      //------------------------------
      // 事件列表
      // 方法名称
      // 说明	回调参数
      // change	选中选项或输入框的 value 变化时，调用此函数	function(value)
      // blur	失去焦点时的回调	function()
      // focus	获得焦点时的回调	function()
      // search	搜索补全项的时候调用	function(value)
      // select	被选中时调用，参数为选中项的 value 值	function(value, option)
      // dropdownVisibleChange	展开下拉菜单的回调	function(open)
      new Vue({
          el: '#app-complete-attribute',
          data() {
              return {
                  ds:['www.qq.com','www.msn.com','www.baidu.com','www.itxst.com'],
                  defaultValue:["www.msn.com"], //默认选中
                  currVal:["www.baidu.com"]
              };
          },
          methods: {
              filterOption(input, option) {
                  return (
                      option.componentOptions.children[0].text.indexOf(input)>=0
                  );
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue AutoComplete Focus 获取焦点
      new Vue({
          el: '#app-complete-focus',
          data() {
              return {
                  ds:['www.qq.com','www.msn.com','www.baidu.com','www.itxst.com'],
              };
          },
          methods: {
              //使组件获取焦点的方法
              click() {
                  this.$refs.xst.focus();
              },
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue AutoComplete Blur 失去焦点
      new Vue({
          el: '#app-complete-blur',
          data() {
              return {
                  ds:['www.qq.com','www.msn.com','www.baidu.com','www.itxst.com'],
              };
          },
          methods: {
              //使组件收起焦点的方法
              click() {
                  this.$refs.xst.blur();
              },
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Cascader 级联省市区选择组件的基础用法
      new Vue({
          el: '#app-cascader',
          data() {
              return {
                  options: [
                      {
                          value: 'zhejiang',
                          label: '浙江省',
                          children: [
                              {
                                  value: 'hangzhou',
                                  label: '杭州市',
                                  children: [
                                      {
                                          value: 'xihu',
                                          label: '西湖区',
                                      },
                                  ],
                              },
                          ],
                      },
                      {
                          value: 'shanghai',
                          label: '上海市',
                          children: [
                              {
                                  value: 'qingpuqu',
                                  label: '青浦区',
                                  children: [
                                      {
                                          value: 'beijinglu',
                                          label: '北京路',
                                      },
                                  ],
                              },
                          ],
                      },
                  ],
              };
          },
          methods: {
              onChange(value) {
                  console.log(value);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Cascader ShowSearch 搜索筛选
      new Vue({
          el: '#app-cascader-search',
          data() {
              return {
                  options: [
                      {
                          value: 'zhejiang',
                          label: '浙江省',
                          children: [
                              {
                                  value: 'hangzhou',
                                  label: '杭州市',
                                  children: [
                                      {
                                          value: 'xihu',
                                          label: '西湖区',
                                      },
                                  ],
                              },
                          ],
                      },
                      {
                          value: 'shanghai',
                          label: '上海市',
                          children: [
                              {
                                  value: 'qingpuqu',
                                  label: '青浦区',
                                  children: [
                                      {
                                          value: 'beijinglu',
                                          label: '北京路',
                                      },
                                  ],
                              },
                          ],
                      },
                  ],
              };
          },
          methods: {
              onChange(value) {
                  console.log(value);
              },
              filter(inputValue, path) {
                  var that = this;
                  return path.some(
                      option => {
                          console.log(option);
                          //通过value搜索
                          return that.fullText(inputValue.toLowerCase(), option.value.toLowerCase());
                          //通过label搜索
                          //return option.label.toLowerCase().indexOf(inputValue.toLowerCase()) > -1
                      }
                  );
              },
              //模糊搜索
              fullText(keyword, text) {
                  var hlen = text.length;
                  var nlen = keyword.length;
                  if (nlen > hlen) {
                      return false;
                  }
                  if (nlen === hlen) {
                      return keyword === text;
                  }
                  outer: for (var i = 0, j = 0; i < nlen; i++) {
                      var nch = keyword.charCodeAt(i);
                      while (j < hlen) {
                          if (text.charCodeAt(j++) === nch) {
                              continue outer;
                          }
                      }
                      return false;
                  }
                  return true;
              }
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Cascader Ajax Icon 服务器端加载和修改图标的例子
      new Vue({
          el: '#app-cascader-icon',
          data() {
              return {
                  options: [
                      {
                          value: 'zhejiang',
                          label: '浙江省',
                          isLeaf: false,
                      },
                      {
                          value: 'jiangsu',
                          label: '江西省',
                          isLeaf: false,
                      },
                  ],
              };
          },
          methods: {
              onChange(value) {
                  console.log(value);
              },
              loadData(selectedOptions) {
                  const targetOption = selectedOptions[selectedOptions.length - 1];
                  targetOption.loading = true;

                  //这个是模拟的ajax请求，你可以把这部分代码改成真正的ajax请求
                  setTimeout(() => {
                      targetOption.loading = false;
                      targetOption.children = [
                          {
                              label: `${targetOption.label} 服务器端加载1`,
                              value: 'dynamic1',
                          },
                          {
                              label: `${targetOption.label} 服务器端加载2`,
                              value: 'dynamic2',
                          },
                      ];
                      this.options = [...this.options];
                  }, 1000);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Cascader 省市区 FieldNames 自定义字段名称
      // 参数列表
      // <a-cascader :options="options" @change="onChange" placeholder="请选择城市" ></a-cascader>
      // ：符号表示属性变量，@符号表示事件
      //-------------------------------------
      // 参数名称
      // 说明	类型	默认值
      // allow-clear	是否支持清除已选择内容
      // <a-cascader  :allow-clear="false"></a-cascader>	boolean	true
      // auto-focus	当前控件是否自动获取焦点,示例代码如上
      // <a-cascader  :auto-focus="true"></a-cascader>	boolean	false
      // change-on-select	设置为true，就是每次点击选择时都会触发change事件
      // <a-cascader  :change-on-select="true"></a-cascader>	boolean	false
      // default-value	默认的选中项
      // <a-cascader  :default-value="['shanghai','qingpuqu']" ></a-cascader>	string[] | number[]	[]
      // disabled	是否禁用	boolean	false
      // display-render	选择完成后执行的渲染函数,可以自定义选择框的内容	点击查看例子
      //-------------------------------------
      // expand-trigger	下一级级菜单的展开方式，点击或移动在上面时
      // 'click' 和 'hover'	string	click
      // field-names	自定义下拉项的数据结构中的label name children 的字段	点击查看例子	{ label: 'label', value: 'value',
      //     children: 'children' }
      // getPopupContainer	组件渲染的父节点。默认渲染到 body 上，如遇到菜单滚动定位问题，可修改为滚动的区域试试看，并相对其定位。	Function(triggerNode)	() => document.body
      // loadData	可以通过这个参数发送一个ajax请求，远程返回数据，
      // 不能与 showSearch 搭配使用。	点击查看详情
      // not-found-content	当下拉项为空时显示的内容	string	'Not Found'
      // options	下拉项数据源	object
      // placeholder	选择输入框提示文字	string	'请选择'
      // popup-class-name	自定义下拉项的浮层类名
      // <a-cascader popup-class-name="itxst-class" ></a-cascader>	string	-
      // popup-style	自定义下拉项的浮层样式
      // <a-cascader :popup-style="{color:'red'}"></a-cascader>	object	{}
      // popup-placement	浮层预设位置：bottomLeft bottomRight topLeft topRight	Enum	bottomLeft
      // popup-visible	下拉项的浮层的隐藏显示	boolean
      // show-search	在选择输入框中开启搜索功能,点击查看详情	boolean	false
      // size	选择输入框大小，可选 large default small，注意不是下拉浮层的大小	string	default
      // suffixIcon	自定义的选择输入框的后缀图标	string | VNode | slot	-
      // value(v-model)	设置获取选中项	string[] | number[]	-
      // Cascader事件
      // 事件名称	说明	回调参数
      // change	选择完成后的回调	(value, selectedOptions) => void
      //     popupVisibleChange	显示/隐藏浮层的回调	(value) => void
      //     Cascader方法
      // 方法名称
      // 说明
      // blur()	清除焦点
      // focus()	设置焦点
      new Vue({
          el: '#app-cascader-field',
          data() {
              return {
                  fieldNames:{ label: 'title', value: 'value', children: 'tree' },
                  options: [
                      {
                          value: 'zhejiang',
                          title: '浙江省',
                          tree: [
                              {
                                  value: 'hangzhou',
                                  title: '杭州市',
                                  tree: [
                                      {
                                          value: 'xihu',
                                          title: '古墩路',
                                      },
                                  ],
                              },
                          ],
                      },
                      {
                          value: 'jiangsu',
                          title: '江西省',
                          tree: [
                              {
                                  value: 'nanjing',
                                  title: '苏州市',
                                  tree: [
                                      {
                                          value: 'zhonghuamen',
                                          title: '寒山寺',
                                      },
                                  ],
                              },
                          ],
                      },
                  ],
              };
          },
          methods: {
              //获取结果
              onChange(value) {
                  console.log(value);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Checkbox 多选框用法
      const options_ck1 = ['Apple.com', 'Google.com', 'itxst.com'];
      const options_ck2 = [
          { label: '苹果', value: 'Apple' },
          { label: '梨', value: 'Pear' },
          { label: '橙', value: 'Orange' },
      ];
      const options_ck3 = [
          { label: '苹果', value: 'Apple' },
          { label: '梨', value: 'Pear' },
          { label: '橙', value: 'Orange', disabled: true  },
      ];
      new Vue({
          el: '#app-check',
          data() {
              return {
                  options_ck1,
                  options_ck2,
                  options_ck3,
                  value: [],
              };
          },
          methods: {
              onChange(checkedValues) {
                  console.log('checked = ', checkedValues);
                  console.log('value = ', this.value);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Checkbox Grid 多选框与Grid组件实现自定义布局
      const options_grid = [
          { label: '苹果', value: 'Apple' },
          { label: '梨X', value: 'Pear' },
          { label: '梨A', value: 'PearX' },
          { label: '橙C', value: 'Orange', disabled: true },
      ];
      new Vue({
          el: '#app-check-grid',
          data() {
              return {
                  options: options_grid
              };
          },
          methods: {
              onChange(checkedValues) {
                  console.log('checked = ', checkedValues);
                  console.log('value = ', this.value);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Checkbox Select 复选框全选反选
      // Checkbox 属性
      // 属性名称	描述	类型	默认值
      // autoFocus	自动获取焦点	boolean	false
      // checked	是否选中	boolean	false
      // defaultChecked	初始是否选中	boolean	false
      // disabled	是否禁用	boolean	false
      // indeterminate	设置 indeterminate 状态，只负责样式控制	boolean	false
      // Checkbox事件
      // 事件名称	描述	回调参数
      // change	当选中或取消选中时的事件	Function(e)
      // Checkbox Group多选框组属性
      // 属性名称	描述	类型	默认值
      // defaultValue	默认选中项	string[]	[]
      // disabled	是否禁用复选框组	boolean	false
      // name	复选框组下所有 input[type="checkbox"] 的 name
      // 版本1.5.0+
      // string	-
      // options	指定可选项，可以通过 slot="label" slot-scope="option"
      // 定制label
      // 详情请点击查看
      // string[]或者
      //     [{ label: string,
      //     value: string ,
      //     disabled?: boolean,
      //     indeterminate?: boolean,
      //     onChange?: function }]	[]
      // value	指定选中的选项	string[]	[]
      // Checkbox Group多选框组事件
      // 事件名称	描述	回调参数
      // change	当选中或取消选中时的事件	Function(e)
      // Checkbox 方法
      // 事件名称	描述
      // blur()	移除焦点
      // focus()	获取焦点
      const options_select = ['Apple', 'Pear', 'Orange', 'itxst.com'];
      new Vue({
          el: '#app-check-select',
          data() {
              return {
                  checkedList: [], //已选中项
                  options: options_select, //选项
              };
          },
          methods: {
              onChange(checkedValues) {
                  console.log('checked = ', checkedValues);
                  console.log('value = ', this.value);
              },
              onCheckAll(e) {
                  this.checkedList = e ? this.options : []

              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue DatePicker 日期选择框
      new Vue({
          el: '#app-date-picker',
          data() {
              return {
                  locales,
                  defDate: null
              };
          },
          methods: {
              moment,
              getCurrentDate() {
                  return new Date().toLocaleDateString();
              },
              onChange(date, dateString) {
                  console.log(date, dateString);
              }
          },
          created: function () {
              // 里面的字符可以根据自己的需要进行调整
              moment.locale('zh-cn', {
                  months: '一月_二月_三月_四月_五月_六月_七月_八月_九月_十月_十一月_十二月'.split('_'),
                  monthsShort: '1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月'.split('_'),
                  weekdays: '星期日_星期一_星期二_星期三_星期四_星期五_星期六'.split('_'),
                  weekdaysShort: '周日_周一_周二_周三_周四_周五_周六'.split('_'),
                  weekdaysMin: '日_一_二_三_四_五_六'.split('_'),
                  longDateFormat: {
                      LT: 'HH:mm',
                      LTS: 'HH:mm:ss',
                      L: 'YYYY-MM-DD',
                      LL: 'YYYY年MM月DD日',
                      LLL: 'YYYY年MM月DD日Ah点mm分',
                      LLLL: 'YYYY年MM月DD日ddddAh点mm分',
                      l: 'YYYY-M-D',
                      ll: 'YYYY年M月D日',
                      lll: 'YYYY年M月D日 HH:mm',
                      llll: 'YYYY年M月D日dddd HH:mm'
                  },
                  meridiemParse: /凌晨|早上|上午|中午|下午|晚上/,
                  meridiemHour: function (hour, meridiem) {
                      if (hour === 12) {
                          hour = 0;
                      }
                      if (meridiem === '凌晨' || meridiem === '早上' ||
                          meridiem === '上午') {
                          return hour;
                      } else if (meridiem === '下午' || meridiem === '晚上') {
                          return hour + 12;
                      } else {
                          // '中午'
                          return hour >= 11 ? hour : hour + 12;
                      }
                  },
                  meridiem: function (hour, minute, isLower) {
                      const hm = hour * 100 + minute;
                      if (hm < 600) {
                          return '凌晨';
                      } else if (hm < 900) {
                          return '早上';
                      } else if (hm < 1130) {
                          return '上午';
                      } else if (hm < 1230) {
                          return '中午';
                      } else if (hm < 1800) {
                          return '下午';
                      } else {
                          return '晚上';
                      }
                  },
                  calendar: {
                      sameDay: '[今天]LT',
                      nextDay: '[明天]LT',
                      nextWeek: '[下]ddddLT',
                      lastDay: '[昨天]LT',
                      lastWeek: '[上]ddddLT',
                      sameElse: 'L'
                  },
                  dayOfMonthOrdinalParse: /\d{1,2}(日|月|周)/,
                  ordinal: function (number, period) {
                      switch (period) {
                          case 'd':
                          case 'D':
                          case 'DDD':
                              return number + '日';
                          case 'M':
                              return number + '月';
                          case 'w':
                          case 'W':
                              return number + '周';
                          default:
                              return number;
                      }
                  },
                  relativeTime: {
                      future: '%s内',
                      past: '%s前',
                      s: '几秒',
                      ss: '%d秒',
                      m: '1分钟',
                      mm: '%d分钟',
                      h: '1小时',
                      hh: '%d小时',
                      d: '1天',
                      dd: '%d天',
                      M: '1个月',
                      MM: '%d个月',
                      y: '1年',
                      yy: '%d年'
                  },
                  week: {
                      // GB/T 7408-1994《数据元和交换格式·信息交换·日期和时间表示法》与ISO 8601:1988等效
                      dow: 1, // Monday is the first day of the week.
                      doy: 4  // The week that contains Jan 4th is the first week of the year.
                  }
              })

          },
      });

      ////////////////////////////////////////////
      //Ant Design Vue DatePicker Disable 设置不可选的日期和时间或月份
      new Vue({
          el: '#app-date-disable',
          data() {
              return {
                  locales,
                  defDate: null
              };
          },
          methods: {
              moment,
              //设置星期六星期天不能选择
              disabledDate(current) {
                  return current.day() == 6 || current.day() == 0;
              },
              getCurrentDate() {
                  return new Date().toLocaleDateString();
              },
              onChange(date, dateString) {
                  console.log(date, dateString);
              }
          },
          created: function () {
              // 里面的字符可以根据自己的需要进行调整
              moment.locale('zh-cn', {
                  months: '一月_二月_三月_四月_五月_六月_七月_八月_九月_十月_十一月_十二月'.split('_'),
                  monthsShort: '1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月'.split('_'),
                  weekdays: '星期日_星期一_星期二_星期三_星期四_星期五_星期六'.split('_'),
                  weekdaysShort: '周日_周一_周二_周三_周四_周五_周六'.split('_'),
                  weekdaysMin: '日_一_二_三_四_五_六'.split('_'),
                  longDateFormat: {
                      LT: 'HH:mm',
                      LTS: 'HH:mm:ss',
                      L: 'YYYY-MM-DD',
                      LL: 'YYYY年MM月DD日',
                      LLL: 'YYYY年MM月DD日Ah点mm分',
                      LLLL: 'YYYY年MM月DD日ddddAh点mm分',
                      l: 'YYYY-M-D',
                      ll: 'YYYY年M月D日',
                      lll: 'YYYY年M月D日 HH:mm',
                      llll: 'YYYY年M月D日dddd HH:mm'
                  },
                  meridiemParse: /凌晨|早上|上午|中午|下午|晚上/,
                  meridiemHour: function (hour, meridiem) {
                      if (hour === 12) {
                          hour = 0;
                      }
                      if (meridiem === '凌晨' || meridiem === '早上' ||
                          meridiem === '上午') {
                          return hour;
                      } else if (meridiem === '下午' || meridiem === '晚上') {
                          return hour + 12;
                      } else {
                          // '中午'
                          return hour >= 11 ? hour : hour + 12;
                      }
                  },
                  meridiem: function (hour, minute, isLower) {
                      const hm = hour * 100 + minute;
                      if (hm < 600) {
                          return '凌晨';
                      } else if (hm < 900) {
                          return '早上';
                      } else if (hm < 1130) {
                          return '上午';
                      } else if (hm < 1230) {
                          return '中午';
                      } else if (hm < 1800) {
                          return '下午';
                      } else {
                          return '晚上';
                      }
                  },
                  calendar: {
                      sameDay: '[今天]LT',
                      nextDay: '[明天]LT',
                      nextWeek: '[下]ddddLT',
                      lastDay: '[昨天]LT',
                      lastWeek: '[上]ddddLT',
                      sameElse: 'L'
                  },
                  dayOfMonthOrdinalParse: /\d{1,2}(日|月|周)/,
                  ordinal: function (number, period) {
                      switch (period) {
                          case 'd':
                          case 'D':
                          case 'DDD':
                              return number + '日';
                          case 'M':
                              return number + '月';
                          case 'w':
                          case 'W':
                              return number + '周';
                          default:
                              return number;
                      }
                  },
                  relativeTime: {
                      future: '%s内',
                      past: '%s前',
                      s: '几秒',
                      ss: '%d秒',
                      m: '1分钟',
                      mm: '%d分钟',
                      h: '1小时',
                      hh: '%d小时',
                      d: '1天',
                      dd: '%d天',
                      M: '1个月',
                      MM: '%d个月',
                      y: '1年',
                      yy: '%d年'
                  },
                  week: {
                      // GB/T 7408-1994《数据元和交换格式·信息交换·日期和时间表示法》与ISO 8601:1988等效
                      dow: 1, // Monday is the first day of the week.
                      doy: 4  // The week that contains Jan 4th is the first week of the year.
                  }
              })

          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue DatePicker Select 选择时间
      new Vue({
          el: '#app-date-select',
          data() {
              return {
                  locales,
                  defDate: null
              };
          },
          methods: {
              moment,
              disabledDateTime() {
                  return {
                      disabledHours:() =>   [0,1,2,3,4,5,,6,7,8,19,20,21,22,23],
                      disabledMinutes: () =>  [],
                      disabledSeconds: () => [],
                  };
              },
              getCurrentDate() {
                  return new Date().toLocaleDateString();
              },
              onChange(date, dateString) {
                  console.log(date, dateString);
              }
          },
          created: function () {
              // 里面的字符可以根据自己的需要进行调整
              moment.locale('zh-cn', {
                  months: '一月_二月_三月_四月_五月_六月_七月_八月_九月_十月_十一月_十二月'.split('_'),
                  monthsShort: '1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月'.split('_'),
                  weekdays: '星期日_星期一_星期二_星期三_星期四_星期五_星期六'.split('_'),
                  weekdaysShort: '周日_周一_周二_周三_周四_周五_周六'.split('_'),
                  weekdaysMin: '日_一_二_三_四_五_六'.split('_'),
                  longDateFormat: {
                      LT: 'HH:mm',
                      LTS: 'HH:mm:ss',
                      L: 'YYYY-MM-DD',
                      LL: 'YYYY年MM月DD日',
                      LLL: 'YYYY年MM月DD日Ah点mm分',
                      LLLL: 'YYYY年MM月DD日ddddAh点mm分',
                      l: 'YYYY-M-D',
                      ll: 'YYYY年M月D日',
                      lll: 'YYYY年M月D日 HH:mm',
                      llll: 'YYYY年M月D日dddd HH:mm'
                  },
                  meridiemParse: /凌晨|早上|上午|中午|下午|晚上/,
                  meridiemHour: function (hour, meridiem) {
                      if (hour === 12) {
                          hour = 0;
                      }
                      if (meridiem === '凌晨' || meridiem === '早上' ||
                          meridiem === '上午') {
                          return hour;
                      } else if (meridiem === '下午' || meridiem === '晚上') {
                          return hour + 12;
                      } else {
                          // '中午'
                          return hour >= 11 ? hour : hour + 12;
                      }
                  },
                  meridiem: function (hour, minute, isLower) {
                      const hm = hour * 100 + minute;
                      if (hm < 600) {
                          return '凌晨';
                      } else if (hm < 900) {
                          return '早上';
                      } else if (hm < 1130) {
                          return '上午';
                      } else if (hm < 1230) {
                          return '中午';
                      } else if (hm < 1800) {
                          return '下午';
                      } else {
                          return '晚上';
                      }
                  },
                  calendar: {
                      sameDay: '[今天]LT',
                      nextDay: '[明天]LT',
                      nextWeek: '[下]ddddLT',
                      lastDay: '[昨天]LT',
                      lastWeek: '[上]ddddLT',
                      sameElse: 'L'
                  },
                  dayOfMonthOrdinalParse: /\d{1,2}(日|月|周)/,
                  ordinal: function (number, period) {
                      switch (period) {
                          case 'd':
                          case 'D':
                          case 'DDD':
                              return number + '日';
                          case 'M':
                              return number + '月';
                          case 'w':
                          case 'W':
                              return number + '周';
                          default:
                              return number;
                      }
                  },
                  relativeTime: {
                      future: '%s内',
                      past: '%s前',
                      s: '几秒',
                      ss: '%d秒',
                      m: '1分钟',
                      mm: '%d分钟',
                      h: '1小时',
                      hh: '%d小时',
                      d: '1天',
                      dd: '%d天',
                      M: '1个月',
                      MM: '%d个月',
                      y: '1年',
                      yy: '%d年'
                  },
                  week: {
                      // GB/T 7408-1994《数据元和交换格式·信息交换·日期和时间表示法》与ISO 8601:1988等效
                      dow: 1, // Monday is the first day of the week.
                      doy: 4  // The week that contains Jan 4th is the first week of the year.
                  }
              })

          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue DatePicker Formt 设置日期格式
      new Vue({
          el: '#app-date-format',
          data() {
              return {
                  locales,
                  defDate: null
              };
          },
          methods: {
              moment,
              //设置星期六星期天不能选择
              disabledDate(current) {
                  return current.day() == 6 || current.day() == 0;
              },
              getCurrentDate() {
                  return new Date().toLocaleDateString();
              },
              onChange(date, dateString) {
                  console.log(date, dateString);
              }
          },
          created: function () {
              // 里面的字符可以根据自己的需要进行调整
              moment.locale('zh-cn', {
                  months: '一月_二月_三月_四月_五月_六月_七月_八月_九月_十月_十一月_十二月'.split('_'),
                  monthsShort: '1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月'.split('_'),
                  weekdays: '星期日_星期一_星期二_星期三_星期四_星期五_星期六'.split('_'),
                  weekdaysShort: '周日_周一_周二_周三_周四_周五_周六'.split('_'),
                  weekdaysMin: '日_一_二_三_四_五_六'.split('_'),
                  longDateFormat: {
                      LT: 'HH:mm',
                      LTS: 'HH:mm:ss',
                      L: 'YYYY-MM-DD',
                      LL: 'YYYY年MM月DD日',
                      LLL: 'YYYY年MM月DD日Ah点mm分',
                      LLLL: 'YYYY年MM月DD日ddddAh点mm分',
                      l: 'YYYY-M-D',
                      ll: 'YYYY年M月D日',
                      lll: 'YYYY年M月D日 HH:mm',
                      llll: 'YYYY年M月D日dddd HH:mm'
                  },
                  meridiemParse: /凌晨|早上|上午|中午|下午|晚上/,
                  meridiemHour: function (hour, meridiem) {
                      if (hour === 12) {
                          hour = 0;
                      }
                      if (meridiem === '凌晨' || meridiem === '早上' ||
                          meridiem === '上午') {
                          return hour;
                      } else if (meridiem === '下午' || meridiem === '晚上') {
                          return hour + 12;
                      } else {
                          // '中午'
                          return hour >= 11 ? hour : hour + 12;
                      }
                  },
                  meridiem: function (hour, minute, isLower) {
                      const hm = hour * 100 + minute;
                      if (hm < 600) {
                          return '凌晨';
                      } else if (hm < 900) {
                          return '早上';
                      } else if (hm < 1130) {
                          return '上午';
                      } else if (hm < 1230) {
                          return '中午';
                      } else if (hm < 1800) {
                          return '下午';
                      } else {
                          return '晚上';
                      }
                  },
                  calendar: {
                      sameDay: '[今天]LT',
                      nextDay: '[明天]LT',
                      nextWeek: '[下]ddddLT',
                      lastDay: '[昨天]LT',
                      lastWeek: '[上]ddddLT',
                      sameElse: 'L'
                  },
                  dayOfMonthOrdinalParse: /\d{1,2}(日|月|周)/,
                  ordinal: function (number, period) {
                      switch (period) {
                          case 'd':
                          case 'D':
                          case 'DDD':
                              return number + '日';
                          case 'M':
                              return number + '月';
                          case 'w':
                          case 'W':
                              return number + '周';
                          default:
                              return number;
                      }
                  },
                  relativeTime: {
                      future: '%s内',
                      past: '%s前',
                      s: '几秒',
                      ss: '%d秒',
                      m: '1分钟',
                      mm: '%d分钟',
                      h: '1小时',
                      hh: '%d小时',
                      d: '1天',
                      dd: '%d天',
                      M: '1个月',
                      MM: '%d个月',
                      y: '1年',
                      yy: '%d年'
                  },
                  week: {
                      // GB/T 7408-1994《数据元和交换格式·信息交换·日期和时间表示法》与ISO 8601:1988等效
                      dow: 1, // Monday is the first day of the week.
                      doy: 4  // The week that contains Jan 4th is the first week of the year.
                  }
              })

          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue DatePicker Range 选择开始日期和结束日期(日期范围选择)
      new Vue({
          el: '#app-date-range',
          data() {
              return {
                  locales,
                  ranges: {
                      '一月内': () => [moment('2020-10-10', 'YYYY:MM:DD'), moment('2020-11-10', 'YYYY:MM:DD')],
                      '昨天': () => [moment().startOf('day').subtract(1, 'days'), moment().endOf('day').subtract(1, 'days')],
                      '最近一周': () => [moment().startOf('day').subtract(1, 'weeks'), moment()]
                  },
              };
          },
          methods: {
              moment,
              onChange(date, dateString) {
                  console.log(date, dateString);
              }
          },
          created: function () {
              // 里面的字符可以根据自己的需要进行调整
              moment.locale('zh-cn', {
                  months: '一月_二月_三月_四月_五月_六月_七月_八月_九月_十月_十一月_十二月'.split('_'),
                  monthsShort: '1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月'.split('_'),
                  weekdays: '星期日_星期一_星期二_星期三_星期四_星期五_星期六'.split('_'),
                  weekdaysShort: '周日_周一_周二_周三_周四_周五_周六'.split('_'),
                  weekdaysMin: '日_一_二_三_四_五_六'.split('_'),
                  longDateFormat: {
                      LT: 'HH:mm',
                      LTS: 'HH:mm:ss',
                      L: 'YYYY-MM-DD',
                      LL: 'YYYY年MM月DD日',
                      LLL: 'YYYY年MM月DD日Ah点mm分',
                      LLLL: 'YYYY年MM月DD日ddddAh点mm分',
                      l: 'YYYY-M-D',
                      ll: 'YYYY年M月D日',
                      lll: 'YYYY年M月D日 HH:mm',
                      llll: 'YYYY年M月D日dddd HH:mm'
                  },
                  meridiemParse: /凌晨|早上|上午|中午|下午|晚上/,
                  meridiemHour: function (hour, meridiem) {
                      if (hour === 12) {
                          hour = 0;
                      }
                      if (meridiem === '凌晨' || meridiem === '早上' ||
                          meridiem === '上午') {
                          return hour;
                      } else if (meridiem === '下午' || meridiem === '晚上') {
                          return hour + 12;
                      } else {
                          // '中午'
                          return hour >= 11 ? hour : hour + 12;
                      }
                  },
                  meridiem: function (hour, minute, isLower) {
                      const hm = hour * 100 + minute;
                      if (hm < 600) {
                          return '凌晨';
                      } else if (hm < 900) {
                          return '早上';
                      } else if (hm < 1130) {
                          return '上午';
                      } else if (hm < 1230) {
                          return '中午';
                      } else if (hm < 1800) {
                          return '下午';
                      } else {
                          return '晚上';
                      }
                  },
                  calendar: {
                      sameDay: '[今天]LT',
                      nextDay: '[明天]LT',
                      nextWeek: '[下]ddddLT',
                      lastDay: '[昨天]LT',
                      lastWeek: '[上]ddddLT',
                      sameElse: 'L'
                  },
                  dayOfMonthOrdinalParse: /\d{1,2}(日|月|周)/,
                  ordinal: function (number, period) {
                      switch (period) {
                          case 'd':
                          case 'D':
                          case 'DDD':
                              return number + '日';
                          case 'M':
                              return number + '月';
                          case 'w':
                          case 'W':
                              return number + '周';
                          default:
                              return number;
                      }
                  },
                  relativeTime: {
                      future: '%s内',
                      past: '%s前',
                      s: '几秒',
                      ss: '%d秒',
                      m: '1分钟',
                      mm: '%d分钟',
                      h: '1小时',
                      hh: '%d小时',
                      d: '1天',
                      dd: '%d天',
                      M: '1个月',
                      MM: '%d个月',
                      y: '1年',
                      yy: '%d年'
                  },
                  week: {
                      // GB/T 7408-1994《数据元和交换格式·信息交换·日期和时间表示法》与ISO 8601:1988等效
                      dow: 1, // Monday is the first day of the week.
                      doy: 4  // The week that contains Jan 4th is the first week of the year.
                  }
              })
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue DatePicker Day 定制日期单元格
      new Vue({
          el: '#app-date-day',
          data() {
              return {
                  locales,
              };
          },
          methods: {
              moment,
              getCurrentStyle(current, today) {
                  const style = {};
                  if (current.date() === 1) {
                      style.border = '1px solid #1890ff';
                      style.borderRadius = '50%';
                  }
                  return style;
              },
          },
          created: function () {
              // 里面的字符可以根据自己的需要进行调整
              moment.locale('zh-cn', {
                  months: '一月_二月_三月_四月_五月_六月_七月_八月_九月_十月_十一月_十二月'.split('_'),
                  monthsShort: '1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月'.split('_'),
                  weekdays: '星期日_星期一_星期二_星期三_星期四_星期五_星期六'.split('_'),
                  weekdaysShort: '周日_周一_周二_周三_周四_周五_周六'.split('_'),
                  weekdaysMin: '日_一_二_三_四_五_六'.split('_'),
                  longDateFormat: {
                      LT: 'HH:mm',
                      LTS: 'HH:mm:ss',
                      L: 'YYYY-MM-DD',
                      LL: 'YYYY年MM月DD日',
                      LLL: 'YYYY年MM月DD日Ah点mm分',
                      LLLL: 'YYYY年MM月DD日ddddAh点mm分',
                      l: 'YYYY-M-D',
                      ll: 'YYYY年M月D日',
                      lll: 'YYYY年M月D日 HH:mm',
                      llll: 'YYYY年M月D日dddd HH:mm'
                  },
                  meridiemParse: /凌晨|早上|上午|中午|下午|晚上/,
                  meridiemHour: function (hour, meridiem) {
                      if (hour === 12) {
                          hour = 0;
                      }
                      if (meridiem === '凌晨' || meridiem === '早上' ||
                          meridiem === '上午') {
                          return hour;
                      } else if (meridiem === '下午' || meridiem === '晚上') {
                          return hour + 12;
                      } else {
                          // '中午'
                          return hour >= 11 ? hour : hour + 12;
                      }
                  },
                  meridiem: function (hour, minute, isLower) {
                      const hm = hour * 100 + minute;
                      if (hm < 600) {
                          return '凌晨';
                      } else if (hm < 900) {
                          return '早上';
                      } else if (hm < 1130) {
                          return '上午';
                      } else if (hm < 1230) {
                          return '中午';
                      } else if (hm < 1800) {
                          return '下午';
                      } else {
                          return '晚上';
                      }
                  },
                  calendar: {
                      sameDay: '[今天]LT',
                      nextDay: '[明天]LT',
                      nextWeek: '[下]ddddLT',
                      lastDay: '[昨天]LT',
                      lastWeek: '[上]ddddLT',
                      sameElse: 'L'
                  },
                  dayOfMonthOrdinalParse: /\d{1,2}(日|月|周)/,
                  ordinal: function (number, period) {
                      switch (period) {
                          case 'd':
                          case 'D':
                          case 'DDD':
                              return number + '日';
                          case 'M':
                              return number + '月';
                          case 'w':
                          case 'W':
                              return number + '周';
                          default:
                              return number;
                      }
                  },
                  relativeTime: {
                      future: '%s内',
                      past: '%s前',
                      s: '几秒',
                      ss: '%d秒',
                      m: '1分钟',
                      mm: '%d分钟',
                      h: '1小时',
                      hh: '%d小时',
                      d: '1天',
                      dd: '%d天',
                      M: '1个月',
                      MM: '%d个月',
                      y: '1年',
                      yy: '%d年'
                  },
                  week: {
                      // GB/T 7408-1994《数据元和交换格式·信息交换·日期和时间表示法》与ISO 8601:1988等效
                      dow: 1, // Monday is the first day of the week.
                      doy: 4  // The week that contains Jan 4th is the first week of the year.
                  }
              })

          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue DatePicker Render 自定义渲染通过按钮来触发时间选择组件
      // 共同的属性
      // 参数
      // 说明	类型	默认值
      // allowClear	是否显示清除按钮	boolean	true
      // autoFocus	自动获取焦点	boolean	false
      // dateRender	作用域插槽，自定义日期单元格的内容	slot="dateRender" slot-scope="current, today"	-
      //     disabled	禁用	boolean	false
      // disabledDate	不可选择的日期	(currentDate: moment) => boolean	无
      // getCalendarContainer	定义浮层的容器，默认为 body 上新建 div	function(trigger)	无
      // locale	国际化配置	object	默认配置
      // mode	日期面板的状态	time|date|month|year|decade	'date'
      // open	控制弹层是否展开	boolean	-
      // placeholder	输入框提示文字	string|RangePicker[]	-
      // popupStyle	额外的弹出日历样式	object对象
      // 比如{width:"100px",height:"100px"}	{}
      // dropdownClassName	额外的弹出日历 className	string	-
      // size	输入框大小，large 高度为 40px，small 为 24px，默认是 32px	string	无
      // suffixIcon	自定义的选择框后缀图标	VNode | slot
      // 共同的事件
      // 事件名称	说明	回调参数
      // openChange	弹出日历和关闭日历的回调	function(status)
      // panelChange	日期面板变化时的回调	function(value, mode)
      // 共同的方法
      // 事件名称	说明
      // blur()	移除焦点
      // panelChange	获取焦点
      // DatePicker
      // 属性名称
      // 说明	类型	默认值
      // defaultValue	默认日期
      // moment	无
      // defaultPickerValue	默认面板日期	moment	无
      // disabledTime	不可选择的时间	function(date)	无
      // format	设置日期格式，为数组时支持多格式匹配，展示以第一个为准。配置参考 moment.js	string | string[]	"YYYY-MM-DD"
      // renderExtraFooter	在面板中添加额外的页脚	slot="renderExtraFooter" slot-scope="mode"	-
      //     showTime	增加时间选择功能
      // <a-date-picker :showTime="{ format: 'HH:mm' }" > </a-date-picker>	Object|boolean	TimePicker Options
      // showTime.defaultValue	设置用户选择日期时默认的时分秒	moment	moment()
      // showToday	是否展示“今天”按钮	boolean	true
      // value(v-model)	日期	moment	无
      // DatePicker事件
      // 事件名称	说明	回调参数
      // change()	时间发生变化的回调	function(date: moment, dateString: string)
      // ok	点击确定按钮的回调	function()
      // MonthPicker
      //---------------------------------------------
      // MonthPicker属性
      // 事件名称	说明	回调参数	默认值
      // defaultValue	默认日期	moment	无
      // defaultPickerValue	默认面板日期	moment	无
      // format	展示的日期格式，配置参考 moment.js	string	"YYYY-MM"
      // monthCellContentRender	自定义的月份内容渲染方法	slot="monthCellContentRender" slot-scope="date, locale"	-
      //     renderExtraFooter	在面板中添加额外的页脚	slot="renderExtraFooter" slot-scope="mode"
      // value(v-model)	日期	moment	无
      // MonthPicker事件
      // 事件名称	说明
      // 回调参数
      // change	时间发生变化的回调，发生在用户选择时间时	function(date: moment, dateString: string)
      // WeekPicker属性
      // 名称	说明	类型	默认值
      // defaultValue	默认日期	moment	-
      // defaultPickerValue	默认面板日期	moment	无
      // format	展示的日期格式，配置参考 moment.js	string	"YYYY-wo"
      // value(v-model)	日期	moment	-
      // renderExtraFooter	在面板中添加额外的页脚	slot="renderExtraFooter" slot-scope="mode"	-
      //     WeekPicker事件
      // 事件名称	说明
      // 回调参数
      // change	时间发生变化的回调，发生在用户选择时间时	function(date: moment, dateString: string)
      // RangePicker属性
      // 属性名称
      // 说明	类型	默认值
      // ranges	预设时间范围快捷选择	{ [range: string]: moment[] } | { [range: string]: () => moment[] }	无
      // separator	设置分隔符	string	'~'
      // defaultValue	默认日期
      // moment	无
      // defaultPickerValue	默认面板日期	moment	无
      // disabledTime	不可选择的时间	function(date)	无
      // format	设置日期格式，为数组时支持多格式匹配，展示以第一个为准。配置参考 moment.js	string | string[]	"YYYY-MM-DD"
      // renderExtraFooter	在面板中添加额外的页脚	slot="renderExtraFooter" slot-scope="mode"	-
      //     showTime	增加时间选择功能
      // <a-date-picker :showTime="{ format: 'HH:mm' }" > </a-date-picker>	Object|boolean	TimePicker Options
      // showTime.defaultValue	设置用户选择日期时默认的时分秒	moment	moment()
      // showToday	是否展示“今天”按钮	boolean	true
      // value(v-model)	日期	moment	无
      // RangePicker事件
      // 事件名称	说明	回调参数
      // calendarChange	待选日期发生变化的回调	function(dates: [moment, moment], dateStrings: [string, string])
      // change()	时间发生变化的回调	function(date: moment, dateString: string)
      // ok	点击确定按钮的回调	function()
      new Vue({
          el: '#app-date-render',
          data() {
              return {
                  locales,
                  selectDatae: undefined
              };
          },
          methods: {
              moment,
              getCurrentDate() {
                  return new Date().toLocaleDateString();
              },
              onChange(date, dateString) {
                  console.log(date, dateString);
              }
          },
          created: function () {
              // 里面的字符可以根据自己的需要进行调整
              moment.locale('zh-cn', {
                  months: '一月_二月_三月_四月_五月_六月_七月_八月_九月_十月_十一月_十二月'.split('_'),
                  monthsShort: '1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月'.split('_'),
                  weekdays: '星期日_星期一_星期二_星期三_星期四_星期五_星期六'.split('_'),
                  weekdaysShort: '周日_周一_周二_周三_周四_周五_周六'.split('_'),
                  weekdaysMin: '日_一_二_三_四_五_六'.split('_'),
                  longDateFormat: {
                      LT: 'HH:mm',
                      LTS: 'HH:mm:ss',
                      L: 'YYYY-MM-DD',
                      LL: 'YYYY年MM月DD日',
                      LLL: 'YYYY年MM月DD日Ah点mm分',
                      LLLL: 'YYYY年MM月DD日ddddAh点mm分',
                      l: 'YYYY-M-D',
                      ll: 'YYYY年M月D日',
                      lll: 'YYYY年M月D日 HH:mm',
                      llll: 'YYYY年M月D日dddd HH:mm'
                  },
                  meridiemParse: /凌晨|早上|上午|中午|下午|晚上/,
                  meridiemHour: function (hour, meridiem) {
                      if (hour === 12) {
                          hour = 0;
                      }
                      if (meridiem === '凌晨' || meridiem === '早上' ||
                          meridiem === '上午') {
                          return hour;
                      } else if (meridiem === '下午' || meridiem === '晚上') {
                          return hour + 12;
                      } else {
                          // '中午'
                          return hour >= 11 ? hour : hour + 12;
                      }
                  },
                  meridiem: function (hour, minute, isLower) {
                      const hm = hour * 100 + minute;
                      if (hm < 600) {
                          return '凌晨';
                      } else if (hm < 900) {
                          return '早上';
                      } else if (hm < 1130) {
                          return '上午';
                      } else if (hm < 1230) {
                          return '中午';
                      } else if (hm < 1800) {
                          return '下午';
                      } else {
                          return '晚上';
                      }
                  },
                  calendar: {
                      sameDay: '[今天]LT',
                      nextDay: '[明天]LT',
                      nextWeek: '[下]ddddLT',
                      lastDay: '[昨天]LT',
                      lastWeek: '[上]ddddLT',
                      sameElse: 'L'
                  },
                  dayOfMonthOrdinalParse: /\d{1,2}(日|月|周)/,
                  ordinal: function (number, period) {
                      switch (period) {
                          case 'd':
                          case 'D':
                          case 'DDD':
                              return number + '日';
                          case 'M':
                              return number + '月';
                          case 'w':
                          case 'W':
                              return number + '周';
                          default:
                              return number;
                      }
                  },
                  relativeTime: {
                      future: '%s内',
                      past: '%s前',
                      s: '几秒',
                      ss: '%d秒',
                      m: '1分钟',
                      mm: '%d分钟',
                      h: '1小时',
                      hh: '%d小时',
                      d: '1天',
                      dd: '%d天',
                      M: '1个月',
                      MM: '%d个月',
                      y: '1年',
                      yy: '%d年'
                  },
                  week: {
                      // GB/T 7408-1994《数据元和交换格式·信息交换·日期和时间表示法》与ISO 8601:1988等效
                      dow: 1, // Monday is the first day of the week.
                      doy: 4  // The week that contains Jan 4th is the first week of the year.
                  }
              })

          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Radio 单选框用法
      //定义选项数组
      var options_radio=[
          {checked:false,value:'A',name:'选项A'},
          {checked:true,value:'B',name:'选项B'},
          {checked:false,value:'C',name:'选项C'},
          {checked:false,value:'D',name:'选项D'},
      ];
      new Vue({
          el: '#app-radio',
          data() {
              return {
                  options_radio
              };
          },
          methods: {
              //选中事件
              onChange(e) {
                  alert('你选择了'+e.target.value);
                  this.options_radio.forEach(m=>{
                      m.checked=m.value==e.target.value;
                  });
              },
          },
          computed:{
              //计算属性
              defValue:function(){
                  var val= options_radio.filter(function(m){
                      return  m.checked===true;
                  });
                  return val[0].value;
              },
          },
          mounted(){
              //动态设置选中项
              var that=this;
              setTimeout(function(){
                  that.options_radio.forEach(m=>{
                      m.checked=false;
                  });
                  that.options_radio[that.options_radio.length-1].checked=true;
              },3000)
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Radio Group 单选框分组
      new Vue({
          el: '#app-radio-group',
          methods: {
              //选中事件
              onChange(e) {
                  alert('你选择了'+e.target.value);
              },
          },

      });


      ////////////////////////////////////////////
      //Ant Design Vue Radio Button 按钮样式
      new Vue({
          el: '#app-radio-button',
          data() {
              return {
                  value: 'a', //默认值
              };
          },
          methods: {
              //选中事件
              onChange(e) {
                  alert('你选择了'+e.target.value);
              },
          },

      });


      ////////////////////////////////////////////
      //Ant Design Vue Radio Style 按钮样式
      // Radio属性
      // 属性名称
      // 说明	类型	默认值
      // autoFocus	自动获取焦点
      // <a-radio :autoFocus="true">Radio</a-radio>
      // cdn引入js开发方式(把大写用-隔开)
      // <a-radio :auto-focus="true">Radio</a-radio>	boolean	false
      // checked	设置当前项是否选中	boolean	false
      // defaultChecked	初始是否选中	boolean	false
      // value	对应的值	any	-
      // RadioGroup属性
      // 属性名称	说明	类型	默认值
      // defaultValue	初始是否选中	any
      // disabled	禁选所有子radio单选器	boolean	false
      // name	通过设置name来区分按钮组	string	-
      // options	以配置形式设置子元素 string[] | Array<{ label: string value: string disabled?: boolean }>
      // 具体用法请看网页底部
      // size	控件大小，只对按钮样式生效	large | default | small	default
      // value(v-model)	设置当前选中的值	any
      // buttonStyle	RadioButton 按钮组的风格样式，目前有描边和填色两种风格	outline | solid	outline
      // RadioGroup 事件
      // 事件名称	说明	参数
      // change	选中值改变时触发事件	function(e:Event)
      // Radio方法
      // 事件名称	说明
      // blur()	移除焦点
      // focus()	获取焦点
      new Vue({
          el: '#app-radio-style',
          data() {
              return {
                  value: 'a', //默认值
              };
          },
          methods: {
              //选中事件
              onChange(e) {
                  alert('你选择了'+e.target.value);
              },
          },

      });

  </script>

  <div>
    <hr>
    <h3>Ant Design Vue Input 输入框用法</h3>
    <div id="app-input">
      <a-input placeholder="输入试试看" allow-clear  v-model="inputValue" :style="style"></a-input>
      <div>{{inputValue}}</div>
    </div>

    <hr>
    <h3>Ant Design Vue Input Prefix Suffix 输入框前缀和后缀</h3>
    <div id="app-input-prefix">
      <div style="padding:6px;">
        <div style="float:left;">
          <a-input placeholder="请输入用户名" v-model="userName" ref="userNameInput">
            <a-icon slot="prefix" type="user" />
            <a-tooltip slot="suffix" title="字符串8-15位">
              <a-icon type="info-circle" style="color: rgba(0,0,0,.45)" />
            </a-tooltip>
          </a-input>
        </div>
        <div style="float:left;padding-left:20px;">
          <a-input prefix="￥" suffix="RMB" v-model="userName" />
        </div>
      </div>
    </div>
    <br>

    <hr>
    <h3>Ant Design Vue Input Group 输入框组合</h3>
    <div id="app-input-group">
      <div  style="padding:6px;">
        <a-input-group compact>
          <a-select default-value="1" style="width:80px">
            <a-select-option value="1">价格</a-select-option>
            <a-select-option value="2">其他</a-select-option>
          </a-select>
          <a-input style=" width: 120px; text-align: center" placeholder="最小" ></a-input>
          <a-input
              style=" width: 30px; border-left: 0; pointer-events: none; backgroundColor: #fff"
              placeholder="~"
              disabled
          ></a-input>
          <a-input style="width: 120px; text-align: center; border-left: 0" placeholder="最大" ></a-input>
        </a-input-group>
      </div>
    </div>

    <hr>
    <h3>Ant Design Vue Input Area 文本域</h3>
    <div id="app-input-area">
      <div style="padding:6px;">
        <a-textarea placeholder="Basic usage" :rows="4" />
        <br/> <br/> <br/>
        <a-textarea
            placeholder="Autosize height with minimum and maximum number of lines"
            :autoSize="{ minRows: 2, maxRows: 6 }"
        />
      </div>
    </div>

    <hr>
    <h3>Ant Design Vue Input Password 密码框</h3>
    <div id="app-input-password">
      <a-input-password placeholder="input password" style="width:300px"></a-input-password>
    </div>

    <hr>
    <h3>Ant Design Vue Input Icon 输入框图标</h3>
    <div id="app-input-icon">
      <a-input placeholder="输入试试看"   addon-before="￥" allow-clear  v-model="inputValue" :style="style">
        <a-icon slot="addonAfter" @click="getValue" type="search"></a-icon>
        <a-icon slot="suffix" @click="getValue" type="setting"></a-icon>
      </a-input>

    </div>

    <hr>
    <h3>Ant Design Vue Input Search 输入框搜索框</h3>
    <div id="app-input-search">
      <a-input-search placeholder="请输入关键字" :loading="loading" v-model="inputValue" @search="onSearch" style="width: 300px" enter-button></a-input-search>
      <br /><br />
      <a-input-search placeholder="请输入关键字" :loading="loading" v-model="inputValue" @search="onSearch" enter-button="Search" size="large" style="width: 300px"></a-input-search>
      <br /><br />
      <a-input-search placeholder="input search text" :loading="loading" v-model="inputValue" style="width: 300px" @search="onSearch" size="large">
        <a-button slot="enter-button">Custom</a-button>
      </a-input-search>
      <br /><br />{{inputValue}}
    </div>

    <hr>
    <h3>Ant Design Vue Input Format 输入框格式化提示</h3>
    <div id="app-input-format">
      <a-tooltip :trigger="['focus']" placement="topLeft" overlayClassName="numeric-input">
      <span slot="title" v-if="value" class="numeric-input-title">
        {{ value !== '-' ? formatNumber(value) : '-' }}
      </span>
        <template slot="title" v-else>
          Input a number
        </template>
        <a-input
            :value="value"
            @change="onChange"
            @blur="onBlur"
            placeholder="Input a number"
            :maxLength="25"
            style="width: 120px"
        />
      </a-tooltip>
    </div>

    <hr>
    <h3>Ant Design Vue Input AddonAfter AddonBefore 输入框后置和前置标签</h3>
    <div id="app-input-laber">
      <a-input placeholder="输入试试看" addon-after="元" addon-before="￥" allow-clear  v-model="inputValue" :style="style"></a-input>
      <div>{{inputValue}}</div>
    </div>

    <hr>
    <h3>Ant Design Vue Input Number 数字输入框</h3>
    <div id="app-input-number">
      <a-input-number id="inputNumber" step="2" :min="1" :max="10" v-model="value" @change="onChange"></a-input-number>
      当前值：{{ value }}

    </div>

    <hr>
    <h3>Ant Design Vue Input Number Format 数字输入框格式化</h3>
    <div id="app-input-numfmt">
      <a-input-number
          :defaultValue="1000"
          :formatter="formatter"
          :parser="parser"
          @change="onChange"
          style="width:200px"
          step="2"
      ></a-input-number>

    </div>

    <hr>
    <h3>Ant Design Vue Mentions 提及@功能和#话题功能</h3>
    <div id="app-mention">
      <a-mentions v-model="value" :loading="loading" @search="onSearch" @select="onSelect" style="width:300px">
        <a-mentions-option :value="item.name" v-for="item in options" :key="item.value">
          {{item.value}}
        </a-mentions-option>
      </a-mentions>
    </div>
  </div>
  <script>
      ////////////////////////////////////////////
      //Ant Design Vue Input 输入框用法
      new Vue({
          el: '#app-input',
          data() {
              return {
                  inputValue: '',
                  style:{width:"200px"}
              };
          },
          methods: {
              getValue() {
                  alert("您刚才输入的是："+this.inputValue);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Input Prefix Suffix 输入框前缀和后缀
      new Vue({
          el: '#app-input-prefix',
          data() {
              return {
                  userName: ''
              };
          },
          methods: {
              emitEmpty() {
                  this.userName = '';
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Input Group 输入框组合
      new Vue({
          el: '#app-input-group',
          data() {
              return {
                  userName: ''
              };
          },
          methods: {
              emitEmpty() {
                  this.userName = '';
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Input Area 文本域
      new Vue({
          el: '#app-input-area',
          data() {
              return {
                  userName: ''
              };
          },
          methods: {
              emitEmpty() {
                  this.userName = '';
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Input Password 密码框
      new Vue({
          el: '#app-input-password',
          data() {
              return {
                  inputValue: '',
              };
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Input Icon 输入框图标
      new Vue({
          el: '#app-input-icon',
          data() {
              return {
                  inputValue: '',
                  style:{width:"300px"}
              };
          },
          methods: {
              getValue() {
                  alert("您刚才输入的是："+this.inputValue);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Input Search 输入框搜索框
      new Vue({
          el: '#app-input-search',
          data() {
              return {
                  loading: false,
                  inputValue: '',
              };
          },
          methods: {
              //搜索框点击事件
              onSearch(value) {
                  var that = this;
                  //设置加载中状态
                  that.loading = true;
                  console.log(value);
                  setTimeout(function () {
                      that.loading = false;
                  }, 3000);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Input Format 输入框格式化提示
      new Vue({
          el: '#app-input-format',
          data() {
              return {
                  value: '',
              };
          },
          methods: {
              formatNumber,
              onChange(e) {
                  const { value } = e.target;
                  const reg = /^-?[0-9]*(\.[0-9]*)?$/;
                  if ((!isNaN(value) && reg.test(value)) || value === '' || value === '-') {
                      this.value = value;
                  }
              },
              // '.' at the end or only '-' in the input box.
              onBlur() {
                  const { value, onChange } = this;
                  let valueTemp = value;
                  if (value.charAt(value.length - 1) === '.' || value === '-') {
                      onChange({ value: value.slice(0, -1) });
                  }
              },
          },
      });
      function formatNumber(value) {
          value += '';
          const list = value.split('.');
          const prefix = list[0].charAt(0) === '-' ? '-' : '';
          let num = prefix ? list[0].slice(1) : list[0];
          let result = '';
          while (num.length > 3) {
              result = `-${num.slice(-3)}${result}`;
              num = num.slice(0, num.length - 3);
          }
          if (num) {
              result = num + result;
          }

          return `${list[1]}` ? `${prefix}${result}${list[1]}`:`${prefix}${result}`;
      }


      ////////////////////////////////////////////
      //Ant Design Vue Input AddonAfter AddonBefore 输入框后置和前置标签
      // Input属性
      // 属性名称	说明	类型	默认值
      // addonAfter	设置input后置标签	string|slot
      // addonBefore	设置input前置标签	string|slot
      // defaultValue	输入框默认值	string
      // disabled	是否禁用输入框，默认false	boolean	false
      // id	输入框的id	string
      // maxLength	可以输入的最大长度 1.5.0后有效	number
      // prefix	input前缀图标	string|slot
      // size	控件大小。可选 large default small	string	default
      // suffix	input后缀图标	string|slot
      // type	声明 input 类型，同原生 input 标签的 type 属性。
      // (请直接使用 Input.TextArea 代替 type="textarea")	string	text
      // value(v-model)	输入框内容	string
      // allowClear	点击清除图标可以删除输入框内容	boolean
      // Input事件
      // 事件名称	说明	回调参数
      // change	输入框内容变化时的回调事件	function(e)
      // pressEnter	回车事件	function(e)
      // Input.TextArea属性
      // 属性名称
      // 说明	类型	默认值
      // autosize	是否自适应内容高度，可设置为 true|false
      // 或对象：{ minRows: 2, maxRows: 6 }	boolean|object
      // defaultValue	文本域默认内容	string
      // value(v-model)	文本域内容	string
      // allowClear	可以点击清除图标删除内容 1.5.0+支持	boolean	false
      // Input.TextArea事件
      // 事件名称	说明	参数
      // pressEnter	回车键的回调事件	function(e)
      // input.search属性
      // 属性名称	说明	类型	默认值
      // enterButton	是否有确认按钮，可设为按钮文字。该属性会与 addon 冲突	boolean|slot	false
      // loading	搜索 loading加载效果，1.5.0+支持	boolean
      // Input.Search事件
      // 事件名称	说明	参数
      // search	回车键的回调事件	function(value, event)
      // 其余属性和 Input 一致。
      //----------------------------------
      // Input.group属性
      // 属性名称
      // 说明	类型	默认值
      // compact	是否用紧凑模式	boolean	false
      // size	Input.Group 中所有的 Input 的大小，可选 large default small	string	default
      // <a-input-group>
      // <a-input /> </a-input>
      // <a-input /> </a-input>
      // </a-input-group>
      // Input.Password (1.14.0 新增)
      // 属性名称
      // 说明	类型	默认值
      // visibilityToggle	是否显示切换按钮	boolean	true
      // 其余属性和 Input 一致
      new Vue({
          el: '#app-input-laber',
          data() {
              return {
                  inputValue: '',
                  style:{width:"200px"}
              };
          },
          methods: {
              getValue() {
                  alert("您刚才输入的是："+this.inputValue);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Input Number 数字输入框
      new Vue({
          el: '#app-input-number',
          data() {
              return {
                  value: 3,
              };
          },
          methods: {
              //输入值变化后的事件
              onChange(value) {
                  console.log('changed', value);
              },
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Input Number Format 数字输入框格式化
      // InputNumber属性
      // 属性名称
      // 描述	类型	默认值
      // autoFocus	自动获取焦点	boolean	false
      // defaultValue	初始值	number
      // disabled	禁用	boolean	false
      // formatter	指定输入框展示值的格式
      // 具体用法参考，点击查看	function(value: number | string): string	-
      //     max	最大值	number	-
      // min	最小值	number	-
      // parser	指定从 formatter 里转换回数字的方式，和 formatter 搭配使用，具体用法点击查看	function( string): number	-
      //     precision	数值精度
      // <a-input-number precision="2" ></a-input-number>	number	-
      // decimalSeparator	小数点分隔符号，比如12.67默认分隔符为小数点
      // <a-input-number precision="2" decimalSeparator="#" ></a-input-number> 那么会显示成 12#67；注意如你是引入JS开发方式decimalSeparator为decimal-separator	string	-
      // step	每次改变步数，可为小数,当用户点增加减少时加减的数量
      // <a-input-number step="10" ></a-input-number>	number|string	1
      // size	输入框大小	string	-
      // value(v-model)	当前值	number
      // InputNumber事件
      // 事件名称	说明	参数	版本
      // change	输入框内容变化回调事件	function(value: number | string)
      // pressEnter	按下回车的回调	function(e)
      // InputNumber方法
      // 事件名称	说明
      // blur()	移除焦点
      // focus()	获取焦点
      new Vue({
          el: '#app-input-numfmt',
          data() {
              return {
                  value: 3,
              };
          },
          methods: {
              //用逗号分隔数字
              formatter(value){
                  return `$ ${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
              },
              //把格式化后的字符串转换为数字
              parser(value) {
                  return  value.replace(/\$\s?|(,*)/g, '');
              },
              //获取变化后的数字
              onChange(value) {
                  console.log('changed', value);
              },
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Mentions 提及@功能和#话题功能
      // Mentions属性
      // 提供引入js开发方式的填写如果遇到驼峰属性改成-即可，比如notFoundContent改成not-found-content ，<a-mentions not-found-content="未找到更多数据" v-model="value">
      // 属性名称  说明	类型	默认值
      // autoFocus	自动获得焦点	boolean	false
      // defaultValue	默认值	string
      // filterOption	自定义过滤逻辑	false | (input: string, option: OptionProps) => boolean
      // notFoundContent	没有数据时显示的内容	string或vnode	'Not Found'
      // placement	下拉列表层展示位置	top | bottom	bottom
      // prefix	触发关键字	string | string[]	'@'
      // split	选中项的前后分隔符	string	' '
      // validateSearch	自定义触发验证逻辑	(text: string, props: MentionsProps) => void
      //     value(v-model)	设置值默认值	string
      // getPopupContainer	指定建议框挂载的 HTML 节点，默认当前输入框，指定html元素对象	() => HTMLElement
      // Mentions事件
      // 事件名称	说明	参数
      // blur	失去焦点的时的事件	function
      // change	值改变时触发事件	function(value: string)
      // focus	获得焦点时回调事件	function
      // search	文本框值变化时回调事件，和change的
      // 区别是change当用户选中后才会触发	function(value: string, prefix: string)
      // select	选择选项时触发	function(option: OptionProps, prefix: string)
      // Mentions 方法
      // 事件名称	说明
      // blur()	移除焦点
      // focus()	获取焦点
      new Vue({
          el: '#app-mention',
          data() {
              return {
                  value: '@itxst.com',
                  loading: false,//是否正在加载数据
                  options: []    //数据集
              };
          },
          methods: {
              //选择事件
              onSelect(option) {
                  alert('你选择了:' + JSON.stringify(option.value));
              },
              onSearch(keyword) {
                  var that = this;
                  if (that.loading == true) return;
                  that.loading = true;//设置正在加载数据
                  setTimeout(function () {
                      that.loadData(keyword);
                  }, 2000)
              },
              //模拟向服务器请求数据
              loadData(keyword) {
                  var that = this;
                  that.options = [];
                  for (var i = 0; i < 10; i++) {
                      that.options.push({ name: 'n' + i, value: i });
                  }
                  //数据加载完成
                  that.loading = false;
              }
          },
      });
  </script>

  <div>
    <hr>
    <h3>Ant Design Vue Rate 评分打分5星组件</h3>
    <div id="app-rate">
      <a-rate defaultValue="3" v-model="value" count="10" @change="onChange"/>
    </div>

    <hr>
    <h3>Ant Design Vue Rate Set 评分打分5星组件设置半星</h3>
    <div id="app-rate-set">
      <a-rate defaultValue="3" v-model="value" allow-half count="6" @change="onChange"/>
    </div>

    <hr>
    <h3>Ant Design Vue Rate Tip 评分打分5星组件设置提示</h3>
    <div id="app-rate-tip">
      <a-rate defaultValue="3" v-model="value" :tooltips="tips" allow-half count="6" @change="onChange"/>
    </div>

    <hr>
    <h3>Ant Design Vue Rate Icon 评分打分5星组件自定义图标或文字</h3>
    <div id="app-rate-icon">
      <a-rate defaultValue="3" v-model="value" :tooltips="tips" allow-half count="6" @change="onChange">
        <a-icon slot="character" type="heart"></a-icon>
      </a-rate>
    </div>

    <hr>
    <h3>Ant Design Vue Rate Must 评分打分5星组件设置必须评分</h3>
    <div id="app-rate-must">
      <a-rate defaultValue="3" :allow-clear="false" v-model="value" :tooltips="tips" allow-half count="6" @change="onChange">
        <a-icon slot="character" type="heart"></a-icon>
      </a-rate>
    </div>

    <hr>
    <h3>Ant Design Vue Select 下拉框用法</h3>
    <div id="app-select">
      <a-select default-value="www.microsoft.com" style="width: 120px" @change="onChange">
        <a-select-option
            :value="item.value"
            :disabled="item.disabled"
            v-for="item in options"
            :key="item.value">
          {{item.label}}
        </a-select-option>
      </a-select>
      <a-select default-value="itxst" style="width: 150px" disabled>
        <a-select-option value="itxst">
          禁用Select组件
        </a-select-option>
      </a-select>
      <a-select default-value="itxst" style="width: 120px" loading>
        <a-select-option value="itxst">
          加载中效果
        </a-select-option>
      </a-select>
    </div>

    <hr>
    <h3>Ant Design Vue Select Label 下拉框标签模式</h3>
    <div id="app-sel-label">
      <a-select placeholder="标签模式" mode="tags" style="width: 220px" @change="onChange">
        <a-select-option
            :value="item.value"
            :disabled="item.disabled"
            v-for="item in options"
            :key="item.value">
          {{item.label}}
        </a-select-option>
      </a-select>
    </div>

    <hr>
    <h3>Ant Design Vue Select Cursel 下拉框获取选中项</h3>
    <div id="app-sel-cursel">
      <a-select placeholder="标签模式" mode="tags"
                label-in-value style="width: 220px"
                @change="handleChange">
        <a-select-option
            :value="item.value"
            :disabled="item.disabled"
            v-for="item in options"
            :key="item.value"
        >{{item.label}}</a-select-option>
      </a-select>
    </div>

    <hr>
    <h3>Ant Design Vue Select Filter 下拉框隐藏已选项</h3>
    <div id="app-sel-filter">
      <a-select placeholder="标签模式" mode="multiple" style="width: 220px" @change="onChange">
        <a-select-option
            :disabled="item.disabled"
            v-for="item in filteredOptions"
            :key="item.value">
          {{item.label}}
        </a-select-option>
      </a-select>
    </div>

    <hr>
    <h3>Ant Design Vue Select Link 下拉框联动</h3>
    <div id="app-sel-link">
      <div>
        <a-select  :default-value="province[0]"  style="width: 150px" @change="onChange">
          <a-select-option v-for="province in province" :key="province">
            {{ province }}
          </a-select-option>
        </a-select>
        <a-select  v-model="second"  style="width: 150px">
          <a-select-option v-for="city in selcity" :key="city">
            {{ city }}
          </a-select-option>
        </a-select>
      </div>
    </div>

    <hr>
    <h3>Ant Design Vue Select Multiple 下拉框多选</h3>
    <div id="app-sel-multiple">
      <a-select
          mode="multiple"
          :default-value="['a1', 'b2']"
          style="width: 80%"
          placeholder="请选择"
          @change="onChange"
      >
        <a-select-option v-for="i in 25" :key="(i + 9).toString(36) + i">
          {{ (i + 9).toString(36) + i }}
        </a-select-option>
      </a-select>
    </div>

    <hr>
    <h3>Ant Design Vue Select Group 下拉框分组</h3>
    <div id="app-sel-group">
      <a-select default-value="itxst" style="width: 200px" @change="onChange">
        <a-select-opt-group>
          <span slot="label"><a-icon type="user"></a-icon>国内</span>
          <a-select-option value="itxst">
            itxst.com
          </a-select-option>
          <a-select-option value="qq">
            qq.com
          </a-select-option>
        </a-select-opt-group>
        <a-select-opt-group label="国外">
          <a-select-option value="yahoo">
            yahoo.com
          </a-select-option>
          <a-select-option value="google">
            google.com
          </a-select-option>
        </a-select-opt-group>
      </a-select>
    </div>

    <hr>
    <h3>Ant Design Vue Select Ajax 搜索框，仿百度下拉搜索提示框,Ajax服务器搜索</h3>
    <div id="app-sel-ajax">
      <a-select
          show-search
          :value="value"
          placeholder="请输入关键词"
          style="width: 200px"
          :default-active-first-option="false"
          :filter-option="false"
          :not-found-content="null"
          @search="handleSearch"
          @change="handleChange"
      >
        <a-icon slot="suffixIcon" type="search"></a-icon>
        <a-select-option v-for="d in data" :key="d.value">
          {{ d.text }}
        </a-select-option>
      </a-select>
    </div>

    <hr>
    <h3>Ant Design Vue Select Client 搜索框，仿百度下拉搜索提示框,客户端下拉框筛选</h3>
    <div id="app-sel-client">
      <a-select show-search default-value="google" style="width: 200px" @change="onChange">
        <a-icon slot="suffixIcon" type="search"></a-icon>
        <a-select-option value="yahoo">
          yahoo.com
        </a-select-option>
        <a-select-option value="itxst">
          itxst.com
        </a-select-option>
        <a-select-option value="disabled" disabled>
          Disabled
        </a-select-option>
        <a-select-option value="google">
          google.com
        </a-select-option>
      </a-select>
    </div>

    <hr>
    <h3>Ant Design Vue Select 属性和事件</h3>
    <div id="app-sel-event">
    <a-select mode="tags"  :max-tag-count="2" :max-tag-text-length="6" style="width: 300px" placeholder="属性演示" >
      <a-icon slot="maxTagPlaceholder" type="smile"></a-icon>
      <a-select-option  value="baidu.com">www.baidu.com</a-select-option>
      <a-select-option  value="itxst.com">www.itxst.com</a-select-option>
      <a-select-option  value="google.com">www.google.com</a-select-option>
      <a-select-option  value="mircosoft.com">www.mircosoft.com</a-select-option>
    </a-select>
  </div>
  </div>
  <script>
      ////////////////////////////////////////////
      //Ant Design Vue Rate 评分打分5星组件
      new Vue({
          el: '#app-rate',
          data() {
              return {
                  value: 2, //默认值
              };
          },
          methods: {
              //选中事件
              onChange(value) {
                  alert('你打了'+value+'分');
              },
          },

      });


      ////////////////////////////////////////////
      //Ant Design Vue Rate Set 评分打分5星组件 设置半星
      new Vue({
          el: '#app-rate-set',
          data() {
              return {
                  value: 2.5, //默认值
              };
          },
          methods: {
              //选中事件
              onChange(value) {
                  alert('你打了'+value+'分');
              },
          },

      });


      ////////////////////////////////////////////
      //Ant Design Vue Rate Tip 评分打分5星组件设置提示
      new Vue({
          el: '#app-rate-tip',
          data() {
              return {
                  value: 2, //默认值
                  tips: ['不满意', '糟糕', '一般', '优秀', '非常满意'],
              };
          },
          methods: {
              //选中事件
              onChange(value) {
                  alert('你打了'+value+'分');
              },
          },

      });


      ////////////////////////////////////////////
      //Ant Design Vue Rate Icon 评分打分5星组件自定义图标或文字
      new Vue({
          el: '#app-rate-icon',
          data() {
              return {
                  value: 2, //默认值
                  tips: ['不满意', '糟糕', '一般', '优秀', '非常满意'],
              };
          },
          methods: {
              //选中事件
              onChange(value) {
                  alert('你打了'+value+'分');
              },
          },

      });


      ////////////////////////////////////////////
      //Ant Design Vue Rate Must 评分打分5星组件设置必须评分
      // Rate属性
      // 属性名称	说明	类型	默认值
      // allowClear	是否允许不评分即设置0分	boolean	true
      // allowHalf	是否允许半选、半分	boolean	false
      // autoFocus	自动获取焦点	boolean	false
      // character	自定义图标或字符	String or slot="character"	<Icon type="star" />
      //     count	总分数	number	5
      // defaultValue	默认值	number	0
      // disabled	只读设置	boolean	false
      // tooltips	提示文字	string[]	-
      // value(v-model)	当前值	number	-
      // Rate事件
      // 事件名称	说明	回调参数
      // blur	失去焦点时的回调函数	Function()
      // change	选择时的回调函数,value数字类型	Function(value)
      // focus	获取焦点时的回调函数	Function()
      // hoverChange	鼠标经过时数值变化的回调	Function(value)
      // keydown	按键回调(可以按方向键选择分数)	Function(event)
      // Rate方法
      // 事件名称	说明
      // blur()	移除焦点
      // focus()	获取焦点
      new Vue({
          el: '#app-rate-must',
          data() {
              return {
                  value: 2, //默认值
                  tips: ['你最少得打一分', '糟糕', '一般', '优秀', '非常满意'],
              };
          },
          methods: {
              //选中事件
              onChange(value) {
                  alert('你打了'+value+'分');
              },
          },

      });


      ////////////////////////////////////////////
      //Ant Design Vue Select 下拉框用法
      var options_sel = [
          { label: "微软", value: "www.microsoft.com", disabled: false },
          { label: "谷歌(禁止选择)", value: "www.google.com", disabled: true },
          { label: "IT小书童", value: "www.itxst.com", disabled: false }
      ];
      new Vue({
          el: '#app-select',
          data() {
              return {
                  options: options_sel
              };
          },
          methods: {
              onChange(value) {
                  console.log("你选择了:" + value);
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Select Label 下拉框标签模式
      var options_label = [
          { label: "微软", value: "www.microsoft.com", disabled: false },
          { label: "谷歌(禁止选择)", value: "www.google.com", disabled: true },
          { label: "IT小书童", value: "www.itxst.com", disabled: false }
      ];
      new Vue({
          el: '#app-sel-label',
          data() {
              return {
                  options: options_label
              };
          },
          methods: {
              onChange(value) {
                  console.log("你选择了:" + value);
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Select Cursel 下拉框获取选中项
      var options_cursel = [
          { label: "微软", value: "www.microsoft.com", disabled: false },
          { label: "谷歌(禁止选择)", value: "www.google.com", disabled: true },
          { label: "IT小书童", value: "www.itxst.com", disabled: false }
      ];
      new Vue({
          el: '#app-sel-cursel',
          data() {
              return {
                  options: options_cursel
              };
          },
          methods: {
              //获取选择对象
              handleChange(items) {
                  //如果是mode='tag''multiple'模式 items是数字，否则是对象  items.key
                  alert("你选择了:" + items[0].key+" ; "+items[0].label);
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Select Filter 下拉框隐藏已选项
      var options_filter = [
          { label: "微软", value: "www.microsoft.com", disabled: false },
          { label: "谷歌(禁止选择)", value: "www.google.com", disabled: true },
          { label: "IT小书童", value: "www.itxst.com", disabled: false }
      ];
      new Vue({
          el: '#app-sel-filter',
          data() {
              return {
                  selectedItems:[],//选中对象
                  options: options_filter
              };
          },
          computed: {
              filteredOptions() {
                  let that=this;
                  let  arr=[];
                  that.options.forEach(a=>{
                      var isExist=false;
                      that.selectedItems.forEach(m=>{
                          if(a.value===m) isExist=true;
                      });
                      if(isExist==false) {arr.push({label: a.label, value: a.value, disabled: a.disabled});}
                  });
                  console.log(arr);
                  return arr;
              },
          },
          methods: {
              onChange(items) {

                  this.selectedItems=items;
              }
          }
      });


      ////////////////////////////////////////////
      //Ant Design Vue Select Link 下拉框联动
      new Vue({
          el: '#app-sel-link',
          data() {
              return {
                  //省份
                  province: ['浙江省', '江西省'],
                  //城市
                  city: [['杭州市', '宁波市', '嘉兴市'], ['上饶市', '赣州市', '吉安市']],
                  //根据第一个选项 获取第二给下拉框的数据（也可以是后台ajax请求）
                  selcity:[],
                  //第二个下拉框的默认选中值
                  second:'杭州市',
              };
          },
          methods: {
              onChange(value) {
                  if(value=='浙江省')  this.selcity = this.city[0];
                  if(value=='江西省')  this.selcity = this.city[1];
                  this.second=this.selcity[0];
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Select Multiple 下拉框多选
      new Vue({
          el: '#app-sel-multiple',
          methods: {
              onChange(value) {
                  console.log('你选择了：'+value);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Select Group 下拉框分组
      new Vue({
          el: '#app-sel-group',
          methods: {
              onChange(value) {
                  alert('你选择了：'+value);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Select Ajax 搜索框，仿百度下拉搜索提示框,Ajax服务器搜索
      new Vue({
          el: '#app-sel-ajax',
          data() {
              return {
                  data: [],//搜索事件
                  value: undefined,
              };
          },
          methods: {
              //输入框事件
              handleSearch(keyword) {
                  //模拟往服务器发送请求
                  this.ajax(keyword);
              },
              handleChange(value) {
                  console.log(value);
                  this.value=value;
              },
              //模拟往服务器发送请求
              ajax(keyword){
                  var that=this;
                  that.data = [];
                  for(var i=0;i<3;i++) {
                      that.data.push({
                          value: i,
                          text:keyword+i,
                      });
                  };
              }
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Select Client 搜索框，仿百度下拉搜索提示框,客户端下拉框筛选
      new Vue({
          el: '#app-sel-client',
          data() {
              return {
                  data: [],//搜索事件
                  value: undefined,
              };
          },
          methods: {
              onChange(value) {
                  console.log(value);
                  this.value=value;
              },

          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Select 属性和事件
      // 属性列表
      // 属性名称	说明	参数	默认值
      // allowClear	清除图标	boolean	false
      // autoClearSearchValue	是否在选中项后清空搜索框，
      // 只在 mode 为 multiple 或 tags 时有效。	boolean	true
      // autoFocus	默认是否获取焦点	boolean	false
      // defaultActiveFirstOption	是否默认高亮第一个选项。	boolean	true
      // defaultValue	指定默认选中项	string|string[]|number|number[]
      // disabled	是否禁用	boolean	false
      // dropdownClassName	下拉菜单的 className 属性	string	-
      // dropdownMatchSelectWidth	下拉菜单和选择器同宽	boolean	true
      // dropdownRender	自定义下拉框内容	(menuNode: VNode, props) => VNode
      // dropdownStyle	下拉菜单的 style 属性	object
      // 比如{width:'200px',height:'100px'}
      // dropdownMenuStyle	dropdown 菜单自定义样式	object
      // filterOption	 根据输入项进行筛选,返回ture表示显示	function(inputValue, option)
      // firstActiveValue	默认高亮的选项	string|string[]
      // getPopupContainer	菜单渲染父节点。默认渲染到 body 上，
      // 如果你遇到菜单滚动定位问题，试试修改为滚动的区域，并相对其定位。	function(triggerNode)	() => document.body
      // labelInValue	是否把每个选项的 label 包装到 value 中，会把 Select 的 value 类型从 string 变为 {key: string, label: vNodes} 的格式	boolean	false
      // maxTagCount	最多显示多少个 tag标签	number	-
      // maxTagPlaceholder	隐藏 tag 时显示的内容	slot/function(omittedValues)
      // maxTagTextLength	最大显示的 tag 文本长度	number
      // mode	设置 Select 的模式为多选或标签	'default' | 'multiple' | 'tags' | 'combobox'
      // notFoundContent	当下拉列表为空时显示的内容	string|slot 默认'Not Found'
      // optionFilterProp	搜索时过滤对应的 option 属性，如设置为 children 表示对内嵌内容进行搜索	string	value
      // optionLabelProp	回填到选择框的 Option 的属性值，默认是 Option 的子元素。比如在子元素需要高亮效果时，此值可以设为 value。	string	children （combobox 模式下为 value）
      // placeholder	选择框默认文字	string|slot
      // showSearch	使单选模式可搜索	boolean	false
      // showArrow	是否显示下拉小箭头	boolean	true
      // size	选择框大小，可选 large small	string	default
      // suffixIcon	自定义的选择框后缀图标	VNode | slot
      // removeIcon	自定义的多选框清除图标	VNode | slot
      // clearIcon	自定义的多选框清空图标	VNode | slot
      // menuItemSelectedIcon	自定义当前选中的条目图标	VNode | slot
      // tokenSeparators	在 tags 和 multiple 模式下自动分词的分隔符	string[]
      // value(v-model)	指定当前选中的条目	string|string[]|number|number[]
      // options	options 数据，如果设置则不需要手动构造 selectOption 节点	array<{value, label, [disabled, key, title]}>
      // defaultOpen	是否默认展开下拉菜单	boolean	-
      // open	是否展开下拉菜单	boolean	-
      new Vue({
          el: '#app-sel-event',
          data() {
              return {
              };
          },
      });
  </script>

  <div>
    <hr>
    <h3>Ant Design Vue Slider 滑动输入条</h3>
    <div id="app-slider">
      <a-slider id="itxst"
                v-model="inputVal"
                :default-value="10"
                :min="0"
                :max="20"
                :step="2"
                :disabled="disabled"
      ></a-slider>
      <a-slider range :default-value="[3, 10]" :min="1" :max="20"  :disabled="disabled" />
      启用{{inputVal}}: <a-switch size="small" :checked="disabled" @change="disabledChange" ></a-slider>
    </div>

    <hr>
    <h3>Ant Design Vue Slider Vertical 滑动输入条垂直方向</h3>
    <div id="app-slider-vertical">
      <div style="height: 200px">
        <div style="display: inline-block;height: 200px;marginLeft: 70px">
          <a-slider vertical :default-value="20" ></a-slider>
        </div>
        <div style="display: inline-block;height: 200px;marginLeft: 70px">
          <a-slider vertical range :step="10" :default-value="[25, 60]" ></a-slider>
        </div>
        <div style="display: inline-block;height: 200px;marginLeft: 70px">
          <a-slider vertical range :marks="marks" :default-value="[16, 30]"></a-slider>
        </div>
      </div>
    </div>

    <hr>
    <h3>Ant Design Vue Slider Tip 滑动输入条自定义提示</h3>
    <div id="app-slider-tip">
      <a-slider :tip-formatter="formatter" ></a-slider>
      <a-slider :tip-formatter="null" ></a-slider>
    </div>

    <hr>
    <h3>Ant Design Vue Slider Attribute 滑动输入条属性</h3>
    <div id="app-slider-attribute">
      <a-slider :tip-formatter="formatter" :getTooltipPopupContainer="cc"/>
    </div>

    <hr>
    <h3>Ant Design Vue Slider AfterChange 滑动输入条拖动后的事件</h3>
    <div id="app-slider-after">
      <a-slider @afterChange="afterChange"/>
    </div>

    <hr>
    <h3>Ant Design Vue Slider Change 滑动输入条拖动事件</h3>
    <div id="app-slider-change">
      <a-slider @change="change"></a-slider>
      <div> {{currVal}}</div>
    </div>

    <hr>
    <h3>Ant Design Vue Switch 开关</h3>
    <div id="app-switch">
      <a-switch  :checked="checked" @change="onChange"></a-switch>
    </div>

    <hr>
    <h3>Ant Design Vue Switch Icon 开关自定义图标或文字</h3>
    <div id="app-switch-icon">
      <a-switch checked-children="开" un-checked-children="关" default-checked></a-switch>
       
      <a-switch checked-children="1" un-checked-children="0" ></a-switch>
       
      <a-switch default-checked>
        <a-icon slot="checkedChildren" type="check" ></a-icon>
        <a-icon slot="unCheckedChildren" type="close" ></a-icon>
      </a-switch>
    </div>

    <hr>
    <h3>Ant Design Vue Switch Load 开关加载中</h3>
    <div id="app-switch-load">
      <a-switch loading default-checked ></a-switch>
      <a-switch size="small" loading  ></a-switch>
    </div>

  </div>
  <script>
      ////////////////////////////////////////////
      //Ant Design Vue Slider 滑动输入条
      new Vue({
          el: '#app-slider',
          data() {
              return {
                  disabled: false,
                  inputVal:15
              };
          },
          methods: {
              disabledChange(disabled) {
                  this.disabled = disabled;
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Slider Vertical 滑动输入条垂直方向
      new Vue({
          el: '#app-slider-vertical',
          data() {
              return {
                  marks: {
                      0: '0°C',
                      26: '26°C',
                      37: '37°C',
                      100: {
                          style: {
                              color: '#f50',
                          },
                          label: '100°C',
                      },
                  },
              };
          },
          methods: {
              handleDisabledChange(disabled) {
                  this.disabled = disabled;
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Slider Tip 滑动输入条自定义提示
      new Vue({
          el: '#app-slider-tip',
          data() {
              return {
                  disabled: false,
              };
          },
          methods: {
              formatter(value) {
                  return `${value}%`;
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Slider Attribute 滑动输入条属性
      // 属性列表
      //--------------
      // 属性名称	类型	说明
      // auto-focus	boolean	组件是否自动获取焦点
      // default-value	number|number[]	初始化值，0 或  [0, 0]
      // disabled	boolean	控件是否禁用，默认false
      // dots	boolean	是否只能拖到刻度上，默认false
      // included
      //---------------
      // marks	object	刻度标记，key 的类型必须为数字且取值在闭区间 [min, max] 内
      // 每个标记可以单独设置样式
      // max	number	宽度最大值
      // min	number	刻度最小值
      // range	boolean	默认false，双滑块模式，区间模式
      // reverse	boolean	默认false，反向坐标轴
      // step	number|null	默认1，步长每次滑动的刻度长度
      // tip-formatter	Function|null	实时把当前的值在Tooltip 提示中显示，比如你要显示进度条
      // value(v-model)	number	当前值
      // vertical	Boolean	是否垂直显示，默认false
      // tooltip-placement	string	设置 Tooltip 展示位置。参考tooltip组件
      // top left right bottom topLeft topRight bottomLeft
      // bottomRight leftTop leftBottom rightTop rightBottom
      // tooltip-visible	boolean	true始终显示提示，false始终不显示提示
      // getTooltipPopupContainer	Function	Tooltip 渲染父节点，默认渲染到 body 上。
      // () => document.body
      new Vue({
          el: '#app-slider-attribute',
          data() {
              return {
                  disabled: false,
              };
          },
          methods: {
              formatter(value) {
                  return `${value}%`;
              },
              //tooltip提示浮层渲染父节点
              cc(){
                  return  document.body;
              }
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Slider AfterChange 滑动输入条拖动后的事件
      new Vue({
          el: '#app-slider-after',
          data() {
              return {
                  disabled: false,
              };
          },
          methods: {
              //afterChange事件
              afterChange(value){
                  alert(value);
              }
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Slider Change 滑动输入条拖动事件
      new Vue({
          el: '#app-slider-change',
          data() {
              return {
                  currVal: '',
              };
          },
          methods: {
              change(value){
                  this.currVal=value;
              }
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Switch 开关
      new Vue({
          el: '#app-switch',
          data() {
              return {
                  checked:false
              };
          },
          methods: {
              onChange(checked) {
                  this.checked=checked;
                  console.log(`切换 to ${checked}`);
              },
          },
      });


      ////////////////////////////////////////////
      //Ant Design Vue Switch Icon 开关自定义图标或文字
      new Vue({
          el: '#app-switch-icon',
          data() {
              return {
              };
          }
      });

      ////////////////////////////////////////////
      //Ant Design Vue Switch Load 开关加载中
      new Vue({
          el: '#app-switch-load',
          data() {
              return {
              };
          }
      });
  </script>
</body>
</html>