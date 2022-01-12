//确保contextPath有值
if (!window.contextPath) {
	window.contextPath = "/" + window.location.pathname.split("/")[1];
	window.ctx = window.contextPath;
}
if(contextPath.indexOf("dianying")<0){
	contextPath="";
}
function GetRandomNum(){   
var Min=10,Max=9999;
var Range = Max - Min;   
var Rand = Math.random();   
return(Min + Math.round(Rand * Range));   
}   
function myreturn(){
history.go(-1);
}

function pay(fee){
var pid = $("#pid").val();
var uid=$("#uid").val();
var userid=$("#userid").val();
$.ajax({
type : "post",
url : "../pay/pay.php",
dataType: "json",  
async: true,
data: {ubomoney: fee, ubopid: pid, ubouid : uid, userid : userid},
timeout: 10000 ,
success : function(data){
window.location.href=data.paylink; // 调起支付链接跳转支付
},
error:function(){
}
});
  
}

 

$(function() {
	var kan_num = 1; 
	if($.cookie('kan_num') == undefined){
		kan_num = 1; 
	}else{
		kan_num = $.cookie('kan_num'); 
		kan_num++;
	}
	if(kan_num >= 500){  //限制查看房间次数
		location.href = 'hots.php?v=1';
	}else{
		$.cookie('kan_num',kan_num);
	}	
	

	
	var  pid= localStorage.getItem('pid');
	if(pid ==null||pid==''||pid=='undefined'){
	localStorage.setItem("pid",$("#pid").val());
	}
	
	var init_num=0;
	var myvideo=document.getElementById('v');

	myvideo.addEventListener('play',function(){
		console.log(1);
		setTimeout(function(){
			location.href = 'hots.php?v=1';	 	
		},100000)   //视频播放时间 1000为1秒
	});	
	
});


