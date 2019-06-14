<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加角色</title>
</head>
<body>
      <h1>角色管理>>增加角色</h1>
      <form action="${pageContext.request.contextPath}/background/role/addrole" method="post">
      <table style="width: 100%;border: 1px solid;">
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