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
	<title>订单详情</title>
	<style type="text/css">
		#main{width:990px;height: 1000px;margin: auto;}
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
		.main1_2{height: 50px;line-height: 50px;width: 990px;}
		.thd{padding-left: 70px;}
		.on{background-color: #CCFFCC;}
		.main1_3{height: 150px;border: 2px solid #ccc;padding-top: 30px;width: 990px;}
		.checkbox{padding-left: 39px;}
		.mainleft{width: 150px;height: 110px;padding-left: 20px;}
		.mainleft1{width: 150px;padding-left: 50px;}
		.mainleft1 img{width:70px ;height:70px ;}
		.mainright {padding-left:65px;}
		.mainright button{background-color: #fff;border:#fff;}
		.price{padding-left:65px;}
		.mainright input{width: 40px;height: 25px;}
		.mm2{height: 50px;width: 990px;margin:0 auto;}
		.main2{background: #ccc;height: 50px;width: 990px;position: fixed;bottom: 0;}
		.main2 span{font-size: 17px;color: red;font-weight: bold;}
       .main2_left{padding-left: 30px;line-height: 50px;float: left;}
       .main2_left a{text-decoration: none;}
       .main2_right{width: 400px;float: right;}
       .main2_right div{padding-left: 20px;float: right;line-height: 50px;}
       .main2_right button{width: 70px;height: 50px;background: #ff6633;}
       .main2_right button a{color: #fff;font-size: 17px;text-decoration:none;}
       .next{width: 80px;height: 50px;background: #ff6633;float:right;}
       .table{width: 990px;border:1px #ccc solid;}
       tr{text-align:center;}
       p{background:#ccc;text-align:center;color:#f00;font-size:20px;width: 990px;height: 50px;line-height:50px;}
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
            <li><a href="${pageContext.request.contextPath}/foreground/tologin">退出</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/foreground/guozhenhao">购物商城首页</a></li>
        <li class="dropdown">
          <a href="${pageContext.request.contextPath}/foreground/user/toedit?id=${suser.userid}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a>已买商品</a></li>
            <li><a>我的足迹</a></li>
          </ul>
        </li>
        <li><a href="#">收藏夹</a></li>
        <li><a href="${pageContext.request.contextPath}/foreground/tologin
        ">卖家中心</a></li>
        <li><a href="#">联系客服</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div id="main">
	<div class="top_top">
		<div class="top1">
			<div class="top1_1">宝贝</div>
			<div class="top1_2">
				<!-- <form action=""> -->
				  	<span class="glyphicon glyphicon-search"></span>
				  	<input type="text" name=""  />
					<button type="submit">搜索</button>
				<!-- </form> -->
			</div>
		</div>
	</div>
	
	<div class="main1">
		<div class="main1_top">
			<ul>
				<li style="color: #ff6633">订单详情</li>
			</ul>
		</div>
		<br>
		<p>恭喜订单提交成功！我们会在第一时间进行处理，请记下您的订单号以备查询。</p>
		<table class="table">
			
			<tr>
				
				<td style="text-align:right;">订单编号：</td>
				<td style="text-align:left;">${order.ordid}</td>
			</tr>
			<tr>
				<td style="text-align:right;">收货人：</td>
				<td style="text-align:left;">${order.revname}</td>
			</tr>
			<tr>
				<td style="text-align:right;">商品名称：</td>
				<td style="text-align:left;">
					${prolist.pdtname}
				</td>
			</tr>
			<tr>
				<td style="text-align:right;">收货地址：</td>
				<td style="text-align:left;">${order.oaddr}</td>
			</tr>
			<tr>
				<td style="text-align:right;">订单创建时间：</td>
				<td style="text-align:left;">${order.orddate}</td>
			</tr>
			<tr>
				<td style="text-align:right;">交易金额：</td>
				<td style="text-align:left;">${order.omoney}元</td>
			</tr>
			<tr>
				<td style="text-align:right;">配送方式：</td>
				<td style="text-align:left;">
						<c:forEach items="${dlvlist}" var="dlv">
							<c:choose>
								<c:when test="${dlv.dlvid==order.dlvid}">${dlv.dlvname}</c:when>
							</c:choose>
						</c:forEach>
				</td>
			</tr>
			<tr>
				<td style="text-align:right;">支付方式：</td>
				<td style="text-align:left;">
						<c:forEach items="${paylist}" var="pay">
							<c:choose>
								<c:when test="${pay.payid==order.payid}">${pay.payname}</c:when>
							</c:choose>
						</c:forEach>
				</td>
			</tr>
			<tr>
				<td style="text-align:right;">备注：</td>
				<td style="text-align:left;">${order.ordcomment}</td>
			</tr>
			<tr>
				<td style="text-align:right;">订单状态：</td>
				<td style="text-align:left;">
						<c:choose>
							<c:when test="${order.ordtate==0}">等待审核</c:when>
						</c:choose>
				</td>
			</tr>
			<tr>
				<td style="text-align:right;"></td>
				<td style="text-align:center;">
					<a href="${pageContext.request.contextPath}/foreground/guozhenhao">返回商城首页>></a>
				</td>
			</tr>
		</table>
	</div>
		
</div>
</body>
</html>