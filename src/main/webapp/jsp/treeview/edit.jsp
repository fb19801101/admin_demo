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
	<title>jQuery TreeView</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/treeview/treeview.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/treeview/screen.css" />

	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-3.4.1/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-cookie-v1.4.1/jquery.cookie.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/treeview/treeview.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/treeview/treeview.edit.js"></script>
	
	<script type="text/javascript">
		$(function() {
			$("#browser").treeview();
			$("#add").click(function() {
				var branches = $("<li><span class='folder'>New Sublist</span><ul>" + 
					"<li><span class='file'>Item1</span></li>" + 
					"<li><span class='file'>Item2</span></li></ul></li>").appendTo("#browser");
				$("#browser").treeview({
					add: branches
				});
				branches = $("<li class='closed'><span class='folder'>New Sublist</span><ul><li><span class='file'>Item1</span></li><li><span class='file'>Item2</span></li></ul></li>").prependTo("#folder21");
				$("#browser").treeview({
					add: branches
				});
			});
			$("#browser").bind("contextmenu", function(event) {
				if ($(event.target).is("li") || $(event.target).parents("li").length) {
					$("#browser").treeview({
						remove: $(event.target).parents("li").filter(":first")
					});
					return false;
				}
			});
		})
		
	</script>
	
	</head>
	<body>
	
	<h1 id="banner"><a href="http://bassistance.de/jquery-plugins/jquery-plugin-treeview/">jQuery TreeView Plugin</a> Demo</h1>
	<div id="main">
	
	<a href=".">Main Demo</a>

	<h4>Sample 1 - default, right-click to remove items</h4>
	
	<button id="add">Add!</button>
	
	<ul id="browser" class="filetree">
		<li><span class="folder">Folder 1</span>
			<ul>
				<li><span class="file">Item 1.1</span></li>
			</ul>
		</li>
		<li><span class="folder">Folder 2</span>
			<ul>
				<li><span class="folder">Subfolder 2.1</span>
					<ul id="folder21">
						<li><span class="file">File 2.1.1</span></li>
						<li><span class="file">File 2.1.2</span></li>
					</ul>
				</li>
				<li><span class="file">File 2.2</span></li>
			</ul>
		</li>
		<li class="closed"><span class="folder">Folder 3 (closed at start)</span>
			<ul>
				<li><span class="file">File 3.1</span></li>
			</ul>
		</li>
		<li><span class="file">File 4</span></li>
	</ul>
	
	</div>
 
</body></html>