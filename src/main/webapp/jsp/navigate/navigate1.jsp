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
<%@ page import="com.dateutil.Navigate"%>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/navigate.css">
	</head>
	<body>
		<%
			// simple example
			Navigate nav = new Navigate();
			String pp = (String) request.getParameter("pp");
			if (pp == null)
				pp = "1";
			int currentPageT = Integer.parseInt(pp);
			int pageSizeT = 6;
			int totalRecordT = 2947;
			nav.setURLPage("toNavigate1");// 必要
			nav.setToolBarFormName("myformtest");// 不必要
			nav.setCurrentPageName("pp");// 不必要
			nav.addHiddenField("pageSize", "10");// 添加隐藏字段,默认只保存当前页字段
			nav.setParam(totalRecordT, currentPageT, pageSizeT);// 设置参数
			// nav.setParam(rs,currentPage,pageSize);// 如果是结果集则用这个
			out.print(nav.getToolBar("toNavigate1"));// 如果执行nav.setURLPage(pageURL);则不必要
			out.print(nav.getToolBar(true, true, true, true));
		%>
	</body>
</html>
