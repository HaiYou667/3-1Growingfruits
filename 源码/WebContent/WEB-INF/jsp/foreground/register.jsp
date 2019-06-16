<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript">

//验证用户名是否可用 
var check=function(){
	var username=$("#username").val();
	$.ajax({
		type:"post",
		data:"username="+username,
		dataType:"json",
		url:"${pageContext.request.contextPath}/foreground/register/check",
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

$(function() {
	//用户名
  	$("#username").focus(function(){
  		 $("#nameinfo").html('用户名至少为两个字符。');
	});
	$("#username").blur( function () {
        if($("#username").val()==""){
        	$("#nameinfo").html('<font color="red">不能为空！</font>');
        }else{
        	var re=/^[A-Za-z\u4E00-\u9FA5]{2,}$/;
        	//alert(re.test($("#username").val()));
        	if(!re.test($("#username").val())){
  		 	$("#nameinfo").html('<font color="red">输入内容格式不正确！</font>');
  				}else{
		 			$("#nameinfo").html('OK');
		 	}
        }		 
    });
    //密码
    $("#pwd").focus(function(){
  		 $("#pwdinfo").html('至少6个字符。');
	});
	$("#pwd").blur( function () {
        if($("#pwd").val()==""){
        	$("#pwdinfo").html('<font color="red">不能为空！</font>');
        }else{
        	var re=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$/;
        	// alert(re.test($("#pwd").val()));
        	if(!re.test($("#pwd").val())){
  		 	$("#pwdinfo").html('<font color="red">格式不正确！</font>');
  				}else{
		 		$("#pwdinfo").html('<font color="red">OK！</font>');
		 	}
        }	 
    });
//确认密码
    $("#pwd2").focus(function(){});
	$("#pwd2").blur( function () {
     if ($("#pwd").val()!=$("#pwd2").val()) {
        	$("#pwd2info").html('<font color="red">两次密码不一致！</font>')
        } else{
        	$("#pwd2info").html('<font color="red">OK！</font>')
        } 		 
    });
 
 //电子邮箱
    $("#email").focus(function(){
  		 $("#emailinfo").html('输入正确的邮箱格式');
	});
	$("#email").blur( function () {
        if($("#email").val()==""){
        	$("#emailinfo").html('<font color="red">不能为空！</font>');
        }else{
        	var re=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
        	//alert(re.test($("#email").val()));
        	if(!re.test($("#email").val())){
  		 	$("#emailinfo").html('<font color="red">您输入的格式不正确！</font>');
  				}else{
		 			$("#emailinfo").html('OK');
		 	}
        }
  	});	 

    //电话号码
    $("#tel").focus(function(){
  		 $("#telinfo").html('至少为11位手机号');
	});
	$("#tel").blur( function () {
        if($("#tel").val()==""){
        	$("#telinfo").html('<font color="red">不能为空！</font>');
        }else{
        	var re=/^[1][3,4,5,7,8][0-9]{9}$/;
        	//alert(re.test($("#username").val()));
        	if(!re.test($("#tel").val())){
  		 	$("#telinfo").html('<font color="red">您输入的号码有误</font>');
  				}else{
		 			$("#telinfo").html('OK');
		 	}
        }
  	});	 

 }); 


	//验证用户名是否可用 
	var check=function(){
		var username=$("#username").val();
		$.ajax({
			type:"post",
			data:"username="+username,
			dataType:"json",
			url:"${pageContext.request.contextPath}/foreground/check",
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
<style>
* {
	margin: 0;
	padding: 0;
	width: 100%;
}

a {
	text-decoration: none;
}
input {
	background: none transparent scroll repeat 30% 20%;
	border: 1px solid #00c65d;
}
#top {
	height: 83px;
}
.con_top {
	height: 83px;
	margin-left: 180px;
	width: 950px;
}

.top_left {
	width: 230px;
	height: 83px;
	float: left;
	background:
		url(${pageContext.request.contextPath}/images/foreground/1.png)
}

.top_right {
	width: 120px;
	height: 83px;
	float: right;
	font-size: 12px;
	text-align: center;
	color: #ccc;
}

.top_right a {
	color: #899283;
}

.top_right a:hover {
	color: red;
}

#head {
	height: 25px;
}

.con_head {
	height: 25px;
	margin-left: 180px;
	background: white;
	width: 950px;
	font-size: 6px;
	color: #b8b774;
	text-align: center;
	line-height: 20px;
}

#main {
	height: 800px;
	background: #c1de9b;
}
.con_main{
                height: 700px;
                width: 700px;
                float:left;
                margin-left: 280px;
                margin-top: 30px;
                margin-right: 100px;
                background: white;
              }
#Table {
            float: right;
            margin-right:280px;
            margin-top:30px;
            font-size: 18px;
          }


#Table th {
	height: 30px;
	line-height: 30px;
	text-align: right;
}

#Table td {
	height: 30px;
	line-height: 30px;
	width: 400px;
}

#username, #pwd1, #pwd2, #sex, #usertruename, #tel, #userstate, #age,
	#mail, #useraddress {
	height: 23px;
	font-size: 16px;
}

#useraddress {
	height: 23px;
	width: 300px;
	font-size: 14px;
}

#btn {
	height: 40px;
	width: 180px;
}

#button {
	height: 209px;
}

.con_button {
	height: 120px;
	margin-left: 180px;
	width: 950px;
}

.t_button {
	height: 60px;
	width: 950px;
}

.t_button a {
	height: 30px;
	text-decoration: none;
	text-align: center;
	font-size: 18px;
	margin-top: 10px;
}

.a-button {
	line-height: 60px;
	text-align: center;
}

.a-button a {
	color: #64954b
}

.a-button a:hover {
	color: red;
}

span {
	font-size: 14px;
	color: #F00;
	font-weight: bold;
}
</style>
</head>
<body>
	<form action="${pageContext.request.contextPath}/foreground/register" method="post">
		<div id="top">
			<div class="con_top">
				<div class="top_left"></div>
				<div class="top_right">
					<a href="#">欢迎新用户注册</a>
				</div>
			</div>
		</div>

		<div id="head">
			<div class="con_head">依据《网络安全法》，为保障您的账户安全和正常使用，请尽快完成手机号验证！
				新版《果蔬隐私政策》已上线，将更有利于保护您的个人隐私。</div>
		</div>
					
	<div id="main">
	    <div class="con_main">
	       <table id="Table">
          
       	  <tr>  
	          <th>用户名：</th>
	          <td><input type="text" name="username" id="username">
	          	<span id="nameinfo"></span>
	          <div id="msg"></div>
	          </td>
	        </tr>
	        
	        <tr>
	          <th>密码：</th>
	          <td><input type="password" name="userpwd" id="pwd"/> 
	          <span id="pwdinfo"></span>  
	          </td>
	        </tr>
	        <tr>
	          <th>确认密码：</th>
	          <td><input type="password" name="userpwd2" id="pwd2"/ >
	          	<span id="pwd2info"></span>
	          <div id="msg"></div>
	          </td>
	        </tr>
	        <tr>
	          <th>真实姓名：</th>
	          <td><input type="text" name="usertruename" id="usertruename"  /></td>
	        </tr>
	        <tr>
	          <th>性别：</th>
	          <td><select id="sex" name="usersex">
	              <option value="1">男</option>
	              <option value="2">女</option>
	              <option value="0">保密</option>
	          </select></td>
	        </tr>
	        <tr>
	          <th>年龄：</th>
	          <td><input type="text" name="userage" id="age" /></td>
	        </tr>
	        <tr>
	          <th>用户状态：</th>
	          <td><select name="userstate" id="userstate">
	              <option value="1">可用</option>
	              <option value="0">不可用</option>
	          </select></td>
	        </tr>
	        <tr>
	          <th>E-mail：</th>
	          <td><input type="text" name="useremail" id="email" />
	            <span id="emailinfo"></span>
	          </td>
	        </tr>
	        <tr>
	          <th>电话号码：</th>
	          <td><input type="text" name="usertel" id="tel"/>
	            <span id="telinfo"></span>
	          </td>  
	        </tr>
	        <br><br>
        <tr>
          <th></th>
          <td><input id="btn" type="submit" onclick="javascript:return checkinput();"
          value="注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;册"></td>
        </tr>
       </table>
    </div>
	</div>			
		<div id="button">
			<div class="con_button">
				<div class="t_button">
					<div class="a-button">
						<a href="#">关于我们</a>&nbsp;&nbsp| 
						<a href="#">联系我们</a>&nbsp;&nbsp|
						<a href="#">人才招聘</a>&nbsp;&nbsp| 
						<a href="#">商家入驻</a>&nbsp;&nbsp|
						<a href="#">广告服务</a>&nbsp;&nbsp|
					    <a href="#">友情链接</a>&nbsp;&nbsp|
						<a href="#">销售联盟</a>&nbsp;&nbsp|

					</div>

				</div>
			</div>
		</div>
	</form>
</body>
</html>