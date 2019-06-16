<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改角色</title>
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
     <h1>角色管理>>修改角色</h1>
     <form action="${pageContext.request.contextPath}/background/role/editrole" method="post">
     <table style="width: 100%;border: 1px solid;">
      <tr>
     	<th>角色名称：</th>
	     <td>
	       <input type="text" name="rolename" value="${role.rolename}">
	       <input type="hidden" name="roleid" value="${role.roleid}">
	     </td>
      </tr>
      <tr>
     	<th>角色状态：</th>
	     <td>
	       <select name="rolestate">
	           <c:choose>
	             <c:when test="${role.rolestate==0}">
	               <option value="1">正常</option>
	               <option value="0" selected="selected">锁定</option>
	             </c:when>
	             <c:otherwise>
	             <option value="1" selected="selected">正常</option>
	             <option value="0">锁定</option>
	             
	             </c:otherwise>
	           </c:choose>
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