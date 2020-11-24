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
<html>
<body>

<!-- 主题设置模板 -->

<script type="text/html" template lay-done="layui.data.theme();">
  {{#
    var local = layui.data(layui.setter.tableName)
    ,theme = local.theme || {}
    ,themeColorIndex =  parseInt((theme && theme.color) ? theme.color.index : 0) || 0;
  }}

  <div class="layui-card-header">
    配色方案
  </div>
  <div class="layui-card-body layadmin-setTheme">
    <ul class="layadmin-setTheme-color">
      {{# layui.each(layui.setter.theme.color, function(index, item){ }}
        <li layadmin-event="setTheme" data-index="{{ index }}" data-alias="{{ item.alias }}"
        {{ index === themeColorIndex ? 'class="layui-this"' : '' }} title="{{ item.alias }}">
          <div class="layadmin-setTheme-header"></div>
          <div class="layadmin-setTheme-side" style="background-color: {{ item.main }};">
            <div class="layadmin-setTheme-logo" style="background-color: {{ item.logo }};"></div>
          </div>
        </li>
      {{# }); }}
    </ul>
  </div>
</script>

<script src="${pageContext.request.contextPath}/res/js/layui-2.5.6/layui.js"></script>
<script>
layui.data.theme = function(){
  layui.use('form', function(){
    var form = layui.form
    ,admin = layui.admin;

    //监听隐藏开关
    form.on('switch(system-theme-sideicon)', function(){
      admin.theme({
        hideSideIcon: this.checked
      })
    });
  });
};
</script>
</body>
</html>
