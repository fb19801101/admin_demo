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
  <title>按钮</title>
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
          <div class="layui-card-header">按钮主题</div>
          <div class="layui-card-body">
            <div class="layui-btn-container">
              <button class="layui-btn layui-btn-primary">原始按钮</button>
              <button class="layui-btn">默认按钮</button>
              <button class="layui-btn layui-btn-normal">百搭按钮</button>
              <button class="layui-btn layui-btn-warm">暖色按钮</button>
              <button class="layui-btn layui-btn-danger">警告按钮</button>
              <button class="layui-btn layui-btn-disabled">禁用按钮</button>
            </div>
          </div>
        </div>
        <div class="layui-card">
          <div class="layui-card-header">按钮尺寸</div>
          <div class="layui-card-body">
            <div class="layui-btn-container">
              <button class="layui-btn layui-btn-primary layui-btn-lg">大型按钮</button>
              <button class="layui-btn layui-btn-primary">默认按钮</button>
              <button class="layui-btn layui-btn-primary layui-btn-sm">小型按钮</button>
              <button class="layui-btn layui-btn-primary layui-btn-xs">迷你按钮</button>
              
              <br>
              
              <button class="layui-btn layui-btn-lg">大型按钮</button>
              <button class="layui-btn">默认按钮</button>
              <button class="layui-btn layui-btn-sm">小型按钮</button>
              <button class="layui-btn layui-btn-xs">迷你按钮</button>
              
              <br>
              
              <button class="layui-btn layui-btn-lg layui-btn-normal">大型按钮</button>
              <button class="layui-btn layui-btn-normal">默认按钮</button>
              <button class="layui-btn layui-btn-sm layui-btn-normal">小型按钮</button>
              <button class="layui-btn layui-btn-xs layui-btn-normal">迷你按钮</button>
            </div>
          </div>
        </div>
        <div class="layui-card">
          <div class="layui-card-header">按钮图标</div>
          <div class="layui-card-body">
            <div class="layui-btn-container">
              <button class="layui-btn"><i class="layui-icon">&#xe600;</i></button>
              <button class="layui-btn"><i class="layui-icon">&#xe603;</i></button>
              <button class="layui-btn"><i class="layui-icon">&#xe602;</i></button>
              <button class="layui-btn"><i class="layui-icon">&#xe642;</i></button>
              <button class="layui-btn"><i class="layui-icon">&#xe640;</i></button>
              <button class="layui-btn"><i class="layui-icon">&#xe641;</i></button>
              
              <br>
              
              <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe600;</i></button>
              <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe603;</i></button>
              <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe602;</i></button>
              <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe642;</i></button>
              <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe640;</i></button>
              <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe641;</i></button>
              
              <br>
              
              <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#xe600;</i></button>
              <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#xe603;</i></button>
              <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#xe602;</i></button>
              <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#xe642;</i></button>
              <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#xe640;</i></button>
              <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#xe641;</i></button>
              
              <br>
              
              <button class="layui-btn layui-btn-sm"><i class="layui-icon">&#xe600;</i></button>
              <button class="layui-btn layui-btn-sm"><i class="layui-icon">&#xe603;</i></button>
              <button class="layui-btn layui-btn-sm"><i class="layui-icon">&#xe602;</i></button>
              <button class="layui-btn layui-btn-sm"><i class="layui-icon">&#xe642;</i></button>
              <button class="layui-btn layui-btn-sm"><i class="layui-icon">&#xe640;</i></button>
              <button class="layui-btn layui-btn-sm"><i class="layui-icon">&#xe641;</i></button>
              
              <br>
                
              <button class="layui-btn layui-btn-normal layui-btn-sm"><i class="layui-icon">&#xe600;</i></button>
              <button class="layui-btn layui-btn-normal layui-btn-sm"><i class="layui-icon">&#xe603;</i></button>
              <button class="layui-btn layui-btn-normal layui-btn-sm"><i class="layui-icon">&#xe602;</i></button>
              <button class="layui-btn layui-btn-normal layui-btn-sm"><i class="layui-icon">&#xe642;</i></button>
              <button class="layui-btn layui-btn-normal layui-btn-sm"><i class="layui-icon">&#xe640;</i></button>
              <button class="layui-btn layui-btn-normal layui-btn-sm"><i class="layui-icon">&#xe641;</i></button>
            </div>
          </div>
        </div>
      </div>
      <div class="layui-col-md6">
        <div class="layui-card">
          <div class="layui-card-header">按钮圆角</div>
          <div class="layui-card-body">
            <div class="layui-btn-container">
              <button class="layui-btn layui-btn-primary layui-btn-radius">原始按钮</button>
              <button class="layui-btn layui-btn-radius">默认按钮</button>
              <button class="layui-btn layui-btn-normal layui-btn-radius">百搭按钮</button>
              <button class="layui-btn layui-btn-warm layui-btn-radius">暖色按钮</button>
              <button class="layui-btn layui-btn-danger layui-btn-radius">警告按钮</button>
              <button class="layui-btn layui-btn-disabled layui-btn-radius">禁用按钮</button>
            </div>
          </div>
        </div>
        <div class="layui-card">
          <div class="layui-card-header">按钮混搭</div>
          <div class="layui-card-body">
            <div class="layui-btn-container">
              <button class="layui-btn layui-btn-lg layui-btn-primary layui-btn-radius">大型加圆角</button>
              <a href="http://www.layui.com/doc/element/button.html" class="layui-btn" target="_blank">跳转的按钮</a>
              <button class="layui-btn layui-btn-sm layui-btn-normal"><i class="layui-icon">&#xe640;</i> 删除</button>
              <button class="layui-btn layui-btn-xs layui-btn-disabled"><i class="layui-icon">&#xe641;</i> 分享</button>

            </div>
          </div>
        </div>
        <div class="layui-card">
          <div class="layui-card-header">按钮组合</div>
          <div class="layui-card-body">
            <div class="layui-btn-container">
              <div class="layui-btn-group">
                <button class="layui-btn">增加</button>
                <button class="layui-btn ">编辑</button>
                <button class="layui-btn">删除</button>
              </div>
            </div>
            <div class="layui-btn-container">
              <div class="layui-btn-group">
                <button class="layui-btn layui-btn-sm"><i class="layui-icon">&#xe654;</i></button>
                <button class="layui-btn layui-btn-sm"><i class="layui-icon">&#xe642;</i></button>
                <button class="layui-btn layui-btn-sm"><i class="layui-icon">&#xe640;</i></button>
                <button class="layui-btn layui-btn-sm"><i class="layui-icon">&#xe602;</i></button>
              </div>
              <div class="layui-btn-group">
                <button class="layui-btn layui-btn-primary layui-btn-sm">文字</button>
                <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#xe654;</i></button>
                <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#xe642;</i></button>
                <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#xe640;</i></button>
              </div>
            </div>
          </div>
        </div>
        <div class="layui-card">
          <div class="layui-card-header">按钮铺满</div>
          <div class="layui-card-body">
            <div class="layui-btn-container">
              <button class="layui-btn layui-btn-fluid">好雨知时节</button>
              <button class="layui-btn layui-btn-fluid">当春乃发生</button>
              <button class="layui-btn layui-btn-fluid">随风潜入夜</button>
              <button class="layui-btn layui-btn-fluid">润物细无声</button>
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
  }).use(['index']);
  </script>
</body>
</html>