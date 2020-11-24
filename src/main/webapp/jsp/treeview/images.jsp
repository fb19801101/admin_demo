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

	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1"/>
	<title>jQuery treeview</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/treeview/treeview.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/treeview/css/screen.css" />

	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-3.4.1/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-cookie-v1.4.1/jquery.cookie.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/treeview/treeview.js"></script>
	
	<script type="text/javascript">
		$(function() {
			$("#browser").treeview();
		});
	</script>
	
	</head>
	<body>
	
	<h1 id="banner"><a href="http://bassistance.de/jquery-plugins/jquery-plugin-treeview/">jQuery TreeView Plugin</a> Demo</h1>
	<div id="main">

	<h4>Sample 1 - default</h4>
	<ul id="browser" class="filetree">
		<li><img src="${pageContext.request.contextPath}/res/img/treeview/folder.gif" /> 123</span>
			<ul>
				<li>blabla <img src="${pageContext.request.contextPath}/res/img/treeview/file.gif" /></li>
			</ul>
		</li>
		<li><img src="${pageContext.request.contextPath}/res/img/treeview/folder.gif" />
			<ul>
				<li><img src="${pageContext.request.contextPath}/res/img/treeview/folder.gif" />
					<ul id="folder21">
						<li><img src="${pageContext.request.contextPath}/res/img/file.gif" /> more text</li>
						<li>and here, too<img src="${pageContext.request.contextPath}/res/img/file.gif" /></li>
					</ul>
				</li>
				<li><img src="${pageContext.request.contextPath}/res/img/file.gif" /></li>
			</ul>
		</li>
		<li class="closed">this is closed! <img src="${pageContext.request.contextPath}/res/img/folder.gif" />
			<ul>
				<li><img src="${pageContext.request.contextPath}/res/img/file.gif" /></li>
			</ul>
		</li>
		<li><img src="${pageContext.request.contextPath}/res/img/file.gif" /></li>
	</ul>
		
</div>
 
</body></html>