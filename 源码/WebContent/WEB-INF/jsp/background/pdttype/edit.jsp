<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品信息修改</title>
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
<h1>商品信息修改</h1>
	 <form action="${pageContext.request.contextPath}/background/pdttype/edit" method="post">
   	 <table style="width:100%;border: 1px solid;">
     <tr>
       <th>商品类别名称：</th>
       <td>
       <input type="text" name="ptname" value="${pdtType.ptname}">
       <input type="hidden" name="ptid"  value="${pdtType.ptid}" />
       </td>
     </tr>
     <tr>
       <th>商品类别状态：</th>
       <td>
       <select name="ptstate" value="${pdtType.ptstate}">
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