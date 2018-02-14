<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
	<title>Bootstrap 模板</title>
	<!-- 移动设备优先 -->
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<!-- 引入 Bootstrap -->
	<link href="${pageContext.request.contextPath}/bootstrap_resources/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap_resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">切换导航</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a rel="nofollow" class="navbar-brand" href="#">导航</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a rel="nofollow" href="#">链接</a>
						</li>
						<li>
							<a rel="nofollow" href="#">链接</a>
						</li>
						<li class="dropdown">
							 <a rel="nofollow" href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a rel="nofollow" href="#">列表一</a>
								</li>
								<li>
									<a rel="nofollow" href="#">列表二</a>
								</li>
								<li>
									<a rel="nofollow" href="#">列表三</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a rel="nofollow" href="#">更多列表</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a rel="nofollow" href="#">更多列表</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">搜索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a rel="nofollow" href="#">链接</a>
						</li>
						<li class="dropdown">
							 <a rel="nofollow" href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a rel="nofollow" href="#">列表一</a>
								</li>
								<li>
									<a rel="nofollow" href="#">列表二</a>
								</li>
								<li>
									<a rel="nofollow" href="#">列表三</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a rel="nofollow" href="#">更多列表</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a rel="nofollow" href="#">更多列表</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				
			</nav>
			<div class="row clearfix">
				<div class="col-md-2 column">
					<div class="panel-group" id="panel-757712">
						<div class="panel panel-default">
							<div class="panel-heading">
								 <a rel="nofollow" class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-757712" href="#panel-element-336417">折叠一</a>
							</div>
							<div id="panel-element-336417" class="panel-collapse collapse">
								<div class="panel-body">
									折叠一的内容...
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								 <a rel="nofollow" class="panel-title" data-toggle="collapse" data-parent="#panel-757712" href="#panel-element-702637">折叠二</a>
							</div>
							<div id="panel-element-702637" class="panel-collapse in">
								<div class="panel-body">
									折叠二的内容...
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-10 column">
					<table class="table">
						<thead>
							<tr>
								<th>
									编号
								</th>
								<th>
									产品
								</th>
								<th>
									上线时间
								</th>
								<th>
									状态
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									1
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									01/04/2012
								</td>
								<td>
									Default
								</td>
							</tr>
							<tr class="active">
								<td>
									1
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									01/04/2012
								</td>
								<td>
									Approved
								</td>
							</tr>
							<tr class="success">
								<td>
									2
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									02/04/2012
								</td>
								<td>
									Declined
								</td>
							</tr>
							<tr class="warning">
								<td>
									3
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									03/04/2012
								</td>
								<td>
									Pending
								</td>
							</tr>
							<tr class="danger">
								<td>
									4
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									04/04/2012
								</td>
								<td>
									Call in to confirm
								</td>
							</tr>
						</tbody>
					</table>
					<ul class="pagination">
						<li>
							<a rel="nofollow" href="#">上一页</a>
						</li>
						<li>
							<a rel="nofollow" href="#">1</a>
						</li>
						<li>
							<a rel="nofollow" href="#">2</a>
						</li>
						<li>
							<a rel="nofollow" href="#">3</a>
						</li>
						<li>
							<a rel="nofollow" href="#">4</a>
						</li>
						<li>
							<a rel="nofollow" href="#">5</a>
						</li>
						<li>
							<a rel="nofollow" href="#">下一页</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
