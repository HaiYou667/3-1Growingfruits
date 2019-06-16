<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询商家</title>

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
     <h1>商家管理>>查询商家</h1>
     
      <form action="${pageContext.request.contextPath}/background/seller/select" method="post">
	     <div>
	                    商家名称：<input type="text" name="sname" value="${seller.sname}">
	         <input type="submit" value="查询">
	     </div>
	         <table id="Table" width="100%"  style="text-align:right;">
	          <tr>
	            <th>姓名</th>
	            <th>电话</th>
	            <th>地址</th>
	            <th>真实姓名</th>
	            <th>性别</th>
	            <th>年龄</th>
	            <th>E-Mail</th>
	            <th>状态</th>
	            <th>操作</th>
	          </tr>
	          <c:forEach items="${list}" var="seller">
	            <tr>
	              <td>${seller.sname}</td>
	              <td>${seller.sphone}</td>
	              <td>${seller.saddr}</td>
	              <td>${seller.struename}</td>
	              <td>${seller.ssex}</td>
	              <td>${seller.sage}</td>
	              <td>${seller.semail}</td>
	              <td>${seller.sstate}</td>
	              <td>
				   <a href="${pageContext.request.contextPath}/background/seller/toedit?id=${seller.sid}">编辑 </a>	
			     </td>
	            </tr>
	          </c:forEach>
	     </table>
     </form>
</body>
</html>