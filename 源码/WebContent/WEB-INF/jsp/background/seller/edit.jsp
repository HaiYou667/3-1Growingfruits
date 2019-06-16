<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改商家</title>
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
  <h1>商家管理>>修改商家信息</h1>
  <form action="${pageContext.request.contextPath}/background/seller/edit" method="post">
    <table style="width:100%">
       <tr>
          <th>姓名:</th>
          <td>
            <input type="text" name="sname" value="${list.sname}">
            <input type="hidden" name="sid" value="${list.sid}">
          </td>
       </tr>
        <tr>
          <th>密码：</th>
          <td>
            <input type="password" name="spwd" value="${list.spwd}">
          </td>
       </tr>
        <tr>
          <th>电话:</th>
          <td>
            <input type="text" name="sphone" value="${list.sphone}">
          </td>
       </tr>
        <tr>
          <th>地址：</th>
          <td>
            <input type="text" name="saddr" value="${list.saddr}">
          </td>
       </tr>
        <tr>
          <th>真实姓名：</th>
          <td>
            <input type="text" name="struename" value="${list.struename}">
          </td>
       </tr>
        <tr>
          <th>性别：</th>
          <td>
           <select name="ssex" value="${list.ssex}">
             <option>男</option>
             <option>女</option>
           </select>
          </td>
       </tr>
        <tr>
          <th>年龄：</th>
          <td>
            <input type="text" name="sage" value="${list.sage}">
          </td>
       </tr>
        <tr>
          <th>E-Mail:</th>
          <td>
            <input type="text" name="semail" value="${list.semail}">
          </td>
       </tr>
       <tr>
          <th>状态：</th>
          <td>
            <select name="sstate" vlaue="${list.sstate}"> 
               <option value="1">正常</option> 
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