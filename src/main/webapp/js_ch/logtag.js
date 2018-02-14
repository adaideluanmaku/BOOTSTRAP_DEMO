$(document).ready(function(){
	//更新父类的iframe高度
	parent.iframewh(logheight());
});

//获取页面元素高度和宽度
function logheight(){
	var o = document.getElementById("log");
	var h = o.offsetHeight; //高度
	var w = o.offsetWidth; //宽度
	return h;
}

