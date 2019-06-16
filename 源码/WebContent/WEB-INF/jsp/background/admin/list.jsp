<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/icon.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
<title>查询管理员</title>
<style type="text/css">
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
<form action="${pageContext.request.contextPath}/background/admin/list" method="post">
    <div>
    	查询管角色：
		<select name="roleid">
			<option value="-1">全部</option>
			<c:forEach items="${rolelist}" var="role">
				<option <c:if test="${role.roleid==admin.roleid}">selected="selected" 
				</c:if> value="${role.roleid}" />${role.rolename}</option>
			</c:forEach>
		</select>
        <input type="text" name="adminname" value="${admin.adminname}">
        <input type="submit" value="查询" />
        <input type="button" value="增加" onclick=
        "javascript:window.location.href='${pageContext.request.contextPath}/background/admin/toadd'"/>
    </div>
	<table style="width:100%;text-align:left;" class="table table-hover">
		<tr>
			<th>管理员名称</th>
			<th>角色</th>
			<th>电话</th>
			<th>地址</th>
			<th>姓名</th>
			<th>性别</th>
			<th>年龄</th>
			<th>E-mail</th>
			<th>状态</th>
			<th>编辑</th>
		</tr>
		<c:forEach items="${list}" var="admin">
		<tr>
			<td>${admin.adminname}</td>
			<td>${admin.rolename}</td>
			<td>${admin.adminphone}</td>
			<td>${admin.adminaddr}</td>
			<td>${admin.admintruename}</td>
			<td>${admin.adminsex}</td>
			<td>${admin.adminage}</td>
			<td>${admin.adminemail}</td>
			<td>
				<c:choose>
					<c:when test="${admin.adminstate==1}" >
						  正常
					</c:when>
					<c:otherwise>
						锁定
					</c:otherwise>
				</c:choose>
			</td>
			<td>
				<a href="${pageContext.request.contextPath}/background/admin/toedit?id=${admin.adminid}">编辑 </a>	
			</td>
		</tr>
		</c:forEach>
	</table>
</form>
	
</body>
</html>