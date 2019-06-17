<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<title>查询商品</title>
<style type="text/css">
	th{
	text-align:left;
	}
	
	input{
	background:none transparent scroll repeat 0% 0%;
	border:1px solid #58a4fc;
	
	}
	select{
	background-color: transparent;
	  	border:#58a4fc solid 1px;
	 	
	}
</style>
</head>
<body>
<form action="${pageContext.request.contextPath}/background/product/select" method="post">
    <div>
                 商品类别：
         <select name="ptid">
			<option value="-1">全部</option>
			<c:forEach items="${ptlist}" var="pt">
				<option <c:if test="${pt.ptid==pc.t.ptid}">selected="selected" 
				</c:if> value="${pt.ptid}" />${pt.ptname}
			</c:forEach>
			</select>
    	商品名称：
        <input type="text" name="pdtname" value="${pc.t.pdtname}">
        <input type="submit" value="查询" />
        <input type="button" value="增加" onclick=
        "javascript:window.location.href='${pageContext.request.contextPath}/background/product/toadd'"/>
    </div>
    </form>
    <div>
    <table style="width:100%" >
		<tr>
			<th>商品名称</th>
			<th>商品类别</th>
			<th>进价</th>
			<th>售价</th>
			<th>库存</th>
			<!-- <th>运费</th> -->
			<th>数量</th>
			<th>图片</th>
			
			<th>状态</th>
			<th>编辑</th>
		</tr>
		<c:forEach items="${pc.list}" var="prd">
		<tr>
			<td>${prd.pdtname}</td>
			<td>${prd.ptname}</td>
			<td>${prd.pdtprice}</td>
			<td>${prd.pdtsprice}</td>
			<td>${prd.pdtstandard}</td>
			<%-- <td>${prd.pdtfreight}</td> --%>
			<td>${prd.pdtnumber}</td>
			<td>
	   			<img style="width:100px;height:100px" alt="商品图片" src="${pageContext.request.contextPath}${prd.pdtpicture}" >
	   		</td>
			
			<td>
				<c:choose>
					<c:when test="${prd.pdtstate==1}" >
						  普通商品
					</c:when>
					<c:when test="${prd.pdtstate==2}" >
						  新品上架
					</c:when>
					<c:when test="${prd.pdtstate==3}" >
						  推荐商品
					</c:when>
					<c:when test="${prd.pdtstate==4}" >
						  特色商品
					</c:when>
					<c:otherwise>
						已下架
					</c:otherwise>
				</c:choose>
			</td>
			<td>
				<a href="${pageContext.request.contextPath}/background/product/toedit?pdtid=${prd.pdtid}">编辑 </a>	
			</td>
		</tr>
		</c:forEach>
		</table>
		</div>
		<div>
		    <%@ include file="../../../../basepage/pager.jsp" %>
	    </div>
</body>
</html>