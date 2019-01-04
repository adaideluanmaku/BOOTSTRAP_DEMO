<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Bootstrap 模板</title>
<!-- 移动设备优先 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!-- SYS CSS -->
<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">

<!-- SYS JS -->
<!-- 引入 Bootstrap -->
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap_home/js/jquery-3.2.1.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<!-- 左边目录树Mainly scripts -->
<script src="${pageContext.request.contextPath}/bootstrap_home/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap_home/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>	
<!-- 左边目录树Custom and plugin javascript -->
<script src="${pageContext.request.contextPath}/bootstrap_home/js/inspinia.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap_home/js/plugins/pace/pace.min.js"></script>
<link href="${pageContext.request.contextPath}/bootstrap_home/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap_home/css/style.css" rel="stylesheet">

<!-- select2 -->
<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap-select2/css/select2.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-select2/js/select2.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-select2/js/i18n/zh-CN.js"></script>

<!-- editable -->
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap3-editable/js/bootstrap-editable.js"></script>
<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" />

<!-- bootstrap-datetimepicker -->
<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />  
<script src="${pageContext.request.contextPath}/bootstrap_home/moment/min/moment-with-locales.min.js"></script>  
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>  

<!-- echarts -->
<script type="text/javascript" src="${pageContext.request.contextPath}/baidu_echarts/echarts.js"></script>






<script type="text/javascript">
$(document).ready(function() {
	
	$('#Birthday').datetimepicker({  
        format: 'YYYY-MM-DD HH:mm:ss',  //YYYY-MM-DD HH:mm:ss
        locale: moment.locale('zh-cn'),
        defaultDate: "1990-1-1 00:00:01"
    });
	$('#Birthday1').datetimepicker({  
        format: 'YYYY-MM-DD',  //YYYY-MM-DD HH:mm:ss
        locale: moment.locale('zh-cn'),
//        defaultDate: "1990-1-1 00:00:01"
    });
});

</script>
</head>
<body>
<input type="hidden" id="address" value="${pageContext.request.contextPath}">

<hr>
<div class="row" style="width:300px;margin-left:30px" > 
	<h4>输入组合</h4>
  	<div class="input-group">
        <span class="input-group-addon">出生日期</span>
        <div class="input-group date" id="Birthday">  
            <input type="text" class="form-control" />  
            <span class="input-group-addon">  
                <span class="glyphicon glyphicon-calendar"></span>  
            </span>  
        </div>
    </div>
    <div class="row">
	    <label class="col-sm-4 control-label" style="margin-top:10px;text-align:center">出生日期:</label>
	    <div class="input-group date" id="Birthday1">  
            <input type="text" class="form-control" />  
            <span class="input-group-addon">  
                <span class="glyphicon glyphicon-calendar"></span>  
            </span>
        </div>
  	</div> 
</div>

</body>

</html>