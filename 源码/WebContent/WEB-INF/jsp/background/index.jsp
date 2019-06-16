<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电子商城后台管理 </title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
 	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css.map">
	<style type="text/css">
		*{margin:0;padding: 0;}
		#top {width: 1519px;;height: 90px;background:#e6e6e6; background-size: 1348px;height: 90px;}
		.top_1{float: left; width: 808.8px;height: 80px; margin-left:355px;}
		.top_1 ul li{float: left;margin-left: 67px;list-style:none;margin-top: 15px;}
		.top_1 img{width: 50px;height: 45px;margin-left: 20px;}
		#top a{ margin-top: 10px;margin-left: 8px;float: right;}
		.top_1 a{text-decoration: none;font-size: 10px;color: #000;margin-right: 6px;}
		
		
		
		#main{width: 1519px;height: 30px;}
		.main_left{float: left;width: 202.2px;height: 60px;
			margin-top: -30px;text-align: center;background:#666666;background-size: cover;border-radius:3px;}
		.main_left a{font-size: 30px;text-decoration: none;margin-top: 10px;color: #fff;font-family:YouYuan;font-weight: bold;}
		.main_left p{color: #fff;}
		.main_right{float: right;height: 30px;width:1316.8px;background-image: url(${pageContext.request.contextPath}/images/background/tiao.png); }
		.main_right a{text-decoration: none;color: #000;font-weight: bold;}
		.main_right a span{margin-left: 30px;margin-top: 7px;color: #000;}
		
		#nav{width: 1519px;height: 610px;}
		.nav_left{float: left;width: 202.2px;height: 610px;
			background:#cccccc;background-size: cover;}
		.nav_right{float: right;height: 610px;width: 1316.8px;background:#e6e6e6;}
		.nav1 table tr{border:1px solid black;}
		.nav-stacked{margin-left: 20.22px;margin-top: 30px;}
		.nav-stacked>dt{float: none;width: 161.76px;text-align: center;background:#666666;background-size:height:30px; height: 30px;font-size: 18px;color: #fff;line-height: 30px;border-radius: 6px;}
		.nav-stacked>div{float: none;width: 161.76px;text-align: center;font-size: 14px;line-height: 35px;}	
		#showDate{margin-left: 700px;font-weight: bold;}
		dd a{
		  /* font-size:20px; */
		  color: #31392c;
		}
	</style>
	<script>
	  $(function(){
	    	$("dt").each(function(index,element){
	    		$(this).click(function(){
	    			var name = $(this).attr("name");
	    			$("[data='"+name+"']").slideToggle(500);
	    		});
	    	});
	    });
	  $(function(){ 
			setInterval("getTime();",1000); //每隔一秒执行一次 
			}); 
			//取得系统当前时间 
			function getTime(){ 
			var myDate = new Date(); 
			var date = myDate.toLocaleDateString(); 
			var hours = myDate.getHours(); 
			var minutes = myDate.getMinutes(); 
			var seconds = myDate.getSeconds(); 
			$("#showDate").html(date+" "+hours+":"+minutes+":"+seconds); //将值赋给div 
			} 
	</script>
</head>
<body>
	<div id="top">

		<div class="top_1">
		<ul>
			<li>
				<img src="${pageContext.request.contextPath}/images/background/4.png">
				<br>
				<a>商品管理</a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/images/background/8.png">
				<br>
				<a>邮箱管理</a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/images/background/6.png">
				<br>
				<a></a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/images/background/7.png">
				<br>
				<a>搜索</a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/images/background/12.png">
				<br>
				<a>关于我们</a>
			</li>		
		</ul>
		</div>	
			<a href="#"> 帮助</a>
			<a href="#">管理</a>
			<a href="${pageContext.request.contextPath}/background/admin">退出</a>
	</div>
	<div id="main">
		<div class="main_left">
			<a href="">管理首页</a>
			<br>
			<p>你好！欢迎${ad.admintruename}登录</p>
		</div>
		<div class="main_right">
			<a><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;当前位置 >>首页</a>
			<span id="showDate"></span>
		</div>
	</div>
	<div id="nav">
		<div class="nav_left">	
			<dl class="nav-stacked">
			    <c:forEach items="${list}" var="fun">
       		      <c:if test="${fun.funpid==\"-1\"}">
       		          <dt name="dt${fun.funid}" >${fun.funname}</dt>
       		      </c:if>
            	<div data="dt${fun.funid}">
            	<c:forEach items="${list}" var="child">
       		      <c:if test="${child.funpid==fun.funid}">
       		            <dd>
       		              <a href="${pageContext.request.contextPath}${child.funurl}" 
       		              target="nav_right" style="text-decoration:none">${child.funname}</a>
       		            </dd> 
       		        </c:if>
       		   </c:forEach>
       		   </div> 
       		   </c:forEach>  	            
            </dl>
		</div>
		<div class="nav_right">	
		       <iframe name="nav_right" width="100%" height="100%" scrolling="auto"></iframe>	
		</div>
	</div>	
</body>
</html>