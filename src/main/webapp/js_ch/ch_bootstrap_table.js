var oTable=null;
//获取所有行带index功能，getDataIndex_CH
//获取勾选行带index功能，getSelectionsIndex_CH
//获取勾选行的index，getSelectionIds_CH


$(document).ready(function(){
	//声明一个表格对象，初始化表格
	oTable=new TableInit();
	oTable.Init();
	
	//单独悬浮编辑
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
	
	$('#Birthday').datetimepicker({  
        format: 'YYYY-MM-DD HH:mm:ss',  //YYYY-MM-DD HH:mm:ss
        locale: moment.locale('zh-cn'),
//        defaultDate: "1990-1-1 00:00:01"
    });
	
	//鼠标浮动提示窗口-触发事件
	$(document).on('mouseover mouseout','table td',function(){ 
		if(event.type == 'mouseover'){//鼠标悬浮
			if($(this).text().length>5){//浮动窗口
				$('body').append('<div id="title" style="max-width:400px;max-height:200px;position: absolute;'
						+'top:0px;left:0px;background-color: #fff2e8;/*自动换行*/	word-wrap: break-word;' 
						+'overflow: hidden;text-overflow: ellipsis;'
						+'border: 1px solid #c0c0c0; z-index:9999;"></div>');
				
				if($(this).find('a').length > 0){
					$('#title').text($(this).find('a').text().substring(0,300));
				}else{
					$('#title').text($(this).text().substring(0,300));
				}
				
				$(this).mousemove(function(e) { 
					var xx = e.originalEvent.x || e.originalEvent.layerX || 0; 
					var yy = e.originalEvent.y || e.originalEvent.layerY || 0; 
					var newxx=null;
					var newyy=null;
					
					//如果提示框在最下面超过页面高度，则靠上显示
					var bodyheight=document.body.offsetHeight;
					var bodywidth=document.body.offsetWidth;
					if((yy+30+$('#title').height())<bodyheight){
//						newxx=xx+20;
						newyy=yy+10;
					}else{
//						newxx=xx+20;
						newyy=yy+10-$('#title').height();
					}
					if((xx+20+$('#title').width())<bodywidth){
						newxx=xx+20;
//						newyy=yy+10;
					}else{
						newxx=xx-20-$('#title').width();
//						newyy=yy+10-200;
					}
					
					$('#title').css('left',newxx+'px');
					$('#title').css('top',newyy+'px');
					
				}); 
			}
		}else if(event.type == 'mouseout'){//鼠标离开
			$('#title').remove();
		}
	}); 
	
});

//创建一个表格对象
var TableInit =function () {
	var oTableInit=new Object();
	var address=$("#address").val()+'/table/bootstrap_table_test';
	
	//初始化表格
	oTableInit.Init = function(){
		$("#tb_departments").bootstrapTable('destroy'); // 销毁数据表格,不销毁可能有数据缓存问题
		$('#tb_departments').bootstrapTable({
			url:address,         				// 请求后台的URL（*）
			method: 'post',                     // 请求方式（*）
//			dataType: "json",					//数据类型
			contentType:"application/x-www-form-urlencoded; charset=UTF-8", //get请求时可不设置，POST请求时需要HTTP内容类型
			toolbar: '#toolbar',                // 工具按钮用哪个容器
			striped: true,                      // 是否显示行间隔色
			cache: false,                       // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
			pagination: true,                   // 是否显示分页（*）
			sortable: false,                    // 是否启用排序
			sortOrder: "asc",                   // 排序方式
			sidePagination: "server",           // 分页方式：client客户端分页，server服务端分页（*），两种分页JSON结构不同
			pageNumber:1,                       // 初始化加载第一页，默认第一页
			pageSize: 10,                       // 每页的记录行数（*）
			pageList: [10, 25, 50, 100],        // 可供选择的每页的行数（*）
			search: true,                       // 是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大(陈辉-验证可以提交查询数据到服务端)
			strictSearch: true,				
			showColumns: true,                  // 是否显示所有的列按钮
			showRefresh: true,                  // 是否显示刷新按钮
			minimumCountColumns: 2,             // 最少允许的列数
			clickToSelect: false,               // 是否启用点击选中行
			height: table_height(),                        // 行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
			uniqueId: "ID",                     // 每一行的唯一标识，一般为主键列
//			idField: "ID",						//表明每行唯 一的标识符
			showToggle:true,                    // 是否显示详细视图和列表视图的切换按钮
			cardView: false,                    // 是否显示详细视图
			detailView: false, 					//是否显示父子表
//			fixedColumns: true,					//固定列,引入bootstrap-table-fixed-columns.js
//	        fixedNumber:2,						//固定前两列,引入bootstrap-table-fixed-columns.js
			
			showExport: true,  			// 是否显示导出按钮
			exportDataType: "selected",		// 'basic', 'all', 'selected'.
		    exportTypes:['excel','xml'],  	// 导出文件类型
		    exportOptions:{  
				ignoreColumn: [0,1],  	// 忽略某一列
				fileName: '周工作汇报',  	// 文件名称设置
				worksheetName: 'sheet1',  // 表格工作区名称
//				tableName: '测试导出文档',  
		    },
		    
			// 传递参数（*）,组织表格参数和页面查询参数
			queryParams : function (params) {
			    var temp = {   // 这里的键的名字和控制器的变量名必须一致，这边改动，控制器也需要改成一样的
					limit: params.limit,   // 页面数量大小
					offset: params.offset, // 当前页码
//					sort: params.sort,  //排序列名  
//				    sortOrder: params.order,//排位命令（desc，asc） 
					search: params.search, // 工具栏查询内容,search:true才有
					
					departmentname: $("#txt_search_departmentname").val(),
					statu: $("#txt_search_statu").val(),
			    };
			    return temp;
			},
			
			// 是否显示父子表
			columns : [{
				field: 'select',
				checkbox : true
			} , {
				field : 'Name',
				title : '部门名称',
				width : 300,
				align:'center',
				
			}, {
				field : 'ParentName',
				title : '上级部门',
				width : 300,
				
			}, {
				field : 'Level',
				title : '部门级别',
				width : 100,
				editable: {
					type: "text",                //编辑框的类型。支持text|textarea|select|date|checklist等
			        title: "1111",              //编辑框的标题
			        disabled: false,             //是否禁用编辑
			        emptytext: "空文本",          //空值的默认文本
			        mode: "popup",   
                    validate: function (v) {
                        if (!v) return '部门级别不能为空';

                    }
                }
			}, {
				field : 'Desc',
				title : '描述',
				width : 300,
				editable: {
                    type: 'combodate',
                    format :'YYYY-MM-DD HH:mm:ss',
                    viewformat : 'YYYY-MM-DD HH:mm:ss',
                    template:'YYYY-MM-DD HH:mm:ss',
                    pk:1,
                    title:"设置时间",
                },
			}, {
				field : 'Desc0',
				title : '描述0',
				width : 300,
			}, {
				field : 'Desc1',
				title : '描述1',
				width : 300,
				formatter: function (value, row, index) {
                    if (value != "") {
                        return '111';
                    }
                    else
                        return '222';
                }
			}, {
				field : 'Desc2',
				title : '描述2',
				visible: false,
				width : 300
			}, {
				field : 'Desc3',
				title : '描述3',
				width : 300
			}, {
				field : 'Desc4',
				title : '描述4',
				width : 300
			}, {
				field : 'Desc5',
				title : '描述5',
				width : 300
			}, {
				field : 'Desc6',
				title : '描述6',
				width : 300
			}, {
				field : 'Desc7',
				title : '描述7',
				width : 300
			} ],
			
			// 1.点击每行进行函数的触发
			onClickRow : function(row, tr,flied){
			},

			// 2. 点击前面的复选框进行对应的操作
			// 点击全选框时触发的操作
			onCheckAll:function(rows){
//				alert(rows);      
			},
			// 点击每一个单选框时触发的操作
			onCheck:function(row){
//				alert(row);      
			},
			// 取消每一个单选框时对应的操作；
			onUncheck:function(row){
//				alert(row);      
			},
			
			//行内编辑保存
			onClickCell: function(field, value, row, $element) {
				//当列为编辑状态时，再次点击不会触发
	            if($element.context.contentEditable!='true'){
	            	$element.attr('contentEditable', true);
	            	$element.blur(function() {
						var index = $element.parent().data('index');
		            	var tdValue = $element.html();
		            	if(value != tdValue){
		            		console.log(1111)
//		            		$.ajax({
//			                    type: "post",
//			                    url: $("#addurl").val()+"/dict/updatedrug",
//			                    data: row,
//			                    dataType: 'JSON',
//			                    success: function (data, status) {
//			                    	swal({title: "提示",text: ""});
//			                    },
//			                    error: function () {
//			                        alert('编辑失败');
//			                    },
//			                    complete: function () {
		//	
//			                    }
//							});
		            		$("#tb_departments").bootstrapTable('updateCell', {index:index,field:field,value:tdValue});
		            	}
		            	$element.attr('contentEditable', 'inherit');
		            	$element.unbind( 'blur' ); 
		            });
	            }
	        },
		});
	}

	return oTableInit;
};

//查询功能调用该方法
function table_prescription_search(){
	var address=$("#address").val()+'/table/bootstrap_table_test';
	$('#tb_departments').bootstrapTable('refresh', {url: address});
}

function row_append(){
	$('#tb_departments').bootstrapTable('insertRow',{
		index : 0,
		row : {
			Name :'123',
			ParentName :'123'
		}
	})
}

function row_del(){
	$('#tb_departments').bootstrapTable('removeSelectionId_CH');
}

function row_update(){
	var IdSelections=$("#tb_departments").bootstrapTable('getSelections');
	if(IdSelections.length!=1){
		swal({
            title: "提示",
            text: "请选择一条数据进行操作"
        });
		return
	}
	alert($('#tb_departments').bootstrapTable('getSelectionId_CH'))
}

//获取页面元素高度和宽度
function logheight(){
	var o = document.getElementById("table");
	var h = o.offsetHeight; //高度
	var w = o.offsetWidth; //宽度
	
	return h;
}


//接口测试方法
function restful_delete(){
	var address=$("#address").val()+'/table/delete/a.txt';
	$.ajax({
        url: address,
        type : "post",    // 此处发送的是POST请求
        data : {
            _method : "delete",   // 将请求转变为PUT请求
        },
        success : function(data){
        	alert(data)
            console.log(1);
        },
        dataType : "json",
        error : function(data){
        	alert("出错了")
        }
    })
}
//接口测试方法
function restful_put(){
	var address=$("#address").val()+'/table/put/a.txt';
	$.ajax({
        url: address,
        type : "post",    // 此处发送的是POST请求
        data : {
            _method : "put",   // 将请求转变为PUT请求
        },
        success : function(data){
            alert(data)
            console.log(1);
        },
        dataType : "json",
        error : function(data){
        	alert("出错了")
        }
    })
}

function _excel() {  
    //get请求，可以传递参数，比方说我这里就传了一堆卷号，我只生成传过去的这堆卷号的检验记录  
    //参数rollNumbers的细节就不展示了，业务相关  
    window.location.href = $("#address").val()+'/table/';  
}  

function aaa() {
	oTable.Init();
}

function table_height(){
	var _height=0;
	//获取父级窗口高度
	_height=$(window.parent.window).height()-55-150-55-70;
//	if(_height<300){
//		_height=300;
//	}
	return _height;
}
