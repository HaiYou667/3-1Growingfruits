<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员信息修改</title>
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
<h1>管理员信息修改</h1>
	 <form action="${pageContext.request.contextPath}/background/admin/edit" method="post">
   	 <table style="width:100%;border: 1px solid;">
     <tr>
       <th>管理员姓名：</th>
       <td>
       <input type="text" name="adminname" value="${admin.adminname}">
       <input type="hidden" name="adminid"  value="${admin.adminid}" />
       </td>
     </tr>
     <tr>
       <th>管理员密码：</th>
       <td>
       <input type="password" name="adminpwd" value="${admin.adminpwd}">
       </td>
     </tr>
     <tr>
       <th>管理员电话：</th>
       <td>
       <input type="text" name="adminphone" value="${admin.adminphone}">
       </td>
     </tr>
     <tr>
       <th>管理员地址：</th>
       <td>
       <input type="text" name="adminaddr" value="${admin.adminaddr}">
       </td>
     </tr>
     <tr>
       <th>管理员真是姓名：</th>
       <td>
       <input type="text" name="admintruename" value="${admin.admintruename}">
       </td>
     </tr>
     <tr>
       <th>管理员性别：</th>
       <td>
       <select name="adminsex" value="${admin.adminsex}">
		         <option> 男</option>
		         <option> 女</option>
       </select>
       </td>
     </tr>
     <tr>
       <th>管理员年龄：</th>
       <td>
       <input type="text" name="adminage" value="${admin.adminage}">
       </td>
     </tr>
     <tr>
       <th>管理员E-Mail：</th>
       <td>
       <input type="text" name="adminemail" value="${admin.adminemail}">
       </td>
     </tr>
     <tr>
       <th>使用角色：</th>
       <td>
       <select name="roleid">
          		<c:forEach items="${rolelist}" var="role">
          		 <option <c:if test="${role.roleid==admin.roleid}">selected="selected"</c:if>
          		  value="${role.roleid}">${role.rolename}</option>
          		</c:forEach>
          	
          	</select>
       </td>
     </tr>
     <tr>
       <th>管理员状态：</th>
       <td>
       <select name="adminstate" value="${admin.adminstate}">
       <option value="1">可用</option>
       <option value="0">锁定</option>
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