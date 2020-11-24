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
			nav.setURLPage("toNavigate3");// 必要
			nav.setToolBarFormName("myformtest");// 不必要
			nav.setCurrentPageName("pp");// 不必要
			nav.addHiddenField("pageSize", "10");// 添加隐藏字段,默认只保存当前页字段
			nav.setParam(totalRecordT, currentPageT, pageSizeT);// 设置参数
			// nav.setParam(rs,currentPage,pageSize);// 如果是结果集则用这个
			out.print(nav.getToolBar("toNavigate3"));// 如果执行nav.setURLPage(pageURL);则不必要
			out.print(nav.getToolBar(true, true, true, true));
			out.print(nav.getToolBar(true, true, true, true, true, true, true, true));
			nav.setBtnFirstText("第一页");// 不必要
			nav.setBtnPrevText("上一页");// 不必要
			nav.setLineNumber(10);// 不必要
			nav.setBtnLineFrontText("前10页");// 不必要
			nav.setBtnLineBackText("后10页");// 不必要
			nav.setBtnNextText("下一页");// 不必要
			nav.setBtnLastTextString("最后页");// 不必要
			nav.setBtnGOText("跳页");// 不必要
			nav.setJumpTextSize(3);// 不必
			out.print(nav.getToolBar(true, true, true, true, true, true, true, true));
			out.print(nav.getToolBarAll());
			
			out.print(nav.getCountLable());// 返回"共n条记录"
			out.print(nav.getInformationLable());// 返回"第a/b页"
			out.print(nav.getFirstHyperlink());// 返回"首页"
			out.print(nav.getPreviousHyperlink());// 返回"上页"
			out.print(nav.getNextHyperlink());// 返回"下页"
			out.print(nav.getLastHyperlink());// 返回"尾页"
			out.print(nav.getLineHyperlink());// ... 1 2 3 4 5 ...
			out.print(nav.getButtonGO());// 跳到第[]页 GO
			out.print("");
		%>
	</body>
</html>
