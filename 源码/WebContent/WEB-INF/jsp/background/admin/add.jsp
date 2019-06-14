<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加管理员</title>
</head>
<body>
     <h1>用户管理>>增加用户</h1>
     <form action="${pageContext.request.contextPath}/background/admin/add" method="post">
     <table style="width: 100%;border: 1px solid;">
     <tr>
       <th>管理员姓名：</th>
       <td>
       <input type="text" name="adminname">
       </td>
     </tr>
     <tr>
       <th>管理员密码：</th>
       <td>
       <input type="password" name="adminpwd">
       </td>
     </tr>
     <tr>
       <th>管理员重复密码：</th>
       <td>
       <input type="password1" name="adminpwd">
       </td>
     </tr>
     <tr>
       <th>管理员电话：</th>
       <td>
       <input type="text" name="adminphone">
       </td>
     </tr>
     <tr>
       <th>管理员地址：</th>
       <td>
       <input type="text" name="adminaddr">
       </td>
     </tr>
     <tr>
       <th>管理员真是姓名：</th>
       <td>
       <input type="text" name="admintruename">
       </td>
     </tr>
     <tr>
       <th>管理员性别：</th>
       <td>
       <select>
		          男<input type="radio" name="sex">
		           女<input type="radio" name="sex">
       </select>
       </td>
     </tr>
     <tr>
       <th>管理员年龄：</th>
       <td>
       <input type="text" name="adminage">
       </td>
     </tr>
     <tr>
       <th>管理员E-Mail：</th>
       <td>
       <input type="text" name="adminemail">
       </td>
     </tr>
     <tr>
       <th>使用角色：</th>
       <td>
       <select name="roleid">
         <c:forEach items="${rolelist}" var="role">
              <option value="${role.roleid}">${role.rolename}</option>
         </c:forEach>
       </select>
       </td>
     </tr>
     <tr>
       <th>管理员状态：</th>
       <td>
       <select>
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