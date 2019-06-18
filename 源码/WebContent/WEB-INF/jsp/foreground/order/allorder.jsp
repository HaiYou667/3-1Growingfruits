<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 此处为主题的左边一部分的div -->
			<div class="main_right">
				
				<div class="myorder">
					<!-- 此处为我的订单开头部分 -->
					<h2>查询所有的订单</h2>
					<br>
					<%-- <form action="${pageContext.request.contextPath}/sys/return/list"
						method="post"> --%>
						<!-- <input type="hidden" name="userid" value="${suser.userid}"> -->
						<%-- <input type="hidden" name="retstate" value="${orderdetail.retstate}">
						<input type="hidden" name="retstate" value="${orderdetail.passstate}"> --%>
						<table style="width: 100%;">
							<tr>
								<th style="text-align:left;">订单编号</th>
								<th style="text-align:left;">商品名称</th>
								<th style="text-align:left;">订单数量</th>
								<th style="text-align:left;">下单日期</th>
								<!-- <th>审核状态</th>
								<th>审核是否通过</th> -->
								<!-- <th style="text-align:left;">申请退货</th>
								<th style="text-align:left;">申请换货</th> -->
								<th style="text-align:left;">审核情况</th>
							</tr>
							<c:forEach items="${list}" var="orderdetail">
								<tr>
									<td>${orderdetail.orderid}</td>
									<td>${orderdetail.pdtname}</td>
									<td>${orderdetail.onum}</td>
									<td>${orderdetail.ostime}</td>
									<%-- <td><c:choose>
											<c:when test="${orderdetail.retstate==1}">
					         已审核
					      </c:when>
											<c:otherwise>
					         未审核
					      </c:otherwise>
										</c:choose></td>
									<td><c:choose>
											<c:when test="${orderdetail.passstate==1}">
					         通过
					      </c:when>
											<c:otherwise>
					         未通过
					      </c:otherwise>
										</c:choose></td> --%>
									<%-- <td><a
										href="${pageContext.request.contextPath}/sys/return/toedit?id=${orderdetail.odid}">申请退货</a></td>
									<td><a
										href="${pageContext.request.contextPath}/sys/return/toedit?id=${orderdetail.odid}">申请换货</a></td> --%>
									<td><a
										href="${pageContext.request.contextPath}/sys/return/checkif?id=${orderdetail.orderid}">审核情况</a></td>
								</tr>
							</c:forEach>
						</table>
					<!-- </form> -->
				</div>
				<!-- 此处为表单的结尾 -->
			</div>
			<!-- 此处为main_right结尾 -->
</body>
</html>