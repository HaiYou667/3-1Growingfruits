<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>买家查询出的详细退货订单</title>
<style type="text/css">

	th{
	text-align:right;
	}
	
	input{
	background:none transparent scroll repeat 0% 0%;
	border:1px solid #58a4fc;
	
	}
	select{
	background-color: transparent;
	  	border:#58a4fc solid 1px;
	 	
	}

*{
border-collapse:collapse;
}
#table{
width: 100%
}
  th{
    text-align: center;
  }
</style>
</head>
<body>
	<!-- 1.此页面应该先将买到的商品全部查询出来
2.然后在商品的后面添加一个链接（点击退货）
3.然后退货申请发出，状态改变
（操作的是订单表，退货表的状态
分为：0.尚未审核  1.已经审核    00.退货不通过 01.退货通过 ） 

select e.retid, a.ordid,b.payname,c.username,d.dlvname,a.ordamount,a.ordcomment,a.orddate,a.omoney,a.oaddr,a.revname,a.ordtate from ord a,payment b,sysusers c,delivery d,returns e where a.ordid=e.orderid and a.payid=b.payid and a.userid=c.userid and a.dlvid=d.dlvid
-->
<h2>退货管理>>卖家查询出的详细退货订单</h2>
	<form action="${pageContext.request.contextPath}/sys/sellerreturn/listreturn"
		method="post">
		<table id="table" border="1">
			<tr>
				<th>退货编号</th>
				<th>订单编号</th>
				<th>支付方式</th>
				<th>用户名</th>
				<th>配送方式</th>
				<th>订单数量</th>
				<th>商品评论</th>
				<th>下单日期</th>
				<th>总价格</th>
				<th>配送地址</th>
				<th>收货人姓名</th>
				<th>退换货原因</th>
				<th>订单状态</th>
				<th>是否审核</th>
				<th>审核是否通过</th>
				<th>点击进行审核</th>
			</tr>
			<c:forEach items="${list}" var="returns">
				<tr>
					<td>${returns.retid}</td>
					<td>${returns.orderid}</td>
					<td>${returns.payname}</td>
					<td>${returns.username}</td>
					<td>${returns.dlvname}</td>
					<td>${returns.ordamount}</td>
					<td>${returns.ordcomment}</td>
					<td>${returns.orddate}</td>
					<td>${returns.omoney}</td>
					<td>${returns.oaddr}</td>
					<td>${returns.revname}</td>
					<td>${returns.retreason}</td>
					<td>
					<c:choose>
					  <c:when test="${returns.ordtate==1}">
					     买家已收货
					  </c:when>
					  <c:otherwise>
					     买家未收货
					  </c:otherwise>
					</c:choose>
					</td>
					<!-- 是否审核 1表示已经审核-->
					<td>
					<c:choose>
					  <c:when test="${returns.retstate==1}">
					     已审核
					  </c:when>
					  <c:otherwise>
					     未审核
					  </c:otherwise>
					</c:choose>
					</td>
					
					<!-- 审核是否通过 -->
					<!--passstste=1说明审核通过  -->
					<td>
					<c:choose>
					  <c:when test="${returns.passstate==1}">
					     通过
					  </c:when>
					  <c:otherwise>
					     未通过
					  </c:otherwise>
					</c:choose>
					</td>
					<td><a href="${pageContext.request.contextPath}/sys/sellerreturn/toedit?id=${returns.retid}">点击进行审核</a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>