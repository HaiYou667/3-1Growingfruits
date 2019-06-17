<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加商品</title>
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
     <h1>增加商品</h1>
     <form action="${pageContext.request.contextPath}/background/product/add" method="post" enctype="multipart/form-data">
     <table style="width:100%;margin: auto;">
     <tr>
       <th>商品名称：</th>
       <td>
       <input type="text" name="pdtname" >
       </td>
     </tr>
      <tr>
       <th>商品类别：</th>
       <td>
        <select name="ptid">
          		<c:forEach items="${plist}" var="plist">
          		 <option value="${plist.ptid}">${plist.ptname}</option>
          		</c:forEach>
          	
       </select>
       </td>
     </tr>
     <tr>
       <th>进价：</th>
       <td>
       <input type="text" name="pdtprice" >
       </td>
     </tr>
     <tr>
       <th>售价：</th>
       <td>
      <input type="text"  name="pdtsprice">
    </td>
    </tr>
     <tr>
       <th>库存：</th>
       <td>
       <input type="text" name="pdtstandard">
       </td>
     </tr>
     <tr>
       <th>运费：</th>
       <td>
       <input type="text" name="pdtfreight">
       </td>
     </tr>
     <tr>
       <th>数量：</th>
       <td>
       <input type="text" name="pdtnumber">
       </td>
     </tr>
     <tr>
		<th>商品展示：</th>
			<td>
				<input type="file" name="file" id="file" onchange="sh()" />
			</td>
    </tr>
     <tr>
		<th>图片：</th>
		<td>
		 <img style="width:100px;height:100px" alt="" src="#" id="show" >
		</td>
	</tr>		
     <tr>
       <th>商品信息：</th>
       <td>
       <input type="text" name="pdtinfo" style="height: 80px;">
       </td>
     </tr>
     <tr>
       <th>状态：</th>
       <td>

	       <select name="pdtstate">
		       <option value="1">普通商品</option>
		       <option value="2">新品上架</option>
		       <option value="3">推荐商品</option>
		       <option value="4">特色商品</option>
		       <option value="5">特价商品</option>
		       <option value="6">限时抢购</option>
		       <option value="0">已下架</option>
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