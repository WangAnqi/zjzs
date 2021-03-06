﻿$(document).ready(function() {
	$('#book_time').html(book_time);
});

//CSS格式调整
a = $('#front');
a.height(0.25*a.width());

a = $("#sign");
topPos = 1.4*$('#front').height();
a.css("top", topPos);
a.css("font-size", 0.03*document.body.clientWidth);
a.css("left", 0.63*document.body.clientWidth-0.5*a.width());
a = $(".signIcon");
a.width(0.05*document.body.clientWidth);
a.height(0.05*document.body.clientWidth);

a = $('#Zongti');
a.height(a.width());

a = $('#block_A');
a.width(a.height()/0.76);
left = 0.5*a.parent().width() - 0.5*a.width();
a.css("left", left);

a = $('#block_B');
a.width(0.44*a.height());

a = $('#block_C');
a.width(0.45*a.height());

a = $('#Friend_block');
a.width(4.45*a.height());
left = 0.5*a.parent().width() - 0.5*a.width();
topTemp = $('#block_A').height()+0.5*a.height();
a.css("left", left);
a.css("top", topTemp);

a = $('#block_D');
a.width(2.5*a.height());
left = 0.5*a.parent().width() - 0.5*a.width();
topTemp = $('#block_A').height() + 2 * $('#Friend_block').height();
a.css("left", left);
a.css("top", topTemp);

a = $('#block_E');
a.height(a.width()/5);
left = 0.5*a.parent().width() - 0.5*a.width();
topTemp = $('#block_A').height() + 2.5 * $('#Friend_block').height() + $('#block_D').height();
a.css("left", left);
a.css("top", topTemp);

a = $('#buttom');
b = $('#buttom_frame');
c = $('#buttom_frame a');
left = a.width()/2 - b.width()/2;
topTemp = 1.2*(a.height()/2 - b.height()/2);
b.css("left", left);
b.css("top", topTemp);
topTemp = (b.height()/2 - c.height()/2);
c.css("top", topTemp);


$("[id^=block] a").css("font-size", 0.04*document.body.clientWidth);
$("#info_Area").css("font-size", 0.03*document.body.clientWidth);

a = $("#alertFrame");


//CSS格式调整结束


//渲染界面数据和图片
//显示票数
$("#block_A a").html("A区(" + ticketLeft.A + ")");
$("#block_B a").html("B区(" + ticketLeft.B + ")");
$("#block_C a").html("C区(" + ticketLeft.C + ")");
$("#block_D a").html("D区(" + ticketLeft.D + ")");
$("#block_E a").html("E区(" + ticketLeft.E + ")");

//区域票数
ticketNum = new Array();
ticketNum = [ticketLeft.A,  ticketLeft.B, ticketLeft.C, ticketLeft.D, ticketLeft.E]
//区域标识
blockSign = new Array();
blockSign = ["A", "B", "C", "D", "E"]
//无票的选区
for (i = 0; i < 5; i++){
	if (ticketNum[i] == 0) {
		$("#block_" + blockSign[i]).css("background-image", "url(img/seat/block_"+blockSign[i]+"_empty"+".png)")
		$("#block_" + blockSign[i]).attr("class", "empty");
	}
}

//渲染结束
//提示信息



switch (stateCode){
	case 0: alertInfo("请点击图示区域进行选座");
			break;
	case 1: alertInfo("你选择的区域已满<br>请重新选座");
			break;
	case 2: alertInfo("选座超时<br>请重新选座");
			break;
	default: alertInfo("请点击图示区域进行选座");
}




var selected = 0;


$("[id^=block]").click(function(){
	if (this.className == "empty"){
		alertInfo("所选区域已满<br>请选择其他区域");
		return;
	}
	if (selected != 0)
		$('#' + selected).css("background-image", "url(img/seat/"+selected+".png)");
	selected = $(this).attr("id");
	$(this).css("background-image", "url(img/seat/"+selected+"_selected.png)");
	$("#seat_info").html(selected[6]+"区");
	var avaiNumber;
	switch(selected[6]){
		case 'A': avaiNumber = ticketLeft.A; break;
		case 'B': avaiNumber = ticketLeft.B; break;
		case 'C': avaiNumber = ticketLeft.C; break;
		case 'D': avaiNumber = ticketLeft.D; break;
		case 'E': avaiNumber = ticketLeft.E; break;
	}
	$("#avaiNumber").html(avaiNumber);
})




$("#buttom_frame").click(function(){
	var url = window.location.href;
	if (selected != 0){
		$("#submitArea").html('<form name=myForm><input type=hidden name=ticket_id><input type=hidden name=seat><input type=hidden name=stateCode></form>');
	    var myForm=document.forms['myForm'];
	    myForm.action=url;
	    myForm.method='POST';
	    myForm.ticket_id.value=ticket_id;
	    myForm.seat.value=$("#seat_info").html();
	    myForm.stateCode.value = stateCode;
	    myForm.submit();
	}
	else
		alertInfo("你还未选择任何座位");
})

function alertInfo(info){
	$("#alertInfo").html(info);
	$("#alertFrame").css("display", "inherit");
	$("#alertFrame").animate({
		top: '40%',
		opacity: '.9',
	}, 1000, function(){
		setTimeout(function(){
			$("#alertFrame").animate({
				top: '25%',
				opacity: '0',
			}, 600, function(){
				$("#alertFrame").css("display", "none");
			})
		}, 1500);
	});
}

