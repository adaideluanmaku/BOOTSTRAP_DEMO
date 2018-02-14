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
	
	<link href="${pageContext.request.contextPath}/bootstrap_resources/bootstrap-dialog/bootstrap-dialog.min.css" rel="stylesheet" >
	<script src="${pageContext.request.contextPath}/bootstrap_resources/bootstrap-dialog/bootstrap-dialog.min.js"></script>

	<link href="${pageContext.request.contextPath}/bootstrap_resources/bootstrap-table-fixed-columns/bootstrap-table-fixed-columns.css" rel="stylesheet" >
	<script src="${pageContext.request.contextPath}/bootstrap_resources/bootstrap-table-fixed-columns/bootstrap-table-fixed-columns.js"></script>
	
	<script src="${pageContext.request.contextPath}/js_ch/myweb.js"></script>
	<script src="${pageContext.request.contextPath}/js_ch/ch_bootstrap_table.js"></script>
	
</head>
<body>
<input type="hidden" id="address" value="${pageContext.request.contextPath}">

<!-- 网格系统 -->
<!-- 100%拉伸网格 -->
<div class="container-fluid">
	<div class="col-md-12" style="background-color: #dedef8;height:100px"><h4>我是大LOG，我可以划船不用桨，我可以扬帆没有风向，因为我这一生，全靠浪。</h4></div>
</div>

<!-- 固定宽度网格 -->
<div class="container">

	<!-- 每个row行中需要显示列数总和12 -->
	<!-- 第一行 -->
	<div class="row" >
		<div class="col-md-12" >
		
			<!-----------------------------------------导航条设计开始--------------------------------->
			<!--黑色导航条样式为navbar-inverse，白色样式为default, navbar-fixed-top导航条固定在顶端-->
			<nav id="daohang1" class="navbar navbar-default" >
			  <div class="container-fluid">
			    <!-- Brand and toggle get grouped for better mobile display -->
			    <!-- 导航栏头 -->
			    <div class="navbar-header">
			    <!------button为实现响应式布局，如果在手机上查看，点击button就可以弹出菜单---->
			      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      <a class="navbar-brand" href="#">CH-PRO</a>
			    </div>
			
			    <!-- Collect the nav links, forms, and other content for toggling -->
			    <!-- 当浏览器小于某个值时，点击button图标显示导航条的内容（注意这里的id与响应式button 的id对应）-->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <!--具体菜单项,胶囊样式为nav-pills-->
			      <ul class="nav navbar-nav">
			    	<!-- 按钮Link1,默认选择<li>标签class="active" -->
			        <li><a href="javascript:alert(1)">Link1<span class="sr-only">(current)</span></a></li>
			        <!-- 按钮Link2 -->
			        <li><a href="#">Link2</a></li>
			        
			        <!-- 按钮Dropdown1 -->
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown1 <span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a href="javascript:alert(1)">Action</a></li>
			            <li><a href="#">Another action</a></li>
			            <li><a href="#">Something else here</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">Separated link</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">One more separated link</a></li>
			          </ul>
			        </li>
			      </ul>
			      
			      <!-- 按钮Submit -->
			      <form class="navbar-form navbar-left">
			        <div class="form-group">
			          <input id="Search" type="text" class="form-control" placeholder="Search">
			        </div>
			        <button type="submit" class="btn btn-default" onclick="javascript:alert($('#Search').val())">Submit</button>
			      </form>
			     
			     	<!--导航栏右部，一般的登录 注册-->
			      <ul class="nav navbar-nav navbar-right">
			       	<!-- 按钮Link3 -->
			        <li><a href="#">Link3</a></li>
			        
			         <!-- 按钮Dropdown2 -->
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown2 <span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a href="javascript:alert(1)">Action</a></li>
			            <li><a href="#">Another action</a></li>
			            <li><a href="#">Something else here</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">Separated link</a></li>
			          </ul>
			        </li>
			      </ul>
			    </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
			<!-----------------------------------------导航条设计结束--------------------------------->
		</div>
	</div>
</div>

<!-- 容器 -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
		
			<!-- 列表表格-开始制作 -->
			<div class="panel-body" style="padding-bottom:0px;">
				<div class="panel panel-default">
				    <div class="panel-heading">查询条件</div>
				    <div class="panel-body">
				        <form id="formSearch" class="form-horizontal">
				            <div class="form-group" style="margin-top:15px">
				                <label class="control-label col-sm-1" for="txt_search_departmentname">部门名称</label>
				                <div class="col-sm-3">
				                    <input type="text" class="form-control" id="txt_search_departmentname">
				                </div>
				                <label class="control-label col-sm-1" for="txt_search_statu">状态</label>
				                <div class="col-sm-3">
				                    <input type="text" class="form-control" id="txt_search_statu">
				                </div>
				                <div class="col-sm-2" style="text-align: left;">
				                    <button type="button" id="btn_query" class="btn btn-primary" >查询</button>
				                </div>
				            </div>
				        </form>
				    </div>
				</div>       
				
				<div id="toolbar" class="btn-group">
				    <button id="btn_add" type="button" class="btn btn-default">
				        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
				    </button>
				    <button id="btn_edit" type="button" class="btn btn-default">
				        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
				    </button>
				    <button id="btn_delete" type="button" class="btn btn-default">
				        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
				    </button>
				</div>
				<!-- 增加表格样式：style="table-layout: fixed"时，设置列宽才能生效 -->
				<table id="tb_departments" style="table-layout:fixed; "></table>
				
			</div>
			
			<!-- dialog -->
			<!-- 模态框（Modal） -->
			<div class="hide" id="myModal" >
				<form role="form">
					<div class="form-group">
						<label for="name">名称</label>
						<input type="text" class="form-control" id="name" placeholder="请输入名称">
					</div>
					<div class="form-group">
						<label for="inputfile">文件输入</label>
						<input type="file" id="inputfile">
						<p class="help-block">这里是块级帮助文本的实例。</p>
					</div>
					<div class="checkbox">
						<label>
							<input type="checkbox"> 请打勾
						</label>
					</div>
					<button type="submit" class="btn btn-default">提交</button>
				</form>
			</div> 
			<!-- 数据表格-结束 -->
		</div>
	</div>
	
	
</div>

<div class="container">
	<!-- 第二行 -->
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
</div>
	 
</body>
</html>