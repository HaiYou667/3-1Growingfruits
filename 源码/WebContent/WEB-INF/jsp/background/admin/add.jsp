<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>增加管理员</title>
<script type="text/javascript">
	function checkinput(){
		var flag = true;
		var name = document.getElementById("adminname").value;
		if(name.length==0){
			flag = false;
			alert("请输入用户名");
		}
		var adminpwd = document.getElementById("adminpwd").value;
		var adminpwd1 = document.getElementById("adminpwd1").value;
		if(adminpwd!=adminpwd1){
			document.getElementById("msg").innerHTML="两次密码不一致！";
			document.getElementById("adminpwd").value();
			 document.getElementById("adminpwd1").value();
			rtn = false;
		}
		return rtn;
	}
	//验证用户名是否可用
	var check=function(){
		var adminname=$("#adminname").val()
		$.ajax({
			type:"post",
			data:"adminname="+adminname,
			dataType:"json",
			url:"${pageContext.request.contextPath}/background/admin/check",
			success: function(m){
				if(m.flag=="0"){
					$("#adminname").focus();
					$("#msg").html("<font color='red'>"+m.msg+"</font>");
				}else{
					$("#msg").html("<font color='blue'>"+m.msg+"</font>");
				}
			}
		});
	}

</script>
</head>
<body>
     <h1>增加管理员</h1>
     <form action="${pageContext.request.contextPath}/background/admin/add" method="post">
     <table style="width:100%;border: 1px solid;">
     <tr>
       <th>管理员姓名：</th>
       <td>
       <input type="text" name="adminname" id="adminname" onblur="check()">
       <div id="msg"></div>
       </td>
     </tr>
     <tr>
       <th>管理员密码：</th>
       <td>
       <input type="password" name="adminpwd" id="adminpwd">
       </td>
     </tr>
     <tr>
       <th>管理员重复密码：</th>
       <td>
       <input type="password" name="adminpwd1" id="adminpwd1">
       <div id="msg"></div>
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
       <select name="adminsex">
		         <option> 男</option>
		         <option> 女</option>
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
       <select name="adminstate">
       <option value="1">可用</option>
       <option value="0">锁定</option>
       </select>
       </td>
     </tr>
     <tr>
	     <th></th>
	     <td>
	         <input type="submit" value="提交" onclick="javascript:return checkinput();">
	     </td>
     </tr>
     </table>
     </form>
</body>
</html>