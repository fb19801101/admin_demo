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
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
  <meta charset="utf-8">
  <title>iconfont 图标</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/css/cube-1.3.2.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/font-ext/iconfont.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/font-ext/demo.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/js/layui-2.5.6/ext/modules/admin/style/admin.css" media="all">
</head>
<body>
<div class="main">
  <h1 class="logo"><a href="https://www.iconfont.cn/" title="iconfont 首页" target="_blank">&#xe86b;</a></h1>
  <div class="nav-tabs">
    <ul id="tabs" class="dib-box">
      <li class="dib active"><span>Unicode</span></li>
      <li class="dib"><span>Font class</span></li>
      <li class="dib"><span>Symbol</span></li>
    </ul>

    <a href="https://www.iconfont.cn/manage/index?manage_type=myprojects&projectId=1942807" target="_blank" class="nav-more">查看项目</a>

  </div>
  <div class="tab-container">
    <div class="content unicode" style="display: block;">
      <ul class="icon_lists dib-box">
        <c:forEach items="${jsons}" var="json">
          <li class="dib">
            <span class="icon lay-icon">&#x${json.unicode}</span>
            <div class="name">${json.name}</div>
            <div class="code-name">&amp;#x${json.unicode}</div>
          </li>
        </c:forEach>
      </ul>
      <div class="article markdown">
        <h2 id="unicode-">Unicode 引用</h2>
        <hr>

        <p>Unicode 是字体在网页端最原始的应用方式，特点是：</p>
        <ul>
          <li>兼容性最好，支持 IE6+，及所有现代浏览器。</li>
          <li>支持按字体的方式去动态调整图标大小，颜色等等。</li>
          <li>但是因为是字体，所以不支持多色。只能使用平台里单色的图标，就算项目里有多色图标也会自动去色。</li>
        </ul>
        <blockquote>
          <p>注意：新版 iconfont 支持多色图标，这些多色图标在 Unicode 模式下将不能使用，如果有需求建议使用symbol 的引用方式</p>
        </blockquote>
        <p>Unicode 使用步骤如下：</p>
        <h3>第一步：拷贝项目下面生成的 <code>@font-face</code></h3>
        <pre><code class="language-css"
          >@font-face {
            font-family: 'lay-icon-ext';
            src: url('iconfont.eot');
            src: url('iconfont.eot?#iefix') format('embedded-opentype'),
                url('iconfont.woff2') format('woff2'),
                url('iconfont.woff') format('woff'),
                url('iconfont.ttf') format('truetype'),
                url('iconfont.svg#lay-icon-ext') format('svg');
          }
        </code></pre>
        <h3>第二步：定义使用 iconfont 的样式</h3>
        <pre><code class="language-css"
          >.lay-icon-ext {
            font-family: "lay-icon-ext" !important;
            font-size: 16px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
          }
        </code></pre>
        <h3>第三步：挑选相应图标并获取字体编码，应用于页面</h3>
        <pre><code class="language-html"
          >&lt;span class="lay-icon-ext"&gt;&amp;#x33;&lt;/span&gt;
        </code></pre>
        <blockquote>
          <p>"lay-icon-ext" 是你项目下的 font-family。可以通过编辑项目查看，默认是 "iconfont"。</p>
        </blockquote>
      </div>
    </div>
    <div class="content font-class">
      <ul class="icon_lists dib-box">
        <c:forEach items="${jsons}" var="json">
          <li class="dib">
            <span class="icon lay-icon lay-icon-${json.font_class}"></span>
            <div class="name">
              ${json.name}
            </div>
            <div class="code-name">.lay-icon-${json.font_class}
            </div>
          </li>
        </c:forEach>
      </ul>
      <div class="article markdown">
        <h2 id="font-class-">font-class 引用</h2>
        <hr>

        <p>font-class 是 Unicode 使用方式的一种变种，主要是解决 Unicode 书写不直观，语意不明确的问题。</p>
        <p>与 Unicode 使用方式相比，具有如下特点：</p>
        <ul>
          <li>兼容性良好，支持 IE8+，及所有现代浏览器。</li>
          <li>相比于 Unicode 语意明确，书写更直观。可以很容易分辨这个 icon 是什么。</li>
          <li>因为使用 class 来定义图标，所以当要替换图标时，只需要修改 class 里面的 Unicode 引用。</li>
          <li>不过因为本质上还是使用的字体，所以多色图标还是不支持的。</li>
        </ul>
        <p>使用步骤如下：</p>
        <h3>第一步：引入项目下面生成的 fontclass 代码：</h3>
        <pre><code class="language-html">&lt;link rel="stylesheet" href="./iconfont.css"&gt;
        </code></pre>
        <h3>第二步：挑选相应图标并获取类名，应用于页面：</h3>
        <pre><code class="language-html">&lt;span class="lay-icon-ext lay-icon-ext-xxx"&gt;&lt;/span&gt;
        </code></pre>
        <blockquote>
          <p>"
            lay-icon-ext" 是你项目下的 font-family。可以通过编辑项目查看，默认是 "iconfont"。</p>
        </blockquote>
      </div>
    </div>
    <div class="content symbol">
      <ul class="icon_lists dib-box">
        <c:forEach items="${jsons}" var="json">
          <li class="dib">
            <svg class="icon svg-icon" aria-hidden="true">
              <use xlink:href="#lay-icon-${json.font_class}"></use>
            </svg>
            <div class="name">${json.name}</div>
            <div class="code-name">#lay-icon-${json.font_class}</div>
          </li>
        </c:forEach>
      </ul>
      <div class="article markdown">
        <h2 id="symbol-">Symbol 引用</h2>
        <hr>

        <p>这是一种全新的使用方式，应该说这才是未来的主流，也是平台目前推荐的用法。相关介绍可以参考这篇<a href="">文章</a>
          这种用法其实是做了一个 SVG 的集合，与另外两种相比具有如下特点：</p>
        <ul>
          <li>支持多色图标了，不再受单色限制。</li>
          <li>通过一些技巧，支持像字体那样，通过 <code>font-size</code>, <code>color</code> 来调整样式。</li>
          <li>兼容性较差，支持 IE9+，及现代浏览器。</li>
          <li>浏览器渲染 SVG 的性能一般，还不如 png。</li>
        </ul>
        <p>使用步骤如下：</p>
        <h3 id="-symbol-">第一步：引入项目下面生成的 symbol 代码：</h3>
        <pre><code class="language-html">&lt;script src="./iconfont.js"&gt;&lt;/script&gt;
        </code></pre>
        <h3>第二步：加入通用 CSS 代码（引入一次就行）：</h3>
        <pre><code class="language-html">&lt;style&gt;
          .icon {
            width: 1em;
            height: 1em;
            vertical-align: -0.15em;
            fill: currentColor;
            overflow: hidden;
          }
          &lt;/style&gt;
        </code></pre>
        <h3>第三步：挑选相应图标并获取类名，应用于页面：</h3>
        <pre><code class="language-html">&lt;svg class="icon" aria-hidden="true"&gt;
          &lt;use xlink:href="#icon-xxx"&gt;&lt;/use&gt;
          &lt;/svg&gt;
        </code></pre>
      </div>
    </div>
  </div>
</div>

<!-- 代码高亮 -->
<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/font-ext/prismjs-1.15.0.js"></script>
<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/font-ext/iconfont.js"></script>
<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>
<script>
  layui.use(['jquery'], function(){ //加载code模块

    var $=layui.$;
    $('.tab-container .content:first').show();

    $('#tabs li').click(function (e) {
      var tabContent = $('.tab-container .content');
      var index = $(this).index();

      if ($(this).hasClass('active')) {

      } else {
        $('#tabs li').removeClass('active');
        $(this).addClass('active');

        tabContent.hide().eq(index).fadeIn()
      }
    })
  });
</script>
</body>
</html>