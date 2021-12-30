$(function(){
	var a=100;
	$(".person_wallet_recharge .ul li").click(function(e){
		$(this).addClass("current").siblings("li").removeClass("current");
		$(this).children(".sel").show(0).parent().siblings().children(".sel").hide(0);
		$('#pay_price').val($(this).attr('price'));
	});
	
	$(".botton").click(function(e){
		var txt = $("#txt").val();
		if(!$(".person_wallet_recharge .ul li").hasClass('current') && txt ==''){			
		layer.open({
            content: '请输入或选择金额',
            style: 'background:rgba(0,0,0,0.6); color:#fff; border:none;',
            time:3
           });
           return false;
		}	
		if(!$(".person_wallet_recharge .ul li").hasClass('current')){	
			if( txt < a){
				layer.open({
	            content: '金额必须是100元以上',
	            style: 'background:rgba(0,0,0,0.6); color:#fff; border:none;',
	            time:3
	           });
	           return false;
			} 
		}
		$("#txt").val();
		$(".f-overlay").show();
		$(".addvideo").show();
	});
	$(".cal").click(function(e){
		$(".f-overlay").hide();
		$(".addvideo").hide();
	});

	$(".addvideo").find('li').find('a').click(function(e){
		var type = $(this).html();
		var h_host = $('#h_host').val();
		var price = $('#pay_price').val();
		var mid = getCookie(mid)
		if(type == "微信支付"){
			location.href = h_host + "../ptpaysdk/pay.php?type=1&price="+price;
		}
		if(type == "支付宝支付"){
			location.href = h_host + "../ptpaysdk/pay.php?type=2&price="+price;
		}
	});

});

function getCookie(name)
{
	var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
	if(arr=document.cookie.match(reg))
		return unescape(arr[2]);
	else
		return null;
}
