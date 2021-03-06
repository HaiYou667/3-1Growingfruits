<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电子商城后台登录界面</title>
<style>
* {
	margin: 0;
	padding: 0;
	 width:100%;
}

a {
	text-decoration: none;
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
		url(${pageContext.request.contextPath}/images/background/log.png)
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
	height: 320px;
	background: #9acbd2;
}

.con_main {
	height: 320px;
	margin-left: 180px;
	background: #9acbd2;
	width: 950px;
}

.main_right {
	height: 280px;
	width: 345px;
	background: white;
	float: right;
	margin-top: 20px;
	margin-bottom: 20px;
	margin-right: 310px;
}

.log {
	height: 40px;
	width: 90px;
	float: right;
	margin-right: 140px;
	margin-top: 30px;
	font-size: 18px;
	color: red;
	line-height: 30px;
	text-align: center;
}

.log a {
	color: #9acbd2;
}

.log a:hover {
	color: red
}

.u_log {
	height: 190px;
	width: 300px;
	float: right;
	margin-top: 20px;
	margin-right: 10px;
}

#logname {
	height: 35px;
	width: 200px;
}

#pwd {
	height: 35px;
	width: 200px;
}

#for_pwd {
	float: left;
	margin-left: 215px;
	font-size: 15px;
}

#btn {
	height: 35px;
	width: 260px;
	background: #aacacf;
	margin-right: 25px;
	float: right;
	font-weight: bolder;
	color: #6c7678;
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
	color: #9acbd2;
}

.a-button a:hover {
	color: red;
}
</style>
</head>
<body>
	<div id="top">
		<div class="con_top">
			<div class="top_left"></div>
			<div class="top_right">
				<a href="#">登录页面，问卷调查</a>
			</div>
		</div>
	</div>
	<div id="head"></div>
	<div id="main">
		<div class="con_main">
			<div class="main_right">
				<div class="log">
					<a href="#">管理员登录</a>
				</div>
				<div class="u_log">
					<form
						action="${pageContext.request.contextPath}/background/adminlogin"
						method="post">
						<tr>
							<th>账号：</th>
							<td>&nbsp;&nbsp; <input id="logname" type="text" 
								placeholder="用户名" name="adminname" />
							</td>
						</tr>
						<br />
						<br />
						<tr>
							<th>密码：</th>
							<td>&nbsp;&nbsp; <input id="pwd" type="password"
								placeholder="密码" name="adminpwd" />
							</td>
						</tr>
						<br />
						<br /> <span id="for_pwd">
						<!-- 放了一个假的找回密码页面 -->
						<a href="https://passport.baidu.com/?getpass_index">忘记密码</a></span> <br />
						<td><input id="btn" type="submit"
							value="登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录">
						</td>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div id="button">
		<div class="con_button">
			<div class="t_button">
				<div class="a-button">
					<a href="#">关于我们</a>&nbsp;&nbsp| <a href="#">联系我们</a>&nbsp;&nbsp| <a
						href="#">人才招聘</a>&nbsp;&nbsp| <a href="#">商家入驻</a>&nbsp;&nbsp| <a
						href="#">广告服务</a>&nbsp;&nbsp| <a href="#">友情链接</a>&nbsp;&nbsp| <a
						href="#">销售联盟</a>&nbsp;&nbsp|
				</div>
			</div>
		</div>
	</div>
</body>
</html>