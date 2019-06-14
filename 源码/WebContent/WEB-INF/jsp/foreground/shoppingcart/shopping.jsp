<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
 	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css.map">
	<meta charset="UTF-8">
	<title>购物车</title>
	<style type="text/css">
		#main{width: 990px;height: 100%;margin: auto;}
		.top_top{width: 990px;height: 95px;padding-top: 20px;}
		.top_top img{padding-left: 40px;}
		.top1{float: right; height: 35px;width: 515px;
			border: 4px solid #ff6633;}
		.top1_1{ float: left;width: 74px;
            border-right: 2px solid #e5e5e5;line-height: 27px;text-align: center; }
		.top1_2{height: 27px;}
		.top1_2 span{padding-left: 10px;color: #ccc; line-height: 27px;}
		.top1_2 button{width: 93px;height: 27px;background: #ff6633;color: #fff;font-size: 18px;float: right;border: 0;}
		.top1_2 input{width: 310px;height: 23px;border: 0;}
		.main1{height: 100%;width: 990px;}
	    .main1_top{height: 35px;border-bottom: 3px solid #ccc;}
	    .main1_top ul{list-style: none;}
	    .main1_top ul li{float: left;font-size:23px;border-right: 2px solid #ccc; width: 160px;line-height: 25px;padding-left: 25px;}
		.main1_2{height: 50px;line-height: 50px;}
		.main1_2 li{float: right;padding-right: 78px;list-style: none}
		.main1_3{height: 150px;border: 2px solid #ccc;padding-top: 30px;}
		.mainleft2{padding-left: 39px;}
		.main1_3 div{float: left;}
		.mainleft{width: 150px;height: 110px;padding-left: 20px;}
		.mainleft1{width: 150px;padding-left: 50px;}
		.mainleft1 img{width:70px ;height:70px ;}
		.main1_3 a{text-decoration: none;}
		.mainright{padding-left:65px;}
		.mainright input{width: 40px;height: 25px;}
		.main2{background: #ccc;height: 50px;width: 990px;position: fixed;bottom: 0;margin-left: 178px;}
       .main2_left{padding-left: 30px;line-height: 50px;float: left;}
       .main2_left a{text-decoration: none;}
       .main2_right{width: 400px;float: right;}
       .main2_right div{padding-left: 20px;float: right;line-height: 50px;}
       .main2_right button{width: 70px;height: 50px;background: #ff6633;}
       .main2_right button a{color: #fff;font-size: 17px;text-decoration:none;}
	</style>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">账号管理</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">退出</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">淘宝网首页</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的淘宝 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a>已买商品</a></li>
            <li><a>我的足迹</a></li>
          </ul>
        </li>
        <li><a href="#">收藏夹</a></li>
        <li><a href="#">卖家中心</a></li>
        <li><a href="#">联系客服</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div id="main">
	<div class="top_top">
		<img src="${pageContext.request.contextPath}/images/foreground/gou.png">
		<div class="top1">
			<div class="top1_1">宝贝</div>

			<div class="top1_2">
			  	<form action="">
			  		<span class="glyphicon glyphicon-search"></span>
			  		<input type="text" name=""  />
				    <button type="submit">搜索</button>
				</form>
			</div>
			
		</div>
	</div>
	<div>
		<div class="main1">
			<div class="main1_top">
				<ul>
					<li style="color: #ff6633">全部商品</li>
					<li>降价商品</li>
					<li>库存紧张</li>
				</ul>
			</div>
			<div class="main1_2">
			    <input type="checkbox" />
				&nbsp;&nbsp;&nbsp;&nbsp;<img  src="${pageContext.request.contextPath}/images/foreground/gou1.png">
				&nbsp;&nbsp;
			    <span>店铺：</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		
			    <span>商品信息</span>
			      <li>删除</li>
			      <li>金额</li>
			      <li>数量</li>
			      <li>单价</li>
			</div>
			<div class="main1_3">
				<div class="mainleft2"><input type="checkbox" name=""></div>
				<div class="mainleft1" ><img src="${pageContext.request.contextPath}/images/foreground/橙子.jpg"></div>
				<div class="mainleft">大师傅大师傅的看法你的伤口士大夫大师傅地方顶顶顶</div>
				<div class="mainleft">jieshao</div>
				<div class="mainright">10.0</div>
				<div class="mainright"><a href="#">-</a>
					<input type="text" name="" value="1">
					<a href="#">+</a>
				</div>
				<div class="mainright">20.0</div>
				<div class="mainright">移除</div>		
			</div>
		</div>	
	</div>	
</div>
<div class="main2">	
		<div class="main2_left"><input type="checkbox" name="">&nbsp;&nbsp;全选</div>
		<div class="main2_left"><a href="">删除</a>&nbsp;&nbsp;&nbsp;
			 <a href="#">移入收藏夹</a>&nbsp;&nbsp;&nbsp;
			 <a href="#">分享</a>	
		</div>
		<div class="main2_right">
			<div><button><a href="">结算<a></button></div>
			<div><span>0.00</span></div>
			<div><span class="txt">合计(不含运费):</span></div>
		</div>
   	</div>
</body>
</html>