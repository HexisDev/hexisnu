
$(document).ready(function(){
	$(".spoiler-btn").click(function(){
		$(".spoiler-body").toggle(100);
		$(".glyphicon").toggleClass("glyphicon-chevron-right");
		$(".glyphicon").toggleClass("glyphicon-chevron-down");
	});
});