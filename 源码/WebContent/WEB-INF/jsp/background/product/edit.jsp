<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改商品</title>
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
<script type="text/javascript">
	function sh() {	
		var r = new FileReader();
		f = document.getElementById('file').files[0];
		r.readAsDataURL(f);
		r.onload = function(e) {
			document.getElementById('show').src = this.result;
		};
	}
</script>
</head>
<body>
<h1>修改商品</h1>
	<form action="${pageContext.request.contextPath}/background/product/edit" enctype="multipart/form-data" method="post">
		<table>
			<tr>
       <th>商品名称：</th>
       <td>
       <input type="text" name="pdtname"  value="${prd.pdtname}">
       <input type="hidden" name="pdtid"  value="${prd.pdtid}">
       </td>
     </tr>
      <tr>
       <th>商品类别：</th>
       <td>
        <select name="ptid" >
       			<%--  <option value="${prd.ptid}">${prd.ptname}</option> --%>
          		<c:forEach items="${ptlist}" var="list">
          		 <option <c:if test="${list.ptid==prd.ptid}">selected="selected"</c:if>
          		 value="${list.ptid}">${list.ptname}</option>
          		</c:forEach>
          	
       </select>
       </td>
     </tr>
     <tr>
       <th>进价：</th>
       <td>
       <input type="text" name="pdtprice" value="${prd.pdtprice}">
       </td>
     </tr>
     <tr>
       <th>售价：</th>
       <td>
       <input type="text" name="pdtsprice" value="${prd.pdtsprice}">
       </td>
     </tr>
     <tr>
       <th>库存：</th>
       <td>
       <input type="text" name="pdtstandard" value="${prd.pdtstandard}">
       </td>
     </tr>
     <tr>
       <th>运费：</th>
       <td>
       <input type="text" name="pdtfreight" value="${prd.pdtfreight}">
       </td>
     </tr>
     <tr>
       <th>数量：</th>
       <td>
       <input type="text" name="pdtnumber" value="${prd.pdtnumber}">
       </td>
     </tr>
   	<tr>
		<th>商品展示：</th>
			<td>
				<input type="file" name="file" id="file" onchange="sh()" >
				<input type="hidden" name="pdtpicture" value="${prd.pdtpicture}" >
			</td>
	</tr>
	<tr>
		<th>图片：</th>
			<td>
				<img style="wdith:200px;height:200px" id="show" alt="商品图片" src="${pageContext.request.contextPath}${prd.pdtpicture}">
			</td>
	</tr>		
     <tr>
       <th>商品信息：</th>
       <td>
       <input type="text" name="pdtinfo" value="${prd.pdtinfo}">
       </td>
     </tr>
     <tr>
       <th>状态：</th>
       <td>
			<select name="pdtstate">
						<c:choose>
							<c:when test="${prd.pdtstate==1}">
							   <option value="1" selected="selected">普通商品</option>
						       <option value="0">已下架</option>
						       <option value="2">新品上架</option>
						       <option value="3">推荐商品</option>
						       <option value="4">特色商品</option>
							</c:when>
							<c:when test="${prd.pdtstate==2}">
							   <option value="1">普通商品</option>
						       <option value="0">已下架</option>
						       <option value="2"  selected="selected">新品上架</option>
						       <option value="3">推荐商品</option>
						       <option value="4">特色商品</option>
							</c:when>
							<c:when test="${prd.pdtstate==3}">
							   <option value="1">普通商品</option>
						       <option value="0">已下架</option>
						       <option value="2">新品上架</option>
						       <option value="3"  selected="selected">推荐商品</option>
						       <option value="4">特色商品</option>
							</c:when>
							<c:when test="${prd.pdtstate==4}">
							   <option value="1">普通商品</option>
						       <option value="0">已下架</option>
						       <option value="2">新品上架</option>
						       <option value="3">推荐商品</option>
						       <option value="4"   selected="selected">特色商品</option>
							</c:when>
							<c:otherwise>
							   <option value="1">普通商品</option>
						       <option value="0"  selected="selected">已下架</option>
						       <option value="2">新品上架</option>
						       <option value="3">推荐商品</option>
						       <option value="4">特色商品</option>
							</c:otherwise>
						</c:choose>
			</select>
       </td>
     </tr>
     <tr>
	     <th></th>
	     <td>
	         <input type="submit" value="提交" >
	     </td>
     </tr>
     </table>
     </form>

</body>
</html>