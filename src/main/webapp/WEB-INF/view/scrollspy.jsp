<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
	<title>Bootstrap 模板</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入 Bootstrap -->
	<link href="${pageContext.request.contextPath}/bootstrap_resources/bootstrap-3.3.7-dist/css/bootstrap_CH.css" rel="stylesheet">
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap_resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/bootstrap_resources/bootstrap-table/bootstrap-table.js"></script>
	<link href="${pageContext.request.contextPath}/bootstrap_resources/bootstrap-table/bootstrap-table.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/bootstrap_resources/bootstrap-table/bootstrap-table-zh-CN.js"></script>
	
	<script src="${pageContext.request.contextPath}/js_ch/scrollspy.js"></script>
	
</head>
<body>
<input type="hidden" id="address" value="${pageContext.request.contextPath}">

<div class="container-fluid"  id="scrollspy">
	
	<div class="row">
		<div class="col-md-2" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, 
         inset -1px 1px 1px #444;">
         	
         	<ul id="left" class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="125">
			  <li role="presentation" class="active"><a href="#">Home</a></li>
			  <li role="presentation"><a href="#">Profile</a></li>
			  <li role="presentation"><a href="#">Messages</a></li>
			</ul>
          	
        </div>
		
		<div class="col-md-10" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, 
         inset -1px 1px 1px #444;">
         	<!-- 行内容 -->
			<div class="row">
			<h1 >第一行</h1>
				<div class="col-md-4" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, 
		         inset -1px 1px 1px #444;">
					 <p>Consectetur art party Tonx culpa semiotics. Pinterest 
		                  assumenda minim organic quis.
		             </p>
				</div>
				<div class="col-md-8" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, 
		         inset -1px 1px 1px #444;">
					 <p>Consectetur art party Tonx culpa semiotics. Pinterest 
		                  assumenda minim organic quis.
		             </p>
				</div>
			</div>
			
			<div class="row">
			<h1>第二行</h1>
				<div class="col-md-4" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, 
		         inset -1px 1px 1px #444;height:300px">
					 <p>Consectetur art party Tonx culpa semiotics. Pinterest 
		                  assumenda minim organic quis.
		             </p>
				</div>
			</div>
			
			<div class="row">
			<h1>第三行</h1>
				<div class="col-md-4" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, 
		         inset -1px 1px 1px #444;height:300px">
					 <p>Consectetur art party Tonx culpa semiotics. Pinterest 
		                  assumenda minim organic quis.
		             </p>
				</div>
			</div>
			
			<div class="row">
			<h1>第四行</h1>
				<div class="col-md-4" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, 
		         inset -1px 1px 1px #444;height:300px">
					 <p>Consectetur art party Tonx culpa semiotics. Pinterest 
		                  assumenda minim organic quis.
		             </p>
				</div>
			</div>
		</div>
		
	</div>
</div>
	 
</body>
</html>