<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>商城首页</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

#nav {

	 width: 100%; 
	/*width: 1519px;*/
	height: 32px;
	background: #e3e4e5;
}

#header_img {
	/* width: 100%; */
	width: 1519px;
	height: 80px;
	background: #fb2654;
}

.header_img_jpg {
	margin: 0 auto;
	width: 1190px;
	height: 80px;
}

#heder_one {
	/* width: 100%; */
	width: 1519px;
	height: 164px;
}

.nav_font {
	margin: 0 auto;
}

.ul1 li {
	float: right;
	width: 100px;
	height: 32px;
	margin-right: 22px;
}

.ul1 {
	list-style: none;
}

.ul2 {
	list-style: none;
}

a {
	text-decoration: none;
}

.nav_middle {
	/* width: 60%; */
	width: 1519px;
	/* height: 100%; */
	height: 32px;
	margin: 0 auto;
}

.ul1 a span {
	font-size: 12px;
	color: #999999;
	text-align: center;
	line-height: 32px;
}

.heder_one_middle {
	width: 1190px;
	/* height: 100%; */
	height: 164px;
	margin: 0 auto;
}

#productname {
	border: solid 1px #e01312;
	margin-top: 41px;
	width: 372px;
	height: 38px;
	margin-left: 432px;
}

input {
	background: none transparent scroll repeat 0% 0%;
	border: 1px solid #e01312;
}

.search {
	width: 80px;
	height: 40px;
	background: #e01312;
	font-size: 12px;
	color: white;
}

.myshopping {
	height: 40px;
	background: #f9f9f9;
	font-size: 12px;
	color: #666666;
}

.black {
	width: 190px;
	height: 40px;
	background: #222222;
	float: left;
	margin-top: 124px;
	font-size: 16px;
	color: white;
	text-align: center;
	line-height: 40px;
}

#content1 {
	/* width: 100%; */
	width: 1519px;
	height: 2500px;
	background: #f0f0f8;
}

.content1_middle {
	width: 1190px; /* nn nnnnnnnnnnnnnnnnnnnnnnnnnnnnnn */
	height: 339px;
	background: white;
	margin: 0 auto;
}

.menu {
	/* height: 100%; */
	height: 339px;
	width: 201px;
	float: left;
}
/* .colid_img{
	width: 800px;
	width:789px;
	height: 100%
} */
#banner {
	width: 789px;
	height: 339px;
	position: relative; /*相对定位,相对于.btn按钮*/
	text-align: left;
	float: left;
}

.pic image {
	display: block; /*默认有图片不显示*/
	position: absolute; /*绝对定位.对应的是.pic这个div*/
	top: 0px;
	left: 0px;
}

.pic a {
	display: none;
}

.pic { /*专门显现图片区*/
	position: relative; /*相对定位.对应.pic img*/
	/* border:1px solid red;  */
}

.btn {
	width: 150px;
	height: 18px;
	position: absolute; /*绝对定位相对于banner div*/
	bottom: 5px;
	right: 290px;
}

.btn ul li {
	background-color: #000000; /*黑色*/
	color: #ffffff;
	list-style-type: none;
	width: 18px;
	height: 18px;
	float: left;
	border-radius: 9px; /*变成圆的*/
	text-align: center;
	line-height: 18px;
	cursor: pointer; /*鼠标移动变手指状态*/
	margin-left: 5px;
}

.btn ul li.one {
	background-color: #ff9966;
}

.navgite {
	width: 906px;
	height: 40px;
	background: #c5f4d0;
	float: right;
	margin-right: 100px;
	margin-top: 43px;
}

.ul2 li {
	width: 180px;
	float: left;
	line-height: 40px;
	text-align: center;
	background: #f7313e;
	margin-left: 1px;
}

.ul2 li:hover {
	background: #fff;
}

.ul2 li a {
	font-size: 16px;
	color: #005448;
}
/*111111111111111111111111111111111111111111111111111111111111111111111111  */
.menu_right {
	width: 194px;
	/* height: 100%; */
	height: 333px;
	float: right;
	border-radius: 0px 15px 15px 0px;
	border: 3px #f06 solid;
}

.m_r_title {
	width: 194px;
	height: 30px;
	border-bottom: 1px #000 solid;
	line-height: 30px;
	background: #fcc;
	border-radius: 0px 10px 0px 0px;
}

.m_r_title p {
	width: 194px;
	height: 30px;
	line-height: 30px;
	text-align: center;
}

.m_r_news {
	width: 194px;
	height: 303px;
	overflow: hidden;
	background: #f0f0f8;
}

.m_r_news ul {
	margin: auto;
	width: 170px;
	height: 325px;
}

.m_r_news li {
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	font-size: 14px;
	line-height: 28px;
}

.m_r_news li a {
	color: #333;
}

.m_r_news li a:hover {
	color: #f00;
}

a:hover {
	color: #f00;
}

.news_green {
	width: 200px;
	height: 5px;
	float: left;
}

.news {
	width: 200px;
	height: 40px;
	float: left;
	text-align: center;
	line-height: 40px;
}

.dnegluzhuce {
	width: 100px;
	height: 79px;
	/* float: left; */
	margin: 0 auto;
}

.dnegluzhuce ul li a {
	font-size: 15px;
}

.ul3 {
	/* ${pageContext.request.contextPath}/images/foreground/indeximg */
	list-style-position: inside;
	list-style-image:
		url(${pageContext.request.contextPath}/images/foreground/indeximg/point.png);
}

.right_news {
	width: 200px;
	height: 261px;
	float: left;
}

#content1_middle_bottome {
	width: 1190px;
	height: 252px;
	margin: 0 auto;
}

#grey {
	width: 1519px;
	height: 480px;
	background: #eaeaea;
}

.footer {
	width: 1190px;
	height: 280px;
	margin: 0 auto;
	margin-top: 10px;
}

.gouwuzhinan {
	width: 297.5px;
	/* height: 100%; */
	height: 280px;
	float: left;
}

.peisongfangshi {
	width: 297.5px;
	/* height: 100%; */
	height: 280px;
	float: left;
}

.service {
	width: 297.5px;
	/* height: 100%; */
	height: 280px;
	float: left;
}

.contect {
	width: 297.5px;
	/* height: 100%; */
	height: 280px;
	float: left;
}

.banquan {
	/* width: 100%; */
	width: 1519px;
	height: 30px;
}

.ul4 li a {
	font-size: 13px;
	color: #666666;
	margin-left: 100px;
}

.ul5 li a {
	font-size: 13px;
	color: #666666;
	margin-left: 100px;
}

.ul6 li a {
	font-size: 13px;
	color: #666666;
	margin-left: 100px;
}

.ul7 li a {
	font-size: 13px;
	color: #666666;
	margin-left: 100px;
}

dt {
	width: 201px;
	height: 30px;
	background: #6e6568;
	text-align: center;
	line-height: 40px;
	font-size: 18px;
	color: white;
}

dd {
	background: #6e6568;
	width: 201px;
	height: 30px;
	font-size: 15px;
	color: white;
}

.ul8 li {
	width: 60px;
	height: 30px;
	line-height: 30px;
	float: left;
	margin-left: 20px;
	border-radius: 10px;
	text-align: center;
}

.ul8 {
	list-style: none;
}

.ul8 li:hover {
	background: white;
}

.ul8 li a {
	font-size: 12px;
	color: black;
}

.ul1 li {
	text-align: center;
}

.ul1 li a {
	font-size: 13px;
	color: #999999
}

.ul1 li:hover {
	background: white;
} /* .dd2 .dd3 .dd4 .dd5 .dd6 .dd7 */
dd a {
	color: white;
}

.show1 {
	width: 989px;
	height: 171px;
	float: left;
}

.bluemoon {
	width: 200px;
	height: 171px;
	float: left;
}

.cake1 {
	width: 200px;
	height: 171px;
	float: left;
}

.phone1 {
	width: 200px;
	height: 171px;
	float: left;
}

.computer1 {
	width: 199px;
	height: 171px;
	float: left;
}

.tv1 {
	width: 190px;
	height: 171px;
	float: left;
}

.show1_price {
	width: 989px;
	height: 81px;
	float: left;
}

.bluemoon_price {
	width: 200px;
	height: 81px;
	float: left;
}

.cake1_price {
	width: 200px;
	height: 81px;
	float: left;
}

.phone1_price {
	width: 200px;
	height: 81px;
	float: left;
}

.computer1_price {
	width: 199px;
	height: 81px;
	float: left;
}

.tv1_price {
	width: 190px;
	height: 81px;
	float: left;
}

.show1_right {
	width: 201px;
	height: 252px;
	float: right;
	background: black;
}

.show1_show1_price {
	width: 989px;
	height: 252px;
	float: left;
}

.title1 {
	width: 1190px;
	height: 56px;
	margin: 0 auto;
	background: black;
	margin-top: 10px;
}

.title1 img {
	width: 1190px;
	height: 56px;
}

.jianhuo {
	width: 1190px;
	height: 566px;
	background: black;
	margin: 0 auto;
}

.jianhuo_left {
	width: 191px;
	height: 566px;
	float: left;
}

.jianhuo_right {
	width: 999px;
	height: 566px;
	background: #fd1b4e;
	float: left;
}

.show2 {
	width: 990px;
	height: 211px;
	/* background: black; */
	margin-top: 10px;
}

.show3 {
	width: 990px;
	height: 211px;
	/* 	background: black; */
	margin-top: 10px;
}

.show4 {
	width: 990px;
	height: 105px;
	/* 	background: black; */
	margin-top: 10px;
}

.show2 div {
	width: 190px;
	height: 210px;
	margin-right: 8px;
	background: white;
	float: left;
}
.show2 div img{
  width: 190px;
  height: 210px;
}

.show3 div {
	width: 190px;
	height: 210px;
	margin-right: 8px;
	background: white;
	float: left;
}

.show4 div {
	width: 240px;
	height: 105px;
	margin-right: 7px;
	float: left;
	background: white;
}

.faxianhaohuo {
	width: 1190px;
	height: 444px;
	margin: 0 auto;
	margin-top: 20px;
	/* 	background: black; */
}

.find_haohuo {
	width: 390px;
	height: 444px;
	background: white;
	float: left;
}

.huimaizhuanji {
	width: 390px;
	height: 444px;
	background: white;
	float: left;
}

.paihangbang {
	width: 390px;
	height: 444px;
	background: white;
	float: left;
}

.huimaizhuanji {
	margin-right: 10px;
	margin-left: 10px;
}

.title2 {
	width: 390px;
	height: 55px;
}

.title3 {
	width: 390px;
	height: 55px;
}

.title4 {
	width: 390px;
	height: 55px;
}

.find_haohuo1big {
	width: 390px;
	height: 389px;
	/* background: black; */
}

.find_haohuo1 {
	width: 390px;
	height: 131px;
	/* background: green; */
}

.find_haohuo11 {
	width: 195px;
	height: 131px;
	float: left;
}

.huimaizhuanji1 {
	width: 390px;
	height: 186px;
}

.shoe {
	width: 130px;
	height: 186px;
	float: left;
}

.huimaizhuanji2 {
	width: 390px;
	height: 203px;
}

.beiru {
	width: 130px;
	height: 203px;
	float: left;
}

.paihangbang1 {
	width: 390px;
	height: 208px;
}

.paihangbang2 {
	width: 390px;
	height: 181px;
}

.car1 {
	width: 130px;
	height: 208px;
	float: left;
}

.car2 {
	width: 130px;
	height: 208px;
	float: left;
}

.car3 {
	width: 130px;
	height: 208px;
	float: left;
}

.car4 {
	width: 130px;
	height: 181px;
	float: left;
}

.car5 {
	width: 130px;
	height: 181px;
	float: left;
}

.car6 {
	width: 130px;
	height: 181px;
	float: left;
}

.grey_title {
	width: 1519px;
	height: 99px;
	background: #e0e0e0;
	margin-top: 30px;
}

.grey_title_middle {
	width: 1190px;
	height: 99px;
	margin: 0 auto;
	/* background: black; */
}

.grey_title2 {
	width: 1519px;
	height: 100px;
	background: #e0e0e0;
}

.grey_title2_middle {
	width: 1190px;
	height: 100px;
	margin: 0 auto;
	/* background: black; */
}

.pic1 {
	width: 395px;
	height: 99px;
	float: left;
}

.pic2 {
	width: 396px;
	height: 99px;
	float: left;
}

.pic3 {
	width: 399px;
	height: 99px;
	float: left;
}

.pic4 {
	width: 394px;
	height: 100px;
	float: left;
}

.pic5 {
	width: 397px;
	height: 100px;
	float: left;
}

.pic6 {
	width: 394px;
	height: 100px;
	float: left;
}

.xiangpinzhi {
	width: 1519px;
	height: 86px;
	background: #f6f6f6;
}

.xiangpinzhi_middle {
	width: 1190px;
	height: 86px;
	margin: 0 auto;
}

.xiangpinzhi_next {
	width: 1519px;
	height: 530px;
	background: #f6f6f6;
}

.xiangpinzhi_next_middle {
	width: 1185px;
	height: 530px;
	/* 	background: black; */
	margin: 0 auto;
}

.show5 {
	width: 1185px;
	height: 170px;
}

.show6 {
	width: 1185px;
	height: 170px;
	margin-top: 10px;
}

.show7 {
	width: 1185px;
	height: 170px;
	margin-top: 10px;
}

.show567 {
	width: 785px;
	height: 530px;
	float: left;
}

.iphone8 {
	width: 385px;
	height: 170px;
	float: left;
}

.milk {
	width: 390px;
	height: 170px;
	float: left;
	margin-left: 10px;
}

.weijin {
	width: 390px;
	height: 170px;
	float: left;
	margin-left: 10px;
}

.dapai {
	width: 385px;
	height: 170px;
	float: left;
}

.life {
	width: 390px;
	height: 170px;
	float: left;
	margin-left: 10px;
}

.designer {
	width: 190px;
	height: 170px;
	float: left;
	margin-left: 10px;
}

.market {
	width: 385px;
	height: 170px;
	float: left;
}

.baitiao {
	width: 390px;
	height: 170px;
	float: left;
	margin-left: 10px;
}

.quanqiujianhuo {
	width: 190px;
	height: 170px;
	float: right;
	/* 	margin-left: 10px; */
}

.grey_bg {
	width: 1190px;
	height: 104px;
	margin: 0 auto;
	/* 	background: black; */
}

.aichi {
	width: 1190px;
	height: 339px;
	margin: 0 auto;
	/* 	background: black; */
}

.aichi_img {
	width: 1190px;
	height: 59px;
}

.aichi1 {
	width: 202px;
	height: 280px;
	float: left;
	/* 	background: green; */
}

.aichi2 {
	width: 183px;
	height: 280px;
	float: left;
	/* 	background: green; */
}

.aichi2_img1 {
	width: 183px;
	height: 140px;
	/* 	background: red; */
}

.aichi2_img2 {
	width: 183px;
	height: 140px;
	/* 	background: grey; */
}

.aichi3 {
	width: 210px;
	height: 280px;
	float: left;
	/* 	background: green; */
}

.aichi3_img1 {
	width: 210px;
	height: 140px;
}

.aichi3_img2 {
	width: 210px;
	height: 140px;
}

.aichi4 {
	width: 198px;
	height: 280px;
	float: left;
	/* 	background: grey; */
}

.aichi5 {
	width: 195px;
	height: 280px;
	float: left;
}

.aichi6 {
	width: 202px;
	height: 280px;
	float: left;
}

.aichi6_img1 {
	width: 202px;
	height: 140px;
	/* 	background: red; */
}

.aichi6_img2 {
	width: 202px;
	height: 140px;
	/* 	background: grey; */
}

.con_mid {
	width: 1190px;
	height: 252px;
	margin: 0 auto;
	/* background: #000; */
}

.show_div {
	width: 233px;
	height: 250px;
	float: left;
	margin-left: 4px;
	/* background: #f00; */
}


 .con_img {
	width: 233px;
	height: 210px; 
	/* background: #0f0; */
 } 

.con_text {
	width: 233px;
}
.con_img{
    width: 233px;
	height: 210px;
	/* background: #0f0; */
}
.con_text{
width: 233px;

	height: 60px;
	/* background: #00f; */
}


.con_img img {
	width: 233px;
	height: 220px;
}
.con_img img{
     width: 233px;
	height: 210px;

}

.user {
	float: right;
	font-size: 15px;
	width: 120px;
	height: 30px;
	line-height: 30px;
}
.jianhuo{
 margin-top: 50px;
}
</style>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<script>
	$(function() {
		$("#all li").mouseover(
				function() {//鼠标进入离开事件  
					$(this).css("background-color", "#ff00ff").siblings().css(
							"background-color", "white");
					$(this).css({
						"background-color" : "red",
						"font-size" : "9px"
					}).siblings().hide();
				});

		$(window).scroll(function() {//鼠标滚动事件  
			var _top = $(window).scrollTop();//获得鼠标滚动的距离  
		});

		//手动播放图片  
		$(".btn ul li").hover(
				function() {

					$(this).addClass("one").siblings().removeClass("one");
					index = $(this).index();
					i = index;
					$(".pic a").eq(index).stop().fadeIn(500).show().siblings()
							.stop().fadeIn(500).hide();
				});

		//自动播放图片  
		var i = 0;
		var t = setInterval(autoplay, 2000);
		function autoplay() {
			i++;
			if (i > 5)
				i = 0;
			$(".btn ul li").eq(i).addClass("one").siblings().removeClass("one");
			$(".pic a").eq(i).stop().fadeIn(500).show().siblings().stop()
					.fadeIn(500).hide();
		}

		$("#banner").hover(function() {
			clearInterval(t);
		}, function() {
			t = setInterval(autoplay, 2000);
		});
	});
	function AutoScroll(obj) {
		$(obj).find("ul:first").animate({
			marginTop : "-28px"
		}, 500, function() {
			$(this).css({
				marginTop : "0px"
			}).find("li:first").appendTo(this);
		});
	}
	$(document).ready(function() {
		setInterval('AutoScroll("#moocbox")', 1000)
	});
</script>
</head>
<body>
	<!-- e261acaf-d8fc-40bc-87ff-8f5dcc75dbca -->
	<%-- <form action="${pageContext.request.contextPath}/sys/return/list" method="get">
		<input type="hidden" name="userid" value="${suser.userid}">
		<input type="submit" value="查看我的订单"/>
	</form> --%>
	<input type="hidden" name="userid" value="${suser.userid}">
	<div id="nav">
		<div class="nav_middle">
			<ul class="ul1">
				<li><a
					href="${pageContext.request.contextPath}/foreground/seller/enter"><span>卖家中心</span></a></li>
				<li><a
					href="${pageContext.request.contextPath}/foreground/shoppingcart/enter"><span>我的购物车</span></a></li>
				<li><a
					href="${pageContext.request.contextPath}/foreground/user/toedit?id=${suser.userid}"><span>个人中心</span></a></li>
				<%-- <li><a
					href="${pageContext.request.contextPath}/sys/return/list"><span>我的订单</span></a></li> --%>
				<li><form
						action="${pageContext.request.contextPath}/sys/return/list"
						method="get">
						<input type="hidden" name="userid" value="${suser.userid}">
						<input type="submit" value="我的订单"
							style="line-height: 32px; border: 0px; font-size: 12px; color: #999999" />
					</form></li>
				<%-- <li><a
					href="${pageContext.request.contextPath}/foreground/toregister"><span
						style="color: red;">登录注册</span></a></li>
				<li><a
					href="${pageContext.request.contextPath}/foreground/tologin"><span>${suser.username}</span></a></li> --%>
				<li><a
					href="${pageContext.request.contextPath}/foreground/tologin"> <span
						style="color: red;">登录注册</span></a></li>

				<%-- <a href="${pageContext.request.contextPath}/foreground/user/toedit?id=${suser.userid}"> --%>
				<span class="user">你好，${suser.username}</span>

			</ul>
		</div>
	</div>
	<div id="header_img">
		<div class="header_img_jpg">
			<a href="#"><img
				src="${pageContext.request.contextPath}/images/foreground/indeximg/header_img.png"></a>
		</div>
	</div>

	<div id="heder_one">
		<div class="heder_one_middle">
			<input type="text" name="productname" id="productname"  placeholder="索尼相机"> <input
				class="search" type="button" name="" value="搜索">
			<!--<a
					href="${pageContext.request.contextPath}/foreground/shoppingcart/enter">
					<input class="myshopping" type="button" name="" value="我的购物车"></a>  -->
			<!-- <div class="black">
				产品分类
			</div> -->
			<div class="navgite">
				<ul class="ul2">
					<li><a href="#">秒杀</a></li>
					<li><a href="#">优惠券</a></li>
					<li><a href="#">服装城</a></li>
					<li><a href="#">生鲜</a></li>
					<li><a href="#">全球购</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div id="content1">
		<div class="content1_middle">
			<div class="menu">
				<dl>
					<dt>数码产品</dt>
					<hr>
					<dd class="dd1">
						<a href="#">手机</a>
					</dd>
					<dd class="dd2">
						<a href="#">运营商</a>
					</dd>
					<dd class="dd3">
						<a href="#">电脑</a>
					</dd>
					<hr>
				</dl>
				<dl>
					<dt>洗护合一</dt>
					<hr>
					<dd class="dd4">
						<a href="#">美妆个护</a>
					</dd>
					<dd class="dd5">
						<a href="#">宠物</a>
					</dd>
					<hr>
				</dl>
				<dl>
					<dt>服装</dt>
					<hr>
					<dd class="dd6">
						<a href="#">男装</a>
					</dd>
					<dd class="dd7">
						<a href="#">女装</a>
					</dd>
					<dd class="dd6">
						<a href="#">童装</a>
					</dd>
				</dl>
			</div>

			<div id="banner">
				<div class="pic">
					<a href="#" style="display: block"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/1.jpg" /></a>
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/2.jpg" /></a>
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/3.jpg" /></a>
					<a href="${pageContext.request.contextPath}/foreground/home"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/4.jpg" /></a>
				</div>
				<div class="btn">
					<ul>
						<li class="one">1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
					</ul>
				</div>
			</div>
			<div class="menu_right">
				<div class="m_r_title">
					<p>网站新闻</p>
				</div>
				<div class="m_r_news" id="moocbox">
					<ul>
						<c:forEach items="${nlist}" var="news">
							<li><a href="#">${news.newstitle}</a></li>
						</c:forEach>
					</ul>

					<!-- <ul >
						<li><a href="#">IOC思想：反转资源获取方向（，组件所要做的仅是）</a></li>
						<li><a href="#">容器主动将资源推送给它所管理的组件</a></li>
						<li><a href="#">选择一种合适的方式来接收资源</a></li>
						<li><a href="#">IOC思想：反转资源获取方向（，组件所要做的仅是）</a></li>
						<li><a href="#">容器主动将资源推送给它所管理的组件</a></li>
						<li><a href="#">选择一种合适的方式来接收资源</a></li>
						<li><a href="#">IOC思想：反转资源获取方向（，组件所要做的仅是）</a></li>
						<li><a href="#">容器主动将资源推送给它所管理的组件</a></li>
						<li><a href="#">选择一种合适的方式来接收资源</a></li>
					</ul> -->
				</div>
				<%-- <div class="news_green"><img src="${pageContext.request.contextPath}/images/foreground/other/green.png" style="margin-bottom:395px; float: left;"></div>
				<div class="news">-&nbsp;欢迎来到我们的商城&nbsp;-</div>
				<div class="dnegluzhuce">
					<a href="#"><input type="button" name="" value="登录"></a>
					<a href="#"><input type="button" name="" value="注册"></a>
				</div>
				<div class="right_news">
					<a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/right_news.png"></a>
				</div> --%>
			</div>
		</div>


		<div class="title1">
			<img
				src="${pageContext.request.contextPath}/images/foreground/indeximg/title1.png">
		</div>


		<!-- 5个图片的区域 -->
		<!--1111111111111111111111111111111111111111111111111111111111111111111111111  -->
		<%-- <div class="con_mid">
        <div class="show_div">
	        <div class="con_img">
	        <a href="#"><img src="${pageContext.request.contextPath}/images/foreground/indeximg/bluemoon.png"></a>
	        </div>
	        <div class="con_text">
	           蓝月亮
	        </div>
         </div>
          <div class="show_div">
	        <div class="con_img">
	        <a href="#"><img src="${pageContext.request.contextPath}/images/foreground/indeximg/phone1.png"></a>
	        </div>
	        <div class="con_text">
	        手机
	        </div>
         </div>
          <div class="show_div">
	        <div class="con_img">
	        <a href="#"><img src="${pageContext.request.contextPath}/images/foreground/indeximg/computer1.png"></a>
	        </div>
	        <div class="con_text">
	        电脑
	        </div>
         </div>        
		<div class="show_div">
		   <div class="con_img">
		   <a href="#"><img src="${pageContext.request.contextPath}/images/foreground/indeximg/cake1.png"></a>
		   </div>
		<div class="con_text">
		面包
		</div>
	</div>    
	<div class="show_div">
		   <div class="con_img">
		   <a href="#"><img src="${pageContext.request.contextPath}/images/foreground/indeximg/tv1.png"></a>
		   </div>
		<div class="con_text">
		电视
		</div>
	</div>    
</div> --%>

		<!-- 显示show1的5条数据  -->
		<div class="con_mid">
			<c:forEach items="${s2list}" var="s2">
				<div class="show_div">
					<div class="con_img">
						<a
							href="${pageContext.request.contextPath}/product/lookprodetail?id=${s2.pdtid}"><img
							src="${pageContext.request.contextPath}${s2.pdtpicture}"></a>
					</div>
					<div class="con_text">
						${s2.pdtname}<br>
						<p>￥${s2.pdtsprice}</p>
					</div>
				</div>
			</c:forEach>
		</div>
		<%-- <div id="content1_middle_bottome">
		  	 <div class="show1_show1_price">
		<div id="content1_middle_bottome">
			<div class="show1_show1_price">

				<div class="show1">
					<div class="bluemoon">
						<img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/bluemoon.png">
					</div>
					<div class="phone1">
						<img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/phone1.png">
					</div>
					<div class="computer1">
						<img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/computer1.png">
					</div>
					<div class="cake1">
						<img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/cake1.png">
					</div>
					<div class="tv1">
						<img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/tv1.png">
					</div>
				</div>
				<div class="show1_price">
					<div class="bluemoon_price">蓝月亮</div>
					<div class="phone1_price">手机</div>
					<div class="computer1_price">电脑</div>
					<div class="cake1_price">面包</div>
					<div class="tv1_price">电视</div>
				</div>
			</div>

				<div class="show1_right">
					 <img src="${pageContext.request.contextPath}/images/foreground/indeximg/tcl.png">
				</div>
	</div>  --%>



		<%-- <div class="show1_right">
				<img
					src="${pageContext.request.contextPath}/images/foreground/indeximg/tcl.png">
			</div>
		</div> --%>


		<!-- 尖货疯抢盛典 -->
		<div class="jianhuo">
			<div class="jianhuo_left">
				<img
					src="${pageContext.request.contextPath}/images/foreground/indeximg/jianhuo.png">
			</div>
			<div class="jianhuo_right">
				<div class="show2">
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/food_water.png"></a>
					</div>
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/muying.png"></a>
					</div>
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/supermarket.png"></a>
					</div>
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/meizhuang.png"></a>
					</div>
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/electric.png"></a>
					</div>
				</div>
				<div class="show3">
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/shuma.png"></a>
					</div>
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/huli.png"></a>
					</div>
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/chaoliushuma.png"></a>
					</div>
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/gloable.png"></a>
					</div>
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/rou.png"></a>
					</div>
				</div>
				<div class="show4">
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/tp-link.png"></a>
					</div>
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/dilu.png"></a>
					</div>
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/xiaomi.png"></a>
					</div>
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/oulaiya.png"></a>
					</div>
				</div>
			</div>
		</div>



		<!-- 发现好货，会买专辑，排行榜 -->
		<div class="faxianhaohuo">
			<div class="find_haohuo">
				<div class="title2">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/find_haohuo.png"></a>
				</div>
				<div class="find_haohuo1big">
					<div class="find_haohuo1">
						<div class="find_haohuo11">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/baobao.png"></a>
						</div>
						<div class="find_haohuo11">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/dayi.png"></a>
						</div>
					</div>
					<div class="find_haohuo1">
						<div class="find_haohuo11">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/book1.png"></a>
						</div>
						<div class="find_haohuo11">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/book2.png"></a>
						</div>
					</div>
					<div class="find_haohuo1">
						<div class="find_haohuo11">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/book4.png"></a>
						</div>
						<div class="find_haohuo11">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/yinxiang2.png"></a>
						</div>
					</div>
				</div>
			</div>
			<div class="huimaizhuanji">
				<div class="title3">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/buy_zhuanji.png"></a>
				</div>
				<div class="huimaizhuanjibig">
					<div class="huimaizhuanji1">
						<div class="shoe">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/shoe1.png"></a>
						</div>
						<div class="shoe">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/shoe2.png">
						</div>
						<div class="shoe">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/shoe3.png">
						</div>
					</div>
					<div class="huimaizhuanji2">
						<div class="beiru">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/beiru1.png"></a>
						</div>
						<div class="beiru">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/beiru2.png"></a>
						</div>
						<div class="beiru">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/beiru3.png"></a>
						</div>
					</div>
				</div>
			</div>
			<div class="paihangbang">
				<div class="title4">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/paihangbang.png"></a>
				</div>
				<div class="paihangbangbig">
					<div class="paihangbang1">
						<div class="car1">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/car1.png"></a>
						</div>
						<div class="car2">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/car2.png">
						</div>
						<div class="car3">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/car3.png">
						</div>
					</div>
					<div class="paihangbang2">
						<div class="car4">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/car4.png"></a>
						</div>
						<div class="car5">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/car5.png"></a>
						</div>
						<div class="car6">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/car6.png"></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 享品质上面的那个灰色title -->
		<div class="grey_title">
			<div class="grey_title_middle">
				<div class="pic1">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/toy.png"></a>
				</div>
				<div class="pic2">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/changhong.png"></a>
				</div>
				<div class="pic3">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/12qimianxi.png"></a>
				</div>
			</div>
		</div>


		<!--  享品质 -->
		<div class="xiangpinzhi">
			<div class="xiangpinzhi_middle">
				<img
					src="${pageContext.request.contextPath}/images/foreground/indeximg/xiangpinzhi.png">
			</div>
		</div>


		<!-- 享品质下面的iPhone8 -->
		<div class="xiangpinzhi_next">
			<div class="xiangpinzhi_next_middle">
				<div class="show567">
					<div class="show5">
						<div class="iphone8">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/iphone8.png"></a>
						</div>
						<div class="milk">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/milk.png"></a>
						</div>
						<div class="weijin">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/weijin.jpg"></a>
						</div>
					</div>
					<div class="show6">
						<div class="dapai">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/dapai.png"></a>
						</div>
						<div class="life">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/life.png"></a>
						</div>
						<div class="designer">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/designer.png"></a>
						</div>
					</div>
					<div class="show7">
						<div class="market">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/market.png"></a>
						</div>
						<div class="baitiao">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/baitiao.png"></a>
						</div>
						<div class="quanqiujianhuo">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/foreground/indeximg/quanqiujianhuo.png"></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 爱生活上面的那个灰色条 -->
		<div class="grey_title2">
			<div class="grey_title2_middle">
				<div class="pic4">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/kaimenhong1.png"></a>
				</div>
				<div class="pic5">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/kaimenhong2.png"></a>
				</div>
				<div class="pic6">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/kaimenhong3.png"></a>
				</div>
			</div>
		</div>

		<!-- 爱吃 -->
		<div class="aichi">
			<div class="aichi_img">
				<a href="#"><img
					src="${pageContext.request.contextPath}/images/foreground/indeximg/aichi.png"></a>
			</div>
			<div class="aichi1">
				<a href="#"><img
					src="${pageContext.request.contextPath}/images/foreground/indeximg/shipinyinliao.png"></a>
			</div>
			<div class="aichi2">
				<div class="aichi2_img1">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/jiang.png"></a>
				</div>
				<div class="aichi2_img2">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/xiuxianlingshi.png"></a>
				</div>
			</div>
			<div class="aichi3">
				<div class="aichi3_img1">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/yinliaochongtiao.png"></a>
				</div>
				<div class="aichi3_img2">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/zhongwaimingjiu.png"></a>
				</div>
			</div>
			<div class="aichi4">
				<a href="#"><img
					src="${pageContext.request.contextPath}/images/foreground/indeximg/shengxian.png"></a>
			</div>
			<div class="aichi5">
				<a href="#"><img
					src="${pageContext.request.contextPath}/images/foreground/indeximg/fish.png"></a>
			</div>
			<div class="aichi6">
				<div class="aichi6_img1">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/dongjiacai.png"></a>
				</div>
				<div class="aichi6_img2">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/foreground/indeximg/0yuan.png"></a>
				</div>
			</div>
		</div>



		<div id="grey">
			<div class="footer">
				<div class="grey_bg">
					<div class="">
						<img
							src="${pageContext.request.contextPath}/images/foreground/indeximg/duokuaihao.png">
					</div>
				</div>
				<div class="gouwuzhinan">
					<span style="text-align: center; margin-left: 100px;">购物指南</span>
					<ul style="list-style: none;" class="ul4">
						<li><a href="#">购物流程</a></li>
						<li><a href="#">支付方式</a></li>
						<li><a href="#">售后规则</a></li>
					</ul>
				</div>
				<div class="peisongfangshi">
					<span style="text-align: center; margin-left: 100px;">配送方式</span>
					<ul style="list-style: none;" class="ul5">
						<li><a href="#">配送运费</a></li>
						<li><a href="#">配送范围</a></li>
						<li><a href="#">配送时间</a></li>
					</ul>
				</div>
				<div class="service">
					<span style="text-align: center; margin-left: 100px;">商家服务</span>
					<ul style="list-style: none;" class="ul6">
						<li><a href="#">平台规则</a></li>
						<li><a href="#">商家入驻</a></li>
						<li><a href="#">联系我们</a></li>
					</ul>
				</div>
				<div class="contect">
					<span style="text-align: center; margin-left: 100px;">联系客服</span>
					<ul style="list-style: none;" class="ul7">
						<li><a href="#">在线客服</a></li>
						<li><a href="#">客服电话：123-580-970</a></li>
						<li><a href="#">服务时间</a></li>
						<li><a href="#">反馈邮箱：815@163.com</a></li>
					</ul>
				</div>
			</div>

			<!-- 版权 -->
			<div class="banquan">
				<div class="text"
					style="width: 1190px; height: 100%; margin: 0 auto;">
					<div style="margin: 0 auto; width: 300px;">@Copyright&nbsp;2014-2017&nbsp;版权所有</div>
				</div>
			</div>
		</div>
	</div>

	</div>

	<!-- file:///E:/electricmall/html/electricmall.html -->
	</div>

	</div>

</body>
</html>