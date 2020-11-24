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
	<title>jQuery async treeview</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/treeview/treeview.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/treeview/screen.css" />

	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-3.4.1/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-cookie-v1.4.1/jquery.cookie.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/treeview/treeview.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/treeview/treeview.edit.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/treeview/treeview.async.js"></script>
	
	<script type="text/javascript">
	function initTrees() {
		$("#black").treeview({
			url: "source.php"
		})
		
		$("#mixed").treeview({
			url: "source.php",
			// add some additional, dynamic data and request with POST
			ajax: {
				data: {
					"additional": function() {
						return "yeah: " + new Date;
					}
				},
				type: "post"
			}
		});
	}
	$(document).ready(function(){
		initTrees();
		$("#refresh").click(function() {
			$("#black").empty();
			$("#mixed").empty();
			initTrees();
		});
	});
	</script>
	
	</head>
	<body>
	
	<h1 id="banner"><a href="http://bassistance.de/jquery-plugins/jquery-plugin-treeview/">jQuery TreeView Plugin</a> Demo</h1>
	<div id="main">
	
	<ul>
		<li><a href=".">Main Demo</a></li>
		<li><a href="source.phps">Server component used</a></li>
	</ul>
		
	<h4>Lazy-loading tree</h4>
	
	<ul id="black">
	</ul>
	
	<h4>Mixed pre and lazy-loading</h4>
	
	<ul id="mixed">
		<li><span>Item 1</span>
			<ul>
				<li><span>Item 1.0</span>
					<ul>
						<li><span>Item 1.0.0</span></li>
					</ul>
				</li>
				<li><span>Item 1.1</span></li>
			</ul>
		</li>
		<li id="36" class="hasChildren">
			<span>Item 2</span>
			<ul>
				<li><span class="placeholder">&nbsp;</span></li>
			</ul>
		</li>
		<li>
			<span>Item 3</span>
		</li>
	</ul>
	
	<button id="refresh">Refresh both Trees</button>
		
</div>
 
</body></html>