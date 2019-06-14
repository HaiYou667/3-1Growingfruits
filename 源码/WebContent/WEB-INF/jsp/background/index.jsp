<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电子商城后台管理 </title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
 	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css.map">
	<style type="text/css">
		*{margin:0;padding: 0;}
		#top {width: 1348px;height: 90px;background-image: url(${pageContext.request.contextPath}/images/background/1.jpg);background-size: 1348px;height: 90px;}
		.top_1{float: left; width: 808.8px;height: 80px; margin-left:350px;}
		.top_1 ul li{float: left;margin-left: 65px;list-style:none;margin-top: 15px;}
		.top_1 img{width: 50px;height: 45px;}
		.top_1 a{text-decoration: none;font-size: 10px;color: #fff;}
		
		#top button{ margin-top: 10px;width: 40px;background:#99ccff; border-radius: 6px;margin-left: 5px;float: right;}
		
		#main{width: 1348px;height: 30px;}
		.main_left{float: left;width: 202.2px;height: 60px;
			margin-top: -30px;text-align: center;background-image: url(${pageContext.request.contextPath}/images/background/14.png);background-size: cover;border-radius:3px;}
		.main_left a{font-size: 30px;text-decoration: none;margin-top: 10px;color: #000;font-family:YouYuan;font-weight: bold;}
		.main_right{float: right;height: 30px;width: 1145.8px;background-image: url(${pageContext.request.contextPath}/images/background/11.png); }
		.main_right a{text-decoration: none;color: #000;font-weight: bold;}
		.main_right a span{margin-left: 30px;margin-top: 7px;color: #000;}
		
		#nav{width: 1348px;height: 548px;}
		.nav_left{float: left;width: 202.2px;height: 548px;
			background-image: url(${pageContext.request.contextPath}/images/background/1.jpg);background-size: cover;}
		.nav_right{float: right;height: 548px;width: 1145.8px;}
		.nav1 table tr{border:1px solid black;}
		.nav-stacked{margin-left: 20.22px;margin-top: 30px;}
		.nav-stacked>dt{float: none;width: 161.76px;text-align: center;background-image: url(${pageContext.request.contextPath}/images/background/9.png);background-size:height:30px; height: 30px;font-size: 18px;color: #fff;line-height: 30px;border-radius: 6px;}
		.nav-stacked>div{float: none;width: 161.76px;text-align: center;font-size: 14px;line-height: 35px;}	
	</style>
	<script>
	$(function(){
		$("dt").each(function(index, element) {
            $(this).click(function() {
				var name=$(this).attr("name");
				$("[data='"+name+"']").slideToggle(500);             
            });
        });			
		});
	</script>
</head>
<body>
	<div id="top">

		<div class="top_1">
		<ul>
			<li>
				<img src="${pageContext.request.contextPath}/images/background/4.png">
				<br>
				<a>商品管理</a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/images/background/8.png">
				<br>
				<a>订单管理</a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/images/background/6.png">
				<br>
				<a></a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/images/background/7.png">
				<br>
				<a>111</a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/images/background/12.png">
				<br>
				<a>111</a>
			</li>		
		</ul>
		</div>	
			<button href="##" > 帮助</button>
			<button href="##">管理</button>
			<button href="">退出</button>
	</div>
	<div id="main">
		<div class="main_left">
			<a href="">管理首页</a>
			<br>
			<p>你好！欢迎进入</p>
		</div>
		<div class="main_right">
			<a><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;当前位置 >>首页</a>
		</div>
	</div>
	<div id="nav">
		<div class="nav_left">	
			<dl class="nav-stacked">
            	<dt name="sys">系统管理</dt>
                	<div data="sys">
                        <dd name="sysrole">系统角色</dd>
                        <dd name="sysright">系统权限</dd>
                        <dd name="sysright">系统权限</dd>
                        <dd name="sysright">系统权限</dd>
                    </div>
            	<dt name="user">用户管理</dt>
                	<div data="user">
                        <dd name="user1">用户1管理</dd>
                        <dd name="user2">用户2管理</dd>
                    </div>              
            </dl>
		</div>
		<div class="nav_right">		
		</div>
	</div>	
</body>
</html>