$(document).ready(function(){
	//更新父类的iframe高度
	parent.iframewh(logheight());
	
	//折叠目录树切换图标效果
	$(".panel .panel-heading").click(function(e){
        /*切换折叠指示图标*/
        $(this).find("span").toggleClass("glyphicon-chevron-down");
        $(this).find("span").toggleClass("glyphicon-chevron-up");
        
        
        //展开本目录，关闭其他
        //关闭所有
//        $(".panel .panel-heading").attr("class","panel-heading collapsed");
//        $(".panel .panel-heading").attr("aria-expanded","false");
//        
//        $(".panel .panel-collapse").attr("class","panel-collapse collapse");
//        $(".panel .panel-collapse").attr("aria-expanded","false");
////        $(".panel .panel-collapse").attr("style","height: 0px;");
//        
//        //展开本目录
//        $(this).attr("class","panel-heading");
//        $(this).attr("aria-expanded","true");
//        var name= $(this).attr("data-target");
//        $(name).attr("class","panel-collapse collapse in");
//        $(name).attr("aria-expanded","true");
////        $(name).attr("style","height: 0px;");
    });
	
});

//获取页面元素高度和宽度
function logheight(){
	var o = document.getElementById("grouptags");
	var h = o.offsetHeight; //高度
	var w = o.offsetWidth; //宽度
	return h;
}

