<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<title>查询商品类别</title>
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
<form action="${pageContext.request.contextPath}/background/pdttype/list" method="post">
    <div>
    	查询商品类别：
        <input type="text" name="ptname" value="${pdtType.ptname}">
        <input type="submit" value="查询" />
        <input type="button" value="增加" onclick=
        "javascript:window.location.href='${pageContext.request.contextPath}/background/pdttype/toadd'"/>
    </div>
    </form>
    <table style="width:70%" >
		<tr>
			<th>商品类别名称</th>
			<th>商品类别状态</th>
			<th>编辑</th>
		</tr>
		<c:forEach items="${list}" var="pdt">
		<tr>
			<td>${pdt.ptname}</td>
			<td>
				<c:choose>
					<c:when test="${pdt.ptstate==1}" >
						  可用
					</c:when>
					<c:otherwise>
						不可用
					</c:otherwise>
				</c:choose>
			</td>
			<td>
				<a href="${pageContext.request.contextPath}/background/pdttype/toedit?id=${pdt.ptid}">编辑 </a>	
			</td>
		</tr>
		</c:forEach>
		</table>


</body>
</html>