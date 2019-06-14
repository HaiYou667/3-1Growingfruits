<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加用户</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript">
function checkinput(){
	var pwd = document.getElementById("userpwd").value;
	var pwd2 = document.getElementById("userpwd2").value;
	var rtn = true;
	if(pwd!=pwd2){
		document.getElementById("msg").innerHTML="两次密码不一致！";
		document.getElementById("userpwd").value="";
		document.getElementById("userpwd2").value="";
		rtn = false;
	}
	return rtn;
}

//验证用户名是否可用 
var check=function(){
	var username=$("#username").val();
	$.ajax({
		type:"post",
		data:"username="+username,
		dataType:"json",
		url:"${pageContext.request.contextPath}/sys/user/check",
		success: function(m){
			if(m.flag=="0"){
				$("#username").focus();
				$("#msg").html("<font color='red'>"+m.msg+"</font>");
			}else{
				$("#msg").html("<font color='green'>"+m.msg+"</font>");
			}
		}		
	});
}
</script>
</head>
<body>
      <h1>用户管理>>增加用户</h1>
        <form action="${pageContext.request.contextPath}/foreground/user/add" method="post">
          <table>
             <tr>
             <th>用户名：</th>
               <td>
               <input type="text" name="username" id="username" onblur="check();">
               <div id="msg"></div>
               </td>
             </tr>
          <tr>
             <th>用户密码：</th>
               <td>
               <input type="password" name="userpwd" id="userpwd" >
               </td>
             </tr>
             <tr>
             <th>重复密码：</th>
               <td>
               <input type="password" name="userpwd2" id="userpwd2">
               <div id="msg"></div>
               </td>
             </tr>
             <tr>
             <th>用户姓名：</th>
               <td>
               <input type="text" name="usertruename">
               </td>
             </tr>
             <tr>
             <tr>
			       <th>用户性别：</th>
			       <td>
			      
					          男<input type="radio" name="sex">
					           女<input type="radio" name="sex">
			       
			       </td>
             </tr>
              <tr>
             <th>用户年龄：</th>
               <td>
               <input type="text" name="userage">
               </td>
             </tr>
              <tr>
             <th>用户e-mail：</th>
               <td>
               <input type="text" name="email">
               </td>
             </tr>
             <tr>
             <th>用户状态：</th>
               <td>
               <select name="rolestate">
                  <option value="1">正常</option>
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