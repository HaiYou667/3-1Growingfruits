<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<title>商品类别增加</title>
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
</style>
</head>

<body>
	<h1>商品类别增加</h1>
	<form action="${pageContext.request.contextPath}/background/pdttype/add" method="post">
		<table style="width: 100%;">
			<tr>
			<th>商品类别名称</th>
			<td>
				<input type="text" name="ptname" />
			</td>
			</tr>
			<tr>
			<th>商品类别状态</th>
			<td>
				<select name="ptstate">
					<option value="1">可用</option>
					<option value="0">不可用</option>
				</select>
			</td>
			</tr>
			<tr>
			<th></th>
			<td>
				<input type="submit" value="提交">
			</td>
			</tr>
		</table>
	</form>
</body>
</html>