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
	<title>jQuery TreeView</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/treeview/treeview.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/treeview/screen.css" />

	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-3.4.1/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-cookie-v1.4.1/jquery.cookie.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/treeview/treeview.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/treeview/demo.js"></script>
	
	</head>
	<body>
	
	<h1 id="banner"><a href="http://bassistance.de/jquery-plugins/jquery-plugin-treeview/">jQuery Treeview Plugin</a> Demo</h1>
	<div id="main">
	
	<a href="demo.js">Pagecode</a>
	
	<h3>Other demos</h3>
	<ul>
		<li><a href="large.html">Large Tree Demo</a></li>
		<li><a href="prerendered.html">Prerendered Large Tree Demo</a></li>
		<li><a href="async.html">Async Tree Demo</a></li>
		<li><a href="edit.html">Editable Tree Demo</a></li>
		<li><a href="simple.html">Simple Tree Demo, famfamfam theme (no lines)</a></li>
	</ul>
	
	<h4>Sample 1 - default</h4>
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
		
	<h4>Sample 2 - Navigation</h4>
	
	<ul id="navigation">
		<li><a href="?1">Item 1</a>
			<ul>
				<li><a href="?1.0">Item 1.0</a>
					<ul>
						<li><a href="?1.0.0">Item 1.0.0</a></li>
					</ul>
				</li>
				<li><a href="?1.1">Item 1.1</a></li>
				<li><a href="?1.2">Item 1.2</a>
					<ul>
						<li><a href="?1.2.0">Item 1.2.0</a>
						<ul>
							<li><a href="?1.2.0.0">Item 1.2.0.0</a></li>
							<li><a href="?1.2.0.1">Item 1.2.0.1</a></li>
							<li><a href="?1.2.0.2">Item 1.2.0.2</a></li>
						</ul>
					</li>
						<li><a href="?1.2.1">Item 1.2.1</a>
						<ul>
							<li><a href="?1.2.1.0">Item 1.2.1.0</a></li>
						</ul>
					</li>
						<li><a href="?1.2.2">Item 1.2.2</a>
						<ul>
							<li><a href="?1.2.2.0">Item 1.2.2.0</a></li>
							<li><a href="?1.2.2.1">Item 1.2.2.1</a></li>
							<li><a href="?1.2.2.2">Item 1.2.2.2</a></li>
						</ul>
					</li>
					</ul>
				</li>
			</ul>
		</li>
		<li><a href="?2">Item 2</a>
			<ul>
				<li><span>Item 2.0</span>
					<ul>
						<li><a href="?2.0.0">Item 2.0.0</a>
						<ul>
							<li><a href="?2.0.0.0">Item 2.0.0.0</a></li>
							<li><a href="?2.0.0.1">Item 2.0.0.1</a></li>
						</ul>
					</li>
					</ul>
				</li>
				<li><a href="?2.1">Item 2.1</a>
					<ul>
						<li><a href="?2.1.0">Item 2.1.0</a>
						<ul>
							<li><a href="?2.1.0.0">Item 2.1.0.0</a></li>
						</ul>
					</li>
						<li><a href="?2.1.1">Item 2.1.1</a>
						<ul>
							<li><a href="?2.1.1.0abc">Item 2.1.1.0</a></li>
							<li><a href="?2.1.1.1">Item 2.1.1.1</a></li>
							<li><a href="?2.1.1.2">Item 2.1.1.2</a></li>
						</ul>
					</li>
						<li><a href="?2.1.2">Item 2.1.2</a>
						<ul>
							<li><a href="?2.1.2.0">Item 2.1.2.0</a></li>
							<li><a href="?2.1.2.1">Item 2.1.2.1</a></li>
							<li><a href="?2.1.2.2">Item 2.1.2.2</a></li>
						</ul>
					</li>
					</ul>
				</li>
			</ul>
		</li>
		<li><a href="?3">Item 3</a>
			<ul>
				<li class="open"><a href="?3.0">Item 3.0</a>
					<ul>
						<li><a href="?3.0.0">Item 3.0.0</a></li>
						<li><a href="?3.0.1">Item 3.0.1</a>
							<ul>
								<li><a href="?3.0.1.0">Item 3.0.1.0</a></li>
								<li><a href="?3.0.1.1">Item 3.0.1.1</a></li>
							</ul>
						</li>
						<li><a href="?3.0.2">Item 3.0.2</a>
							<ul>
								<li><a href="?3.0.2.0">Item 3.0.2.0</a></li>
								<li><a href="?3.0.2.1">Item 3.0.2.1</a></li>
								<li><a href="?3.0.2.2">Item 3.0.2.2</a></li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>
	
	<h4>Sample 3 - fast animations, all branches collapsed at first, red theme, cookie-based persistance</h4>
	<ul id="red" class="treeview-red">
	<li><span>Item 1</span>
		<ul>
			<li><span>Item 1.0</span>
				<ul>
					<li><span>Item 1.0.0</span></li>
				</ul>
			</li>
			<li><span>Item 1.1</span></li>
			<li><span>Item 1.2</span>
				<ul>
					<li><span>Item 1.2.0</span>
					<ul>
						<li><span>Item 1.2.0.0</span></li>
						<li><span>Item 1.2.0.1</span></li>
						<li><span>Item 1.2.0.2</span></li>
					</ul>
				</li>
					<li><span>Item 1.2.1</span>
					<ul>
						<li><span>Item 1.2.1.0</span></li>
					</ul>
				</li>
					<li><span>Item 1.2.2</span>
					<ul>
						<li><span>Item 1.2.2.0</span></li>
						<li><span>Item 1.2.2.1</span></li>
						<li><span>Item 1.2.2.2</span></li>
					</ul>
				</li>
				</ul>
			</li>
		</ul>
	</li>
	<li><span>Item 2</span>
		<ul>
			<li><span>Item 2.0</span>
				<ul>
					<li><span>Item 2.0.0</span>
					<ul>
						<li><span>Item 2.0.0.0</span></li>
						<li><span>Item 2.0.0.1</span></li>
					</ul>
				</li>
				</ul>
			</li>
			<li><span>Item 2.1</span>
				<ul>
					<li><span>Item 2.1.0</span>
					<ul>
						<li><span>Item 2.1.0.0</span></li>
					</ul>
				</li>
					<li><span>Item 2.1.1</span>
					<ul>
						<li><span>Item 2.1.1.0</span></li>
						<li><span>Item 2.1.1.1</span></li>
						<li><span>Item 2.1.1.2</span></li>
					</ul>
				</li>
					<li><span>Item 2.1.2</span>
					<ul>
						<li><span>Item 2.1.2.0</span></li>
						<li><span>Item 2.1.2.1</span></li>
						<li><span>Item 2.1.2.2</span></li>
					</ul>
				</li>
				</ul>
			</li>
		</ul>
	</li>
	<li class="open"><span>Item 3</span>
		<ul>
			<li class="open"><span>Item 3.0</span>
				<ul>
					<li><span>Item 3.0.0</span></li>
					<li><span>Item 3.0.1</span>
					<ul>
						<li><span>Item 3.0.1.0</span></li>
						<li><span>Item 3.0.1.1</span></li>
					</ul>
					
				</li>
					<li><span>Item 3.0.2</span>
					<ul>
						<li><span>Item 3.0.2.0</span></li>
						<li><span>Item 3.0.2.1</span></li>
						<li><span>Item 3.0.2.2</span></li>
					</ul>
				</li>
				</ul>
			</li>
		</ul>
	</li>
	</ul>
	
	<h4>Sample 4 - two trees with one tree control, black and gray theme, cookie-based persistance</h4>
	<div id="treecontrol">
		<a title="Collapse the entire tree below" href="#"><img src="../img/minus.gif" /> Collapse All</a>
		<a title="Expand the entire tree below" href="#"><img src="../img/plus.gif" /> Expand All</a>
		<a title="Toggle the tree below, opening closed branches, closing open branches" href="#">Toggle All</a>
	</div>
	<ul id="black" class="treeview-black">
		<li>Item 1</li>
		<li>
			<span>Item 2</span>
			<ul>
				<li>
					<span>Item 2.1</span>
					<ul>
						<li>Item 2.1.1</li>
						<li>Item 2.1.2</li>
					</ul>
				</li>
				<li>Item 2.2</li>
				<li class="closed">
					<span>Item 2.3 (closed at start)</span>
					<ul>
						<li>Item 2.3.1</li>
						<li>Item 2.3.2</li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>
	<ul id="gray" class="treeview-gray">
		<li>Item 1</li>
		<li>
			<span>Item 2</span>
			<ul>
				<li class="closed">
					<span>Item 2.1 (closed at start)</span>
					<ul>
						<li>Item 2.1.1</li>
						<li>Item 2.1.2</li>
					</ul>
				</li>
				<li>Item 2.2.1</li>
				<li>Item 2.2.2</li>
				<li>Item 2.2.3</li>
				<li>Item 2.2.4</li>
				<li>Item 2.2.5</li>
				<li>Item 2.2.6</li>
				<li>Item 2.2.7</li>
				<li>Item 2.2.8</li>
				<li>
					<span>Item 2.3</span>
					<ul>
						<li>Item 2.3.1</li>
						<li>Item 2.3.2</li>
						<li>Item 2.3.3</li>
						<li>Item 2.3.4</li>
						<li>Item 2.3.5</li>
						<li>Item 2.3.6</li>
						<li>Item 2.3.7</li>
						<li>Item 2.3.8</li>
						<li>Item 2.3.9</li>
					</ul>
				</li>
				<li>
					<span>Item 2.4</span>
					<ul>
						<li>Item 2.4.1</li>
						<li>Item 2.4.2</li>
						<li>Item 2.4.3</li>
						<li>Item 2.4.4</li>
						<li>Item 2.4.5</li>
						<li>Item 2.4.6</li>
						<li>Item 2.4.7</li>
						<li>Item 2.4.8</li>
						<li>Item 2.4.9</li>
					</ul>
				</li>
			</ul>
		</li>
		<li>Item 3</li>
	</ul>	
	
</div>
 
</body></html>