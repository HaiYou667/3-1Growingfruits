<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑退货是否通过</title>
<style >
input{
			background:none transparent scroll repeat 0% 0%;
			border:1px solid #8bc831;
			
		
	}
	select{
			background-color: transparent;
	  		border:#8bc831 solid 1px;
	}
</style>
</head>
<body>
<h3>退换货管理>>审核退货表</h3>
<form action="${pageContext.request.contextPath}/sys/sellerreturn/edit" method="post">
  <table>
    <tr>
         <th></th>
         <td><input type="hidden" name="retid" value="${returndto.retid}"/></td>
    </tr>
    <tr>
        <th>是否审核：</th>
        <td>
           <select name="retstate">
             <c:choose>
                <c:when test="${returndto.retstate==0}">
                   <option value="0" selected="selected">未审核</option>
                   <option value="1">已审核</option>
                </c:when>
                <c:otherwise>
                   <option value="0">未审核</option>
                   <option value="1" selected="selected">已审核</option>
                </c:otherwise>
             </c:choose>
           </select>
        </td>
    </tr>
    <tr>
        <th>审核是否通过：</th>
        <td>
           <select name="passstate">
             <c:choose>
                <c:when test="${returndto.passstate==0}">
                   <option value="0" selected="selected">审核未通过</option>
                   <option value="1">审核通过</option>
                </c:when>
                <c:otherwise>
                   <option value="0">审核未通过</option>
                   <option value="1" selected="selected">审核通过</option>
                </c:otherwise>
             </c:choose>
           </select>
        </td>
    </tr>
    <tr>
        <th></th>
        <td>
           <input type="submit" value="完成审核"/>
        </td>
    </tr>
  </table>
</form>
</body>
</html>