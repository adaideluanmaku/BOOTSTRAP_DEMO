<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>

<title>Bootstrap 模板</title>
<!-- 移动设备优先 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!-- SYS CSS -->
<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap-3.3.7-dist/css/bootstrap_CH.css" rel="stylesheet">

<!-- SYS JS -->
<!-- 引入 Bootstrap -->
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap_home/js/jquery-3.2.1.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-table/bootstrap-table.js"></script>
<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap-table/bootstrap-table.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-table/bootstrap-table-zh-CN.js"></script>

<!-- bootstrap-table-export -->
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-table-export/bootstrap-table-export.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-table-export/tableExport.js"></script>

<!-- editable -->
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap3-editable/js/bootstrap-editable.js"></script>
<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap3-editable/js/bootstrap-table-editable.js"></script>

<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap-dialog/bootstrap-dialog.min.css" rel="stylesheet" >
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-dialog/bootstrap-dialog.min.js"></script>

<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap-table-fixed-columns/bootstrap-table-fixed-columns.css" rel="stylesheet" >
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-table-fixed-columns/bootstrap-table-fixed-columns.js"></script>

<!-- bootstrap-datetimepicker -->
<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />  
<script src="${pageContext.request.contextPath}/bootstrap_home/moment/min/moment-with-locales.min.js"></script>  
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>  

<!-- sweetalert -->
<link href="${pageContext.request.contextPath}/bootstrap_home/sweetalert/sweetalert.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/bootstrap_home/sweetalert/sweetalert.min.js"></script>

<!-- MY JS -->
<script src="${pageContext.request.contextPath}/js_ch/ch_bootstrap_table.js"></script>
<link href="${pageContext.request.contextPath}/css_ch/ch_bootstrap_table.css" rel="stylesheet">
	
</head>
<body>
<input type="hidden" id="address" value="${pageContext.request.contextPath}">
<div class="container-fluid">
	<div class="col-md-2 column">
		<div class="panel-group" id="panel-757712" style="padding-top:15px">
			<div class="panel panel-default">
				<div class="panel-heading">
					<a rel="nofollow" class="panel-title collapsed"
						data-toggle="collapse" data-parent="#panel-757712"
						href="#panel-element-336417">折叠一</a>
				</div>
				<div id="panel-element-336417" class="panel-collapse collapse">
					<div class="panel-body"><a href="javascript:void(0);" onclick="alert(1)">aaaa</a></div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<a rel="nofollow" class="panel-title" data-toggle="collapse"
						data-parent="#panel-757712" href="#panel-element-702637">折叠二</a>
				</div>
				<div id="panel-element-702637" class="panel-collapse in">
					<div class="panel-body"><a href="javascript:void(0);" onclick="aaa()">aaaa</a></div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-10 column">
		<!-- 列表表格-开始制作 -->
		<div class="panel-body" style="padding-bottom:0px;" id="table_box_1">
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
			                    <button type="button" id="btn_query" class="btn btn-primary" onclick="table_prescription_search()">查询</button>
			                </div>
			            </div>
			        </form>
			    </div>
			</div>  
			
			<div id="toolbar" class="btn-group">
				<div class="col-sm-12">
					<button id="btn_add_row" type="button" class="btn btn-default" onclick="row_append()">
			        	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增行
				    </button>
				    <button id="btn_add" type="button" class="btn btn-default" data-toggle="modal" data-target="#modal_dialog">
			        	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
				    </button>
					<button id="btn_edit" type="button" class="btn btn-default" onclick="row_update()">
						<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
					</button>
					<button id="btn_delete" type="button" class="btn btn-default" onclick="row_del()">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
					</button>
					<div  class="btn-group">
						<button id="dropdownMenu1" type="button"
							class="btn btn-default dropdown-toggle" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>工具
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="javascript:alert(1)">Action</a></li>
							<li><a href="javascript:alert(1)">Another action</a></li>
							<li><a href="javascript:alert(1)">Something else here</a></li>
							<li><a href="javascript:alert(1)" onclick="restful_delete()">RESTFUL DELETE</a></li>
							<li><a href="javascript:alert(1)" onclick="restful_put()">RESTFUL PUT</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="javascript:alert(1)" onclick="_excel()">导出_excel</a></li>
						</ul>
					</div>
					<div  class="btn-group">
						<button id="dropdownMenu2" type="button"
							class="btn btn-default dropdown-toggle" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>工具2
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
							<li><a href="javascript:alert(1)"></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 增加表格样式：style="table-layout: fixed"时，设置列宽才能生效 -->
			<table id="tb_departments" style="table-layout:fixed; "></table>
		</div>
		<!-- 数据表格-结束 -->
	</div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="modal_dialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
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
				<div class="row">
					<div class="col-sm-3">
						<a href="#" id="username">用户名</a>
					</div>
				</div>
				 <div class="row">
					<div class="col-sm-5">
				      	<div class="input-group">
				            <span class="input-group-addon">出生日期</span>
				            <div class="input-group date" id="Birthday" name="Birthday">  
				                <input type="text" class="form-control" />  
				                <span class="input-group-addon">  
				                    <span class="glyphicon glyphicon-calendar"></span>  
				                </span>  
				            </div>
				        </div>
				    </div>
				</div>
			</div>
			<div class="modal-body">
				<table id="dict_drug" style="table-layout:fixed; "></table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary">提交更改</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</body>
</html>