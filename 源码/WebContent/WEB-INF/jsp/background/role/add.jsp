<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加角色</title>
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
</style>
</head>
<body>
      <h2>角色管理>>增加角色</h2>
      <form action="${pageContext.request.contextPath}/background/role/addrole" method="post">
      <table style="width: 70%;">
           <tr>
             <th>角色名称：</th>
             <td>
              <input type="text" name="rolename" /></td>
           </tr>
           <tr>
           <th>角色状态：</th>
           <td>
             <select name="rolestate">
               <option value="1">正常</option>
               <option value="0">不可用</option>
             </select>
           </td>
           </tr>
           <tr>
              <th></th>
              <td><input type="submit" value="提交"></td>
           </tr>
      </table>
      </form>
</body>
</html>