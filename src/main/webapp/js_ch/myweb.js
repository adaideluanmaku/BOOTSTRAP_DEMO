var testheight = 100;//滚动条上间距

$(document).ready(function(){
	myscrollTop();
	
//	$("#CH_PRO").click(function(){
//		iframeurl("/myweb/logtag");
//	});
//	
//	$("#CH_PRO").click(function(){
//		iframeurl("/myweb/logtag");
//	});
});

//滚动条向下滚动时，将导航栏置顶
function myscrollTop(){
	if($(this).scrollTop()> testheight){
		$("#daohang1").attr("class","navbar navbar-default navbar-fixed-top");
	}else{
		$("#daohang1").attr("class","navbar navbar-default");
	}

	$(window).scroll(function(){
		if($(this).scrollTop()> testheight){
			$("#daohang1").attr("class","navbar navbar-default navbar-fixed-top");
		}else{
			$("#daohang1").attr("class","navbar navbar-default");
		}
	});
}

//iframe载入新页面
function iframeurl(actionurl){
	$("#iframe_box").attr("src",$("#address").val()+actionurl)
}

//iframe自适应高度
function iframewh(aheight){
	$("#iframe_box").attr("style","height:"+aheight+"px;width:100%")
}


