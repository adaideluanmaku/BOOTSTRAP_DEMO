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
	
	<script src="${pageContext.request.contextPath}/js_ch/grouptags.js"></script>
	
</head>
<body>
<input type="hidden" id="address" value="${pageContext.request.contextPath}">

<div class="container-fluid"  id="grouptags">
	
	<div class="row">
		<div class="col-md-2" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, 
         inset -1px 1px 1px #444;">
         	
         	<!-- 左侧目录树，可分组折叠 -->
			<div class="panel-group table-responsive " role="tablist">
			
				<!--分组1开始-->
            	<div class="panel panel-primary leftMenu">
	                <!-- 利用data-target指定要折叠的分组列表 -->
	                <div class="panel-heading" id="group1" data-toggle="collapse" data-target="#group1_z1" role="tab" >
                    	<h4 class="panel-title">分组1<span class="glyphicon glyphicon-chevron-up right"></span></h4>
                     </div>
                     <!-- .panel-collapse和.collapse标明折叠元素 .in表示要显示出来 -->
                     <div id="group1_z1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="group1">
	                     <ul class="list-group">
	                       <li class="list-group-item">
	                         <!-- 利用data-target指定URL -->
	                         <button class="menu-item-left" data-target="test2.html">
	                             <span class="glyphicon glyphicon-triangle-right"></span>分组项1-1
	                         </button>
	                       </li>
	                       <li class="list-group-item">
	                         <button class="menu-item-left">
	                             <span class="glyphicon glyphicon-triangle-right"></span>分组项1-2
	                         </button>
	                       </li>
	                     </ul>
                     </div>
				</div>
				 <!--分组1结束panel end-->
				 
				 <!--分组2开始-->
            	<div class="panel panel-primary leftMenu">
	                <!-- 利用data-target指定要折叠的分组列表 -->
	                <div class="panel-heading" id="group2" data-toggle="collapse" data-target="#group2_z1" role="tab" >
                    	<h4 class="panel-title">分组2<span class="glyphicon glyphicon-chevron-up right"></span></h4>
                     </div>
                     <!-- .panel-collapse和.collapse标明折叠元素 .in表示要显示出来 -->
                     <div id="group2_z1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="group2">
	                     <ul class="list-group">
	                       <li class="list-group-item">
	                         <!-- 利用data-target指定URL -->
	                         <button class="menu-item-left" data-target="test2.html">
	                             <span class="glyphicon glyphicon-triangle-right"></span>分组项2-1
	                         </button>
	                       </li>
	                       <li class="list-group-item">
	                         <button class="menu-item-left">
	                             <span class="glyphicon glyphicon-triangle-right"></span>分组项2-2
	                         </button>
	                       </li>
	                     </ul>
                     </div>
				</div>
				<!--分组2结束panel end-->
          	</div>
          	<!-- 左侧目录树，可分组折叠结束 -->
          	
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
		</div>
		
	</div>
</div>
	 
</body>
</html>