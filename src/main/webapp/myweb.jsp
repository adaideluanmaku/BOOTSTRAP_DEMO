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

<!-- editable，和datetimepicker同时打开会冲突
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap3-editable/js/bootstrap-editable.js"></script>
<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" />
 -->
 
<!-- bootstrap-datetimepicker -->
<link href="${pageContext.request.contextPath}/bootstrap_home/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />  
<script src="${pageContext.request.contextPath}/bootstrap_home/moment/min/moment-with-locales.min.js"></script>  
<script src="${pageContext.request.contextPath}/bootstrap_home/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>  

<!-- echarts -->
<script type="text/javascript" src="${pageContext.request.contextPath}/baidu_echarts/echarts.js"></script>

<!-- Sweet alert 2-->
<link href="${pageContext.request.contextPath}/bootstrap_home/sweetalert2-7.33.1/dist/sweetalert2.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/bootstrap_home/sweetalert2-7.33.1/dist/sweetalert2.min.js"></script>

<!-- CH CODE -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js_ch/bootstrap-loading.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('#aaa').select2({
		placeholder: "--请选择--",//默认初始值
//		placeholder: { id: "0", text: "--请选择--" },//默认初始值
		allowClear: true,
//		dropdownParent: $("#aaa"),//modal默认不显示，解决modal显示后下拉单样式问题
		data:[{id:0,text:'否'},{id:1,text:'是'}],//前台数据
		/* ajax: {//后台数据
			url: addurl + '/pa/_select2',
			contentType:"application/json",
			data: function (params) {
	             return {
	            	 searchstr:params.term,//发送输入款内容到后台
	             };
	        },
			processResults: function (data) {
			// Tranforms the top-level key of the response object from 'items' to 'results'
				return {
					results: data
				};
			}
		} */
	});
	
	$('#aaa1').select2({
		placeholder: "--请选择--",//默认初始值
//		placeholder: { id: "0", text: "--请选择--" },//默认初始值
		allowClear: true,
		data:[{id:0,text:'否'},{id:1,text:'是'}],//前台数据
	});
	//选中team下拉后，初始化project的数据
	$('#aaa1').on("select2:select", function(e) {
		$('#aaa2').select2('val','0');
	})
	
	$('#aaa2').select2({
		placeholder: "--请选择--",//默认初始值
//		placeholder: { id: "0", text: "--请选择--" },//默认初始值
		allowClear: true,
		data:[{id:0,text:'0'},{id:1,text:'1'},{id:2,text:'2'}],//前台数据
	});
	
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
	
	baidu_echarts();
	baidu_echarts1();
	
	//单独悬浮编辑,页面JS引入需要打开才能使用
	$('#username').editable({
        type: "text",                //编辑框的类型。支持text|textarea|select|date|checklist等
        title: "用户名11",              //编辑框的标题
        disabled: false,             //是否禁用编辑
        emptytext: "空文本",          //空值的默认文本
        mode: "popup",              //编辑框的模式：支持popup和inline两种模式，默认是popup
        validate: function (value) { //字段验证
            if (!$.trim(value)) {
                return '不能为空';
            }
        }
    });
});

function waiting(){
	onloading();
	//removeload();//取消等待
}
function swal1(){
	Swal("123" ,'123',"success");//success,error,warning,info,question
}

function swal2(){
	Swal({
		  imageUrl: 'https://www.baidu.com',
		  imageHeight: 600,
		  imageAlt: 'A tall image'
		})
}

function swal3(){
	Swal({
		toast: true,//变大，删了变小
		  position: 'top-end',
		  type: 'success',
		  title: 'Your work has been saved',
		  showConfirmButton: false,
		  timer: 1500
		})
}

function swal4(){
	Swal({
		  title: 'Are you sure?',
		  text: "You won't be able to revert this!",
		  type: 'warning',
		  showCancelButton: true,
		  confirmButtonText: 'Yes, delete it!',
		  //cancelButtonText: 'No, cancel!',
		  reverseButtons: false//按钮位置
		}).then(function(result) {
		  if (result.value) {
			  Swal("111" ,'111',"success");
		  } else if (
		    // Read more about handling dismissals
		    result.dismiss === Swal.DismissReason.cancel
		  ) {
			  Swal("222" ,'222',"error");
		  }
		})
}

function swal5(){
	Swal({
		  title: 'Are you sure?',
		  text: "You won't be able to revert this!",
		  type: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes, delete it!'
		  //cancelButtonText: 'No, cancel!',
		}).then(function(result) {
		  if (result.value) {
			  Swal("111" ,'111',"success");
		  }
		})
}

function swal6(){
	/* var formValues = await Swal({
		  title: 'Multiple inputs',
		  html:
		    '<input id="swal-input1" class="swal2-input">' +
		    '<input id="swal-input2" class="swal2-input">',
		  focusConfirm: false,
		  preConfirm: function(){
		    return [
		      document.getElementById('swal-input1').value,
		      document.getElementById('swal-input2').value
		    ]
		  }
		})

		if (formValues) {
		  Swal(json.stringify(formValues))
		} */
}

function modal_dialog_open(){
	$('#modal_dialog').modal('show');
}

function files_sub(){
    var files = $('#f_upload').prop('files');//获取到文件列表
    var unicode='UTF-8';//GB2312，UTF-8
    
    
    if(files.length == 0){
        alert('请选择文件');
    }else{
    	
    	//导入到前端页面
        var reader = new FileReader();//新建一个FileReader
        reader.readAsText(files[0], unicode);//读取文件 
        reader.onload = function(evt){ //读取完文件之后会回来这里
            var fileString = evt.target.result; // 读取文件内容
            alert('读取内容成功');
        }
        
        //导入到后台，
        //ajax.
    }	
}

function baidu_echarts(){
	var dom = document.getElementById("echarts");
	var myChart = echarts.init(dom);
	var app = {};
	option = null;
	option = {
//	    title: {
//	        text: '折线图堆叠'
//	    },
	    tooltip: {
	        trigger: 'axis'
	    },
	    legend: {
	        data:['邮件营销','联盟广告','视频广告','直接访问','搜索引擎']
	    },
	    grid: {
	        left: '3%',
	        right: '4%',
	        bottom: '3%',
	        containLabel: true
	    },
	    dataZoom: [
			{
			    type: 'inside',
			    start: 0,
			    end: 100
			},
           {
                show: true,
                start: 0,
                end: 100
            }, 
            
           /*  {
                show: true,
                yAxisIndex: 0,
                filterMode: 'empty',
                width: 30,
                height: '80%',
                showDataShadow: false,
                left: '93%'
            } */
        ],
	    toolbox: {
	        feature: {
	            saveAsImage: {}
	        }
	    },
	    //横轴
	    xAxis: {
	        type: 'category',
	        boundaryGap: false,
	        data: ['周一','周二','周三','周四','周五','周六','周日']
	    },
	    yAxis: {
	        type: 'value'
	    },
	    //纵轴
	    series: [
	        {
	            name:'邮件营销',
	            type:'line',
	            stack: '总量',
	            data:[120, 132, 101, 134, 90, 230, 210]
	        },
	        {
	            name:'联盟广告',
	            type:'line',
	            stack: '总量',
	            data:[220, 182, 191, 234, 290, 330, 310]
	        },
	        {
	            name:'视频广告',
	            type:'line',
	            stack: '总量',
	            data:[150, 232, 201, 154, 190, 330, 410]
	        },
	        {
	            name:'直接访问',
	            type:'line',
	            stack: '总量',
	            data:[320, 332, 301, 334, 390, 330, 320]
	        },
	        {
	            name:'搜索引擎',
	            type:'line',
	            stack: '总量',
	            data:[820, 932, 901, 934, 1290, 1330, 1320]
	        }
	    ]
	};
	;
	if (option && typeof option === "object") {
	    myChart.setOption(option, true);
	}
}

function baidu_echarts1(){
	var dom = document.getElementById("echarts1");
	var myChart = echarts.init(dom);
	var app = {};
	option = null;
	app.title = '坐标轴刻度与标签对齐';

	option = {
	    color: ['#3398DB'],
	    tooltip : {
	        trigger: 'axis',
	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
	        }
	    },
	    grid: {
	        left: '3%',
	        right: '4%',
	        bottom: '3%',
	        containLabel: true
	    },
	    dataZoom: [
			{
			    type: 'inside',
			    start: 0,
			    end: 100
			},
           {
                show: true,
                start: 0,
                end: 100
            }, 
            
           /*  {
                show: true,
                yAxisIndex: 0,
                filterMode: 'empty',
                width: 30,
                height: '80%',
                showDataShadow: false,
                left: '93%'
            } */
        ],
	    xAxis : [
	        {
	            type : 'category',
	            data : ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
	            axisTick: {
	                alignWithLabel: true
	            }
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	        {
	            name:'直接访问',
	            type:'bar',
	            barWidth: '60%',
	            data:[10, 52, 200, 334, 390, 330, 220]
	        }
	    ]
	};
	;
	if (option && typeof option === "object") {
	    myChart.setOption(option, true);
	}
	
}
</script>
</head>
<body>
<input type="hidden" id="address" value="${pageContext.request.contextPath}">
<div class="row">
	<!-- 网格系统 -->
	<!-- 100%拉伸网格 -->
	<div class="container-fluid">
		<div class="col-md-12" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, 
		         inset -1px 1px 1px #444;"><h4>网格系统铺满。</h4></div>
	</div>
</div>

<hr>
<div class="row">
	<div class="container">
		<div class="col-md-12" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, 
		         inset -1px 1px 1px #444;"><h4>网格系统居中。</h4></div>
	</div>
</div>

<hr>
<div class="row">
	<!-----------------------------------------导航条设计开始--------------------------------->
	<!--黑色导航条样式为navbar-inverse，白色样式为default, navbar-fixed-top导航条固定在顶端-->
	<nav class="navbar navbar-default" style="height:50px">
		<div class="navbar-header">
			<a class="navbar-brand" href="#" id="CH_PRO">CH-PRO</a>
			<!------button为实现响应式布局，如果在手机上查看，点击button就可以弹出菜单---->
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		
		<!-- 当浏览器小于某个值时，点击button图标显示导航条的内容（注意这里的id与响应式button 的id对应）-->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!--具体菜单项,胶囊样式为nav-pills-->
			<ul class="nav navbar-nav">
				<li><a href="#">Link1<span class="sr-only">(current)</span></a></li>
				<li><a href="#">Link2</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown1 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
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
				<button type="submit" class="btn btn-default" onclick="javascript:alert(1)">Submit</button>
			</form>
			
			<!--导航栏右部，一般的登录 注册-->
			<ul class="nav navbar-nav navbar-right">
				<!-- 按钮Link3 -->
				<li><a href="javascript:void(0)">Link3</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</nav>
	<!-----------------------------------------导航条设计结束--------------------------------->
</div>

<hr>
<div class="row" style="margin-left:30px">
	<h4>目录树方式一</h4>
	<div class="col-md-2 column">
		<div class="panel-group" id="panel-1">
			<div class="panel panel-default">
				<div class="panel-heading">
					 <a rel="nofollow" class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-1" href="#panel-element-1">折叠一</a>
				</div>
				<div id="panel-element-1" class="panel-collapse in">
					<div class="panel-body">
						折叠一的内容...
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					 <a rel="nofollow" class="panel-title" data-toggle="collapse" data-parent="#panel-1" href="#panel-element-2">折叠二</a>
				</div>
				<div id="panel-element-2" class="panel-collapse collapse">
					<div class="panel-body">
						折叠二的内容...
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<hr>
<div class="row" style="margin-left:30px"> 
	<h4>目录树方式二</h4>
	<div class="col-md-2">
		<ul class="nav metismenu" id="side-menu">
			<li class="active">
				<a href="javascript:void(0)"><i class="fa fa-th-large"></i><span class="nav-label">统计管理</span> <span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li class="active"><a href="javascript:void(0);">总览</a></li>
					<li class="active"><a href="javascript:void(0);">总览</a></li>
				</ul>
			</li>
			<li>
				<a href="javascript:void(0)"><i class="fa fa-th-large"></i><span class="nav-label">统计管理</span> <span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li class="active"><a href="javascript:void(0);">总览</a></li>
					<li class="active"><a href="javascript:void(0);">总览</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div>

<hr>
<div class="row" style="width:300px;margin-left:30px" > 
	<h4>输入组合</h4>
	<div class="input-group">
		<span class="input-group-addon">@</span>
		<input type="text" class="form-control" placeholder="Username">
	</div>
	<div class="input-group">
		<input type="text" class="form-control" placeholder="Recipient's username">
		<span class="input-group-addon" id="basic-addon2">@example.com</span>
	</div>
	<div class="input-group">
		<span class="input-group-addon">$</span>
		<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
		<span class="input-group-addon">.00</span>
	</div>
	<div class="row">
	    <label class="col-sm-3 control-label" style="margin-top:10px;text-align:center">名字:</label>
	    <div class="col-sm-9">
	    	<input type="text" class="form-control" placeholder="请输入名字">
	    </div>
  	</div>
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
  	<div class="row">
		<label class="col-sm-4 control-label" style="margin-top:10px;text-align:center">编辑器:</label>
		 <div class="col-sm-8">
	    	<a href="javascript:void()" class="form-control" id="username">JS引入需要打开</a>
	    </div>
	</div>
	<div class="row">
		<label class="col-sm-4 control-label" style="margin-top:10px;text-align:center">上传文件:</label>
		 <div class="col-sm-8">
	    	<input id="f_upload" type="file" style="margin-top:5px" onchange="files_sub()" />
	    </div>
	</div>
</div>

<hr>
<div class="row" style="width:300px;margin-left:30px" > 
	<h4>输入组合2</h4>
	<div class="checkbox">
		<label><input type="checkbox" value="">选项 1</label>
	</div>
	<div class="checkbox">
		<label><input type="checkbox" value="">选项 2</label>
	</div>
	<div class="radio">
		<label>
			<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> 选项 1
		</label>
	</div>
	<div class="radio">
		<label>
	   		<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"> 选项 2 - 选择它将会取消选择选项 1
		</label>
	</div>
</div>
<hr>
<div class="row" style="width:300px;margin-left:30px" > 
	<h4>下拉单</h4>
	<select class="form-control">
		<option value="1" selected="selected">原生1</option>
		<option value="2">2</option>
	</select>
	<div class="col-sm-12">
		<label for="aaa" class="col-sm-4 control-label" style="padding-top:7px">项目名称</label>
		<div class="col-sm-8">
			<select id='aaa' name="name" class="js-data-example-ajax" style="width:100%"></select>
		</div>
	</div>
	<h4>下拉单联动</h4>
	<div class="col-sm-12">
		<label for="aaa1" class="col-sm-4 control-label" style="padding-top:7px">项目名称</label>
		<div class="col-sm-8">
			<select id='aaa1' name="name" class="js-data-example-ajax" style="width:100%"></select>
		</div>
	</div>
	<div class="col-sm-12">
		<label for="aaa2" class="col-sm-4 control-label" style="padding-top:7px">项目名称</label>
		<div class="col-sm-8">
			<select id='aaa2' name="name" class="js-data-example-ajax" style="width:100%"></select>
		</div>
	</div>
	<div class="dropdown" style="width:50px;">
		<a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
			下拉单<b class="caret"></b>
		</a>
		<ul class="dropdown-menu" >
			<li><a href="#">jmeter</a></li>
			<li><a href="#">EJB</a></li>
			<li><a href="#">Jasper Report</a></li>
			<li class="divider"></li>
			<li><a href="#">分离的链接</a></li>
			<li class="divider"></li>
			<li><a href="#">另一个分离的链接</a></li>
		</ul>
	</div>
</div>

<hr>
<div class="row" style="width:300px;margin-left:30px" > 
	<h4>form表单</h4>
	<form class="form-horizontal" role="form" action="/" method="POST">
		<div class="form-group">
		    <label for="name">名称</label>
		    <input type="text" class="form-control" id="name" placeholder="请输入名称">
		</div>
		<div class="form-group">
		    <label for="firstname" class="col-sm-3 control-label">名字</label>
		    <div class="col-sm-9">
		    	<input type="text" class="form-control" id="firstname" placeholder="请输入名字">
		    </div>
	  	</div>
	  	<div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-default" onclick="javascript:alert(1)">登录</button>
		    </div>
		</div>
	</form>
</div>
    
<hr> 		
<div class="row" style="width:300px;margin-left:30px" > 
	<h4>按钮</h4>
	<!-- Standard button -->
	<button type="button" class="btn btn-default">（默认样式）Default</button>
	
	<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
	<button type="button" class="btn btn-primary">（首选项）Primary</button>
	
	<!-- Indicates a successful or positive action -->
	<button type="button" class="btn btn-success">（成功）Success</button>
	
	<!-- Contextual button for informational alert messages -->
	<button type="button" class="btn btn-info">（一般信息）Info</button>
	
	<!-- Indicates caution should be taken with this action -->
	<button type="button" class="btn btn-warning">（警告）Warning</button>
	
	<!-- Indicates a dangerous or potentially negative action -->
	<button type="button" class="btn btn-danger">（危险）Danger</button>

	<!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
	<button type="button" class="btn btn-link">（链接）Link</button>
	
	<a href="javascript:void(0)" class="btn btn-primary btn-lg active" role="button">Primary link</a>
	<a href="javascript:void(0)" class="btn btn-default btn-lg active" role="button">Link</a>
</div>
    
<hr> 		
<div class="row" style="width:300px;margin-left:30px" > 
	<h4>模态窗口</h4>
	<!-- Standard button -->
	<button type="button" class="btn btn-default" onclick="modal_dialog_open()">（默认样式）Default</button>
</div>   
<hr> 		
<div class="row" style="width:400px;margin-left:30px" > 
	<h4>提示框</h4>
	<!-- Standard button -->
	<button type="button" class="btn btn-default" onclick="swal1()">提示1</button>
	<button type="button" class="btn btn-default" onclick="swal2()">提示2</button>
	<button type="button" class="btn btn-default" onclick="swal3()">提示3</button>
	<button type="button" class="btn btn-default" onclick="swal4()">提示4</button>
	<button type="button" class="btn btn-default" onclick="swal5()">提示5</button>
	<button type="button" class="btn btn-default" onclick="swal6()">文本输入提示</button>
</div>   
<hr> 		
<div class="row" style="width:400px;margin-left:30px" > 
	<h4>等待遮罩层</h4>
	<!-- Standard button -->
	<button type="button" class="btn btn-default" onclick="waiting()">等待遮罩层1</button>
</div>
<hr> 		
<div class="row" style="width:600px;margin-left:30px" > 
	<h4>面板1</h4>
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="row">
				<div class="col-sm-10">
					Basic panel example
					 Basic panel example
					 Basic panel example
					 Basic panel example
				</div>
				
			</div>
			<div class="row">
				 <div class="col-sm-10">
					 Basic panel example
					 Basic panel example
					 Basic panel example
					 Basic panel example
				</div>
			</div>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="row">
				<div class="col-sm-10">
					<label class="col-sm-3 control-label" style="margin-top:10px;text-align:center">名字:</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" placeholder="请输入名字">
					</div>
				</div>
			</div>
			<div class="row">
				<button type="button" class="btn btn-link">（链接）Link</button>
			</div>
		</div>
	</div>
	<h4>面板2</h4>
	<div class="panel panel-default">
		<div class="panel-heading">Panel heading without title</div>
		<div class="panel-body">
			Panel content
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">Panel title</h3>
		</div>
		<div class="panel-body">
			Panel content
		</div>
	</div>
</div>
<hr>
<div class="row" style="height:500px;margin-left:30px;border:1px solid" >
	<h4>统计图1</h4>
	<div class="col-sm-5">
		<div class="panel panel-default">
			<div class="panel-heading">统计图</div>
			<div class="panel-body">
				<div id="echarts" style="width: 100%;height:350px;"></div>
			</div>
		</div>
	</div>
	<div class="col-sm-5">
		<div class="panel panel-default">
			<div class="panel-heading">统计图</div>
			<div class="panel-body">
				<div id="echarts1" style="width: 100%;height:350px;"></div>
			</div>
		</div>
	</div>
</div>	
<hr>
<div class="row" style="margin-left:30px;border:1px solid" >
	<h4>页面1</h4>
	<div class="container">
		<div class="row" style="height:100px;border:1px solid">
			顶上功能区
		</div>
		<div class="row" style="height:500px;border:1px solid">
			<div class="col-sm-3" style="height:100%;border:1px solid">左侧功能区
				<div class="panel-group" id="panel-2">
					<div class="panel panel-default">
						<div class="panel-heading">
							 <a rel="nofollow" class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-2" href="#panel-element-11">折叠一</a>
						</div>
						<div id="panel-element-11" class="panel-collapse in">
							<div class="panel-body">
								折叠一的内容...
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							 <a rel="nofollow" class="panel-title" data-toggle="collapse" data-parent="#panel-2" href="#panel-element-12">折叠二</a>
						</div>
						<div id="panel-element-12" class="panel-collapse collapse">
							<div class="panel-body">
								折叠二的内容...
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-9" style="height:100%;border:1px solid">右侧功能区
				<div id="header_path"  class="row wrapper border-bottom white-bg page-heading">
					<div class="col-lg-10">
						<ol class="breadcrumb">
							<li><a>home</a></li>
							<li><a>PA测试管理</a></li>
							<li class="active"><strong>案例管理</strong></li>
						</ol>
					</div>
					<div class="col-lg-2"></div>
				</div>
			</div>
		</div>
	</div>
</div>	
<hr>
<div class="row" style="height:600px;margin-left:30px;border:1px solid" >
	<div class="col-sm-6">
		<h4>页面2-1</h4>
		<div class="container" style="width:600px;height:600px;border:1px solid" >
			<div class="row" style="width:100%;height:20%;border:1px solid">
				<div class="center-block" style="width:300px;height:100%;border:1px solid">
					<div class="row" style="height:30%;border:1px solid">
					
					</div>
					<div class="row" style="height:50%;border:1px solid">
						<div class="col-md-3" style="height:100%">
							<h3>标题</h3>
						</div>
					</div>
					<div class="row text-right" style="height:20%;border:1px solid;">
						<a href="javascript:void(0)" >Link1</a>
						<a href="javascript:void(0)" >Link2</a>
						<a href="javascript:void(0)" >Link3</a>
						<div class="dropdown" style="width:50px;float:right">
							<a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
								下拉单<b class="caret"></b>
							</a>
							<ul class="dropdown-menu" >
								<li><a href="#">个人设置</a></li>
								<li><a href="#">修改密码</a></li>
								<li class="divider"></li>
								<li><a href="#">退出</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row" style="width:100%;height:40%;border:1px solid">
				<div class="row" style="width:100%;height:10%;border:1px solid">
				</div>
				<div class="center-block" style="width:300px;height:90%;border:1px solid">
					<ul class="list-inline">
						<li class="text-center" >
							<a href="javascript:void(0)" class="thumbnail item-thumbnail" title="">
								<p class="my-item">客户管理</p>
							</a>
						</li>
						<li class="text-center" >
							<a href="javascript:void(0)" class="thumbnail item-thumbnail" title="">
								<p class="my-item">客户管理</p>
							</a>
						</li>
						<li class="text-center" >
							<a href="javascript:void(0)" class="thumbnail item-thumbnail" title="">
								<p class="my-item">客户管理</p>
							</a>
						</li>
						<li class="text-center" >
							<a href="javascript:void(0)" class="thumbnail item-thumbnail" title="">
								<p class="my-item">pass客户管理</p>
							</a>
						</li>
						<li class="text-center" >
							<a href="javascript:void(0)" class="thumbnail item-thumbnail" title="">
								<p class="my-item">pass客户管理</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-6">
		<h4>页面2-2</h4>
		<div class="container" style="width:600px;height:600px;border:1px solid" >
			<div class="row" style="border:1px solid">
				<div class="col-sm-4" style="height:100%;border:1px solid">
					左侧功能区
					<div class="col-md-12">
						<ul class="nav metismenu" id="side-menu">
							<li class="active">
								<a href="javascript:void(0)"><i class="fa fa-th-large"></i><span class="nav-label">统计管理</span> <span class="fa arrow"></span></a>
								<ul class="nav nav-second-level">
									<li class="active"><a href="javascript:void(0);">总览</a></li>
									<li class="active"><a href="javascript:void(0);">总览</a></li>
								</ul>
							</li>
							<li>
								<a href="javascript:void(0)"><i class="fa fa-th-large"></i><span class="nav-label">统计管理</span> <span class="fa arrow"></span></a>
								<ul class="nav nav-second-level">
									<li class="active"><a href="javascript:void(0);">总览</a></li>
									<li class="active"><a href="javascript:void(0);">总览</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-8" style="height:100%;border:1px solid">
					右侧功能区
					<div id="header_path"  class="row wrapper border-bottom white-bg page-heading">
						<div class="col-lg-10">
							<ol class="breadcrumb">
								<li><a>home</a></li>
								<li><a>PA测试管理</a></li>
								<li class="active"><strong>案例管理</strong></li>
							</ol>
						</div>
						<div class="col-lg-2"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>	


<!-- 模态框（Modal） -->
<div class="modal fade" id="modal_dialog" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" height="600px">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">查看</h4>
			</div>
			<div class="modal-body" style="height:400px;overflow:auto">
				<div class="row">
				    <label class="col-sm-3 control-label" style="margin-top:10px;text-align:center">名字:</label>
				    <div class="col-sm-9">
				    	<input type="text" class="form-control" placeholder="请输入名字">
				    </div>
			  	</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">确认</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div> 
</body>

</html>