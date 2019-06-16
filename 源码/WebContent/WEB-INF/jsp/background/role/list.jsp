<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色管理</title>
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


	<h2>角色管理>>查询角色</h2>
	<form action="${pageContext.request.contextPath}/background/role/list"
		method="post">
		<!-- 如果想设置查询条件框的话，就在该div中进行设置-->
		<div>
			角色名称：<input type="text" name="rolename" value="${role.rolename}">
			<input type="submit" value="查询"> <input type="button"
				value="增加"
				onclick="javascript:window.location.href='${pageContext.request.contextPath}/background/role/add';">
		</div>
	</form>
	<table style="width: 100%;">
		<tr>
			<th style="text-align:left;">角色ID</th>
			<th style="text-align:left;">角色名称</th>
			<th style="text-align:left;">角色状态</th>
			<th style="text-align:left;">编辑</th>
            <th style="text-align:left;">权限</th><%-- ${role.rolestate} --%>
			<c:forEach items="${list}" var="role">
				<tr>
					<td>${role.roleid}</td>
					<td>${role.rolename}</td>
					<td>
					  <c:choose>
					     <c:when test="${role.rolestate==1}">可用</c:when>
					     <c:otherwise>不可用</c:otherwise>
					  </c:choose>
					</td>
					<td>
					<a href="${pageContext.request.contextPath}/background/role/toedit?id=${role.roleid}">编辑</a>
					</td>
					<td>
					<a href="${pageContext.request.contextPath}/sys/roleright/toright?id=${role.roleid}">查看权限</a>
					</td>
				</tr>
			</c:forEach>
		</tr>
	</table>
</body>
</html>