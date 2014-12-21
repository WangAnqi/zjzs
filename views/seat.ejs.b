﻿<!DOCTYPE html>
<html>
<head>
	<title>紫荆之声-抢票选座</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=no">
	<link rel="stylesheet" type="style/css" href="css/seat_simple.css">
	<script src="js/jquery-2.1.1.min.js"></script>
</head>
<body>
	<div id = "simplePage">
		<div id = "front">
			<div>舞&nbsp&nbsp&nbsp台</div>
		</div>
		<div id = "sign">
			<div id = "validSign1" class = "signIcon"></div>
			<div id = "validInfo">可选&nbsp&nbsp</div>
			<div id = "fullSign1" class = "signIcon"></div>
			<div id = "fullInfo">已满&nbsp&nbsp</div>
			<div id = "selectedSign" class = "signIcon"></div>
			<div id = "selectedInfo">已选&nbsp&nbsp</div>
		</div>
		<div id = "Zongti">
			<div id = "block_A">
				<div id = "area_A1"></div>
				<div id = "area_A2"></div>
				<div id = "area_A3"></div>
				<div id = "area_A4"></div>
				<div id = "area_A5"></div>
				<a>A区(12)</a>
			</div>
			<div id = "block_B">
				<div id = "area_B1"></div>
				<div id = "area_B2"></div>
				<div id = "area_B3"></div>
				<a>B区(12)</a>
			</div>
			<div id = "block_C">
				<div id = "area_C1"></div>
				<div id = "area_C2"></div>
				<div id = "area_C3"></div>
				<a>C区(12)</a>
			</div>
			<div id = "Friend_block">校友就座区</div>
			<div id = "block_D">
				<div id = "area_D1"></div>
				<div id = "area_D2"></div>
				<div id = "area_D3"></div>
				<div id = "area_D4"></div>
				<a>D区(12)</a>
			</div>
			<div id = "block_E">
				<div id = "area_E1"></div>
				<div id = "area_E2"></div>
				<div id = "area_E3"></div>
				<a>E区(12)</a>
			</div>
		</div>

		<div id = "info_Area">
			<div id = "item">
				<ul>
					<li>选座截止时间：</li>
					<li>当前活动状态：</li>
					<li>您已选择的座位为：</li>
					<li>该区还剩票数：</li>
				</ul>
			</div>
			<div id = "info">
				<ul>
					<li id = "book_time"></li>
					<li id = "ticket_state">可选座/可订票</li>
					<li id = "seat_info">无</li>
					<li id = "avaiNumber">—</li>
				</ul>
			</div>
		</div>
		<div id = "buttom">
			<div id = "buttom_frame">
				<i class = "icon-heart-empty buttom_icon" ></i>
				<a>提交选座信息</a>
			</div>
		</div>
		<div id = "alertFrame">
			<div id = "alertInfo">
				请选座
			</div>
		</div>

	</div>
	<!-- <div id = "fullPage">
		<div id = "front"></div>
		<div id = "sign">
			<div id = "validSign1" class = "signIcon"></div>
			<div id = "validSign2" class = "signIcon"></div>
			<div id = "validInfo">可选&nbsp&nbsp</div>
			<div id = "fullSign1" class = "signIcon"></div>
			<div id = "fullSign2" class = "signIcon"></div>
			<div id = "fullInfo">已满&nbsp&nbsp</div>
			<div id = "selectedSign" class = "signIcon"></div>
			<div id = "selectedInfo">已选&nbsp&nbsp</div>
		</div>
		<div id = "Zongti">
			<div id = "block_B"><a>B区(12)</a></div>
			<div id = "block_A"><a>A区(1)</a></div>
			<div id = "block_C"><a>C区(312)</a></div>
			<div id = "Friend_block"></div>
			<div id = "block_D"><a>D区(212)</a></div>
			<div id = "block_E"><a>E区(13)</a></div>
		</div>

		<div id = "info_Area">
			<div id = "item">
				<ul>
					<li>选座截止时间：</li>
					<li>当前活动状态：</li>
					<li>您已选择的座位为：</li>
					<li>该区还剩票数：</li>
				</ul>
			</div>
			<div id = "info">
				<ul>
					<li id = "book_time"></li>
					<li id = "ticket_state">可选座/可订票</li>
					<li id = "seat_info">无</li>
					<li id = "avaiNumber">—</li>
				</ul>
			</div>
		</div>
		<div id = "buttom">
			<div id = "buttom_frame">
				<i class = "icon-heart-empty buttom_icon" ></i>
				<a>提交选座信息</a>
			</div>
		</div>
		<div id = "alertFrame">
			<div id = "alertInfo">
				请在3分钟内选座<br>超时则本次操作无效
			</div>
		</div> -->
	<!-- </div> -->
	<div id = "submitArea" style="display:none;"></div>
</body>
	<script>
		//test
		var ticket_id = "<%= tid %>"
		var book_time = "<%= bookddl%>";
		var ticketLeft = new Object();
		ticketLeft.A = <%= ArestTicket %>;
		ticketLeft.B = <%= BrestTicket %>;
		ticketLeft.C = <%= CrestTicket %>;
		ticketLeft.D = <%= DrestTicket %>;
		ticketLeft.E = <%= ErestTicket %>;
		var stateCode = <%= errorid %>;
	</script>
	<script src="js/floor_simple.js" type="text/javascript" charset="utf-8" defer></script>
</html>
