<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看自己的退换货申请是否通过</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

ul {
	list-style-type: none;
}

a {
	text-decoration: none;
}

th {
	text-align: left;
}

#all {
	width: 1920px;
	height: 1000px;
	background: #f5f5f5;
}

input {
	background: none transparent scroll repeat 0% 0%;
	border: 1px solid #58a4fc;
}

select {
	background-color: transparent;
	border: #58a4fc solid 1px;
}

.nav {
	width: 1920px;
	height: 30px;
	background: #e3e4e5;
}

.nav_middle {
	width: 1190px;
	height: 30px;
	margin: 0 auto;
	/* background: black; */
}

.ul1 li {
	float: right;
	width: 100px;
	height: 30px;
	margin-right: 22px;
}

.ul1 li a {
	font-size: 12px;
	color: #999999;
	line-height: 30px;
}

.ul1 li:hover a span {
	color: #e2231a;
}

.header {
	width: 1920px;
	height: 81px;
	background: #e2231a;
}

.header_middle {
	width: 1190px;
	height: 81px;
	margin: 0 auto;
	/* background: black; */
}

.ul2 li {
	float: left;
	width: 100px;
	height: 81px;
	margin-right: 22px;
}

.ul2 li a {
	font-size: 18px;
	color: white;
	line-height: 81px;
}

.main {
	width: 1500px;
	height: 860px;
	margin: 0 auto;
	/* background: black; */
	margin-top: 30px;
}

.main_left {
	width: 150px;
	height: 860px;
	float: left;
	/* background: #999999; */
}

#ul3, #ul4, #ul5, #ul6 {
	width: 150px;
	height: 170px;
	/*background: white;*/
	float: left;
}

dt {
	font-size: 13px;
	color: #777777;
	margin-top: 5px;
}

.main_right {
	width: 1350px;
	height: 860px;
	float: left;
	/*background: black;*/
}

.myorderwhite {
	width: 1350px;
	height: 60px;
	background: white;
	float: left;
}

.myorderwhite span {
	font-size: 20px;
	color: #666666;
	line-height: 60px;
	margin-left: 20px;
}

.myorder {
	width: 1350px;
	height: 780px;
	margin-top: 20px;
	float: left;
	background: white;
}
</style>
</head>
<body>
	<!-- 查询出订单明细表里面的所有订单 -->
	<!-- 前台页面的退货,也就是用户卖完东西时要进行的退货 -->
	<div id="all">
		<div class="nav">
			<div class="nav_middle">
				<ul class="ul1">
					<li><a href="#"><span>我的购物车</span></a></li>
					<li><a href="#"><span>个人主页</span></a></li>
					<li><a href="#"><span>我的订单</span></a></li>
					<li><a href="#"><span style="color: red;">免费注册</span></a></li>
					<li><a href="#"><span>你好，请登录</span></a></li>
				</ul>
			</div>
		</div>
		<!-- 红色的导航栏那一部分 -->
		<div class="header">
			<div class="header_middle">
				<ul class="ul2">
					<li><a
						href="http://127.0.0.1:8080/ElectronicMall/foreground/guozhenhao"><span>首页</span></a></li>
					<li><a href="#"><span>账户设置</span></a></li>
					<li><a href="#"><span>社区</span></a></li>
					<li><a href="#"><span>消息</span></a></li>
				</ul>
			</div>
		</div>
		<div class="main">
			<div class="main_left">
				<div id="ul3">
					<dl class="ul3">
						<dd>
							<b>订单中心</b>
						</dd>
						<dt>我的订单</dt>
						<dt>我的活动</dt>
						<dt>评论晒单</dt>
						<dt>我的常购商品</dt>
						<dt>购物助手</dt>
					</dl>
				</div>
				<!-- 此处div时ul3（id）的结尾 -->
				<div id="ul4">
					<dl class="ul4">
						<dd>
							<b>关注中心</b>
						</dd>
						<dt>关注的商品</dt>
						<dt>关注的店铺</dt>
						<dt>关注的专辑</dt>
						<dt>收藏的内容</dt>
						<dt>关注的活动</dt>
					</dl>
				</div>
				<div id="ul5">
					<dl class="ul5">
						<dd>
							<b>资产中心</b>
						</dd>
						<dt>小金库</dt>
						<dt>领货码</dt>
						<dt>余额</dt>
						<dt>优惠券</dt>
						<dt>礼品卡</dt>
					</dl>
				</div>
				<div id="ul6">
					<dl class="ul6">
						<dd>
							<b>特色业务</b>
						</dd>
						<dt>返修退换货</dt>
						<dt>价格保护</dt>
						<dt>意见建议</dt>
						<dt>我的问答</dt>
						<dt>购买咨询</dt>
						<dt>交易纠纷</dt>
						<dt>上门预约服务</dt>
						<dt>我的发票</dt>
					</dl>
				</div>
			</div>
			<!-- 此处为主题的左边一部分的div -->
			<div class="main_right">
				<div class="myorderwhite">
					<!-- 白色的我的订单 -->
					<span>我的订单</span>
				</div>
				<div class="myorder">
					<!-- 此处为我的订单开头部分 -->
					<h1>退换货管理--查看退换货商品是否已经审批</h1>
					<div>
						<form
							action="${pageContext.request.contextPath}/sys/return/checkif"
							method="post">
							<table style="width: 100%">
								<tr>
									<th>是否审核</th>
									<th>审核是否通过</th>
								</tr>
								<c:forEach items="${statelist}" var="orderdetail">
									<tr>
										<td><c:choose>
												<c:when test="${orderdetail.retstate==0}">
                                                                                   未审核
                             </c:when>
												<c:otherwise>
                                                                                   已审核
                            </c:otherwise>
											</c:choose></td>
										<td><c:choose>
												<c:when test="${orderdetail.passstate==0}">
                                                                                   未通过
                             </c:when>
												<c:otherwise>
                                                                                   已通过
                            </c:otherwise>
											</c:choose></td>
									</tr>
								</c:forEach>
							</table>
						</form>
					</div>
					<!-- 此处为表单的结尾 -->
				</div>
				<!-- 此处为main_right结尾 -->
			</div>
			<!-- 此处为main结尾 -->

		</div>
		<!-- 此处的div结尾是最大的div -->
	</div>
</body>
</html>