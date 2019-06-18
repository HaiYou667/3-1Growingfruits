<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
 	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css.map">
	<meta charset="UTF-8">
	<title>网上购物商城--确认订单</title>
	<style type="text/css">
		#main{width:990px;height: 2200px;margin: auto;}
		.top_top{width: 990px;height: 95px;padding-top: 20px;}
		.top_top img{padding-left: 40px;}
		.top1{float: right; height: 35px;width: 515px;
			border: 4px solid #ff6633;}
		.top1_1{ float: left;width: 74px;
            border-right: 2px solid #e5e5e5;line-height: 27px;text-align: center; }
		.top1_2{height: 27px;}
		.top1_2 span{padding-left: 10px;color: #ccc; line-height: 27px;}
		.top1_2 button{width: 93px;height: 27px;background: #ff6633;color: #fff;font-size: 18px;float: right;border: 0;}
		.top1_2 input{width: 310px;height: 23px;border: 0;}
		.main1{height: 100%;width: 990px;}
	    .main1_top{height: 35px;border-bottom: 3px solid #ccc;}
	    .main1_top ul{list-style: none;}
	    .main1_top ul li{float: left;font-size:23px;border-right: 2px solid #ccc; width: 160px;line-height: 25px;padding-left: 25px;}
		.main1_2{height: 50px;line-height: 50px;width: 990px;}
		.thd{padding-left: 70px;}
		.on{background-color: #CCFFCC;}
		.main1_3{height: 150px;border: 2px solid #ccc;padding-top: 30px;width: 990px;}
		.checkbox{padding-left: 39px;}
		.mainleft{width: 150px;height: 110px;padding-left: 20px;}
		.mainleft1{width: 150px;padding-left: 50px;}
		.mainleft1 img{width:70px ;height:70px ;}
		.mainright {padding-left:65px;}
		.mainright button{background-color: #fff;border:#fff;}
		.price{padding-left:65px;}
		.mainright input{width: 40px;height: 25px;}
		.mm2{height: 50px;width: 990px;margin:0 auto;}
		.main2{background: #ccc;height: 50px;width: 990px;position: fixed;bottom: 0;}
		.main2 span{font-size: 17px;color: red;font-weight: bold;}
       .main2_left{padding-left: 30px;line-height: 50px;float: left;}
       .main2_left a{text-decoration: none;}
       .main2_right{width: 400px;float: right;}
       .main2_right div{padding-left: 20px;float: right;line-height: 50px;}
       .main2_right button{width: 70px;height: 50px;background: #ff6633;}
       .main2_right button a{color: #fff;font-size: 17px;text-decoration:none;}
       .next{width: 80px;height: 50px;background: #ff6633;float:right;}
         .rev{width: 185px;height: 50px;}
	</style>
	<script type="text/javascript">
			window.onload = function(){
			if(!document.getElementsByClassName){
				document.getElementsByClassName=function (cls){
					var ret =[];
					var els = document.getElementsByClassName('*');
					for(var i = 0,len=els.length;i<len;i++){
						if(els[i].className===cls 
						||els[i].className.indexOf(cls+'')>=0
						||els[i].className.indexOf(''+cls+'')>=0
						||els[i].className.indexOf(''+cls)>=0){
						ret.push(els[i]);
						}
					}
					return ret;
				}
			}
			var creaTable=document.getElementById('creaTable');
			var tr =creaTable.children[1].rows;
			var checkInputs = document.getElementsByClassName('check');
			var checkAllInputs = document.getElementsByClassName('check-all');
			var selectedTotal=document.getElementById('selectedTotal');
			var priceTotal=document.getElementById('priceTotal');
			var deleteall=document.getElementById('deleteall');
			
			//计算
			function getTotal(){
				var selected=0;
				var price=0;
				for(var i=0,len=tr.length;i<len;i++){
					if(tr[i].getElementsByTagName('input')[0].checked){
						tr[i].className='on';
						selected +=parseInt(tr[i].getElementsByTagName('input')[1].value);
						price +=parseFloat(tr[i].cells[5].innerHTML)
					}
					else{
						tr[i].className='';
					}
				}
				selectedTotal.innerHTML=selected;
				priceTotal.innerHTML=price.toFixed(2);
			}
			//小计
			function getSubTotal(tr){
				var tds = tr.cells;
				var price = parseFloat(tds[3].innerHTML)
				var count = parseInt(tr.getElementsByTagName('input')[1].value);
				var SubTotal=parseFloat(price*count);
				tds[5].innerHTML=SubTotal.toFixed(2);
			}
			for(var i=0,len=checkInputs.length;i<len;i++){
				checkInputs[i].onclick=function(){
					if(this.className==='check-all check'){
						for(var j=0;j<checkInputs.length;j++){
							checkInputs[j].checked=this.checked;
						}
					}
					if(this.checked==false){
						for(var k=0;k<checkAllInputs.length;k++){
							checkAllInputs[k].checked = false;
						}
					}
					getTotal();
				}
			}
			for(var i =0;i<tr.length;i++){
				tr[i].onclick=function(e){
				 e=e||window.event;
				 var el=e.srcElement;
				 var cls = el.className;
				 var input = this.getElementsByTagName('input')[1];
				 var val = parseInt(input.value);
				 var reduce = this.getElementsByTagName('button')[0];
				 switch(cls){
				 	case 'add':
						input.value=val+1;
						reduce.innerHTML='-';
						getSubTotal(this);	
					break;
					case 'reduce':
						if(val>1){
							input.value=val-1;
						}
						if(input.value<=1){
							reduce.innerHTML='-';
							getSubTotal(this);	
						}
					break;
					case 'delete':
						var conf = confirm('确定要删除?');
						if(conf){
							this.parentNode.removeChild(this);
						}
						break;
				 }
				 getTotal();
				}
				tr[i].getElementsByTagName('input')[1].onkeyup=function(){
					var val=parseInt(this.value);
					var tr = this.parentNode.parentNode;
					var reduce = tr.getElementsByTagName('button')[0];
					if(isNaN(val)|| val<1){
						val=1;
					}
					this.value=val;
					if(val<=1){
						reduce.innerHTML='';
					}else{
						reduce.innerHTML='-';
					}
					getSubTotal(tr);
					getTotal();
				}
			}
			deleteall.onclick=function(){
				if(selectedTotal.innerHTML !='0'){
				var conf=confirm('确定要删除该商品？');
				if(conf){
					for(var i=0;i<tr.length;i++){
						var input=tr[i].getElementsByTagName('input')[0];
						if(input.checked){
							tr[i].parentNode.removeChild(tr[i]);
							i--;
						}
					}
				}
			}
			}
		}


	</script>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">账号管理</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">退出</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">购物商城首页</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a>已买商品</a></li>
            <li><a>我的足迹</a></li>
          </ul>
        </li>
        <li><a href="#">收藏夹</a></li>
        <li><a href="#">卖家中心</a></li>
        <li><a href="#">联系客服</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

	<div id="main">
		<div class="top_top">
			<%-- <img src="${pageContext.request.contextPath}/images/foreground/gou.png"> --%>
			<div class="top1">
				<div class="top1_1">宝贝</div>

				<div class="top1_2">
				  	<!-- <form action=""> -->
				  		<span class="glyphicon glyphicon-search"></span>
				  		<input type="text" name=""  />
					    <button type="submit">搜索</button>
					<!-- </form> -->
				</div>
				
			</div>
		</div>
		
		<form action="${pageContext.request.contextPath}/foreground/addord" method="post"><!--提交订单 1111111111111111111111111111111111111111111111111111111111111111111  -->
		<div>	
			<div class="main1">
				<div class="main1_top">
					<ul>
						<li style="color: #ff6633">确认订单</li>
						<!-- <li><a href="#">降价商品</a></li>
						<li><a href="#">库存紧张</a></li> -->
					</ul>
				</div>
		

			<table id="creaTable" class="main1_2">	
				<thead >
				  <tr>
				    <th class="thd"><img  src="${pageContext.request.contextPath}/images/foreground/gou1.png"></th>		
				    <th class="thd">商品信息</th>
				    <th class="thd">单价</th>
				    <th class="thd">数量</th>
				    <th class="thd">金额</th>
				   <!--  <th class="thd">删除</th> -->
				  </tr>
				</thead>
				<tbody class="main1_3">
				
					<!-- 购物车商品展示 -->
					 <%-- <c:forEach items="${scl}" var="sc">  --%>
						<tr>
							<!-- <td class="checkbox"><input type="checkbox" class="check-one check"/></td> -->
							<td class="mainleft1"><img src="${pageContext.request.contextPath}${sc.pdtpicture}"></td>
							<td class="mainleft">${sc.pdtname} <input type="hidden" name="scid" value="${sc.scid}"/></td>
							<td class="price">${sc.pdtsprice} <input type="hidden" name="pdtid" value="${sc.pdtid}"/></td>
							<td class="mainright">
								<!-- <button class="reduce">-</button>  -->
								 <!-- <input type="text" value="1" class="count-input" />  -->
								 	<!-- <button class="add">+</button>  -->
							${sc.pdtnumber}<input type="hidden" name="ordamount" value="${sc.pdtnumber}"/>	
							</td>
							<td class="mainleft">${sc.totalprice} <input type="hidden" name="omoney" value="${sc.totalprice} "/>
							<input type="hidden" name="userid" value="${suser.userid}">
 							<input type="hidden" name="revname" value="${suser.username}">
 							<input type="hidden" name="oaddr" value="${suser.rcvid}">
							</td>
							<<!-- td class="mainright"><button class="delete">移除</button></td>	 -->
						</tr>
					<%-- </c:forEach>  --%>
					<%--  <tr>
						<!-- <td class="checkbox"><input type="checkbox" class="check-one check"/></td> -->
						<td class="mainleft1" ><img src="${pageContext.request.contextPath}/images/foreground/橙子.jpg"></td>
						<td class="mainleft">大师傅大师傅</td>
						<td class="price">10.40</td>
						<td class="mainright">
							<!-- <button class="reduce">-</button> -->
							<input type="text" value="1" class="count-input" />
							<!-- <button class="add">+</button> -->
						</td>
						<td class="mainleft">10.40</td>
						<td class="mainright"><button class="delete">移除</button></td>
					</tr> --%>
				</tbody>
			</table>
			
			<br>
			
			<div>
			 <table style="border:1px #ccc solid;width:100%;height:250px; ">
			 	<tr >
			 		<td style="text-align:right;">收货人姓名：</td>
			 		<td style="text-align:center;">
						<input type="text" name="revname" value="${suser.username}"/>
					</td>
			 	</tr>
			 	<br>
			 	<tr >
			 		<td style="text-align:right;">联系方式：</td>
			 		<td style="text-align:center;">
						<input type="text" name="usertel" value="${suser.usertel}"/>
					</td>
			 	</tr><br>
			 	<tr >
			 		<td style="text-align:right;">详细地址：</td>
			 		<td style="text-align:center;">
						<input type="text" name="oaddr" class="rev"/>
					</td>
			 	</tr>
			 	<tr >
			 		<td style="text-align:right;">给卖家留言：</td>
			 		<td style="text-align:center;">
						<input type="text" name="ordcomment" class="rev"/>
					</td>
			 	</tr>
			 	
			 	
			 </table>
			 <br>
			请选择：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;配送方式：
				<select name="dlvid">
					<c:forEach items="${dlvlist}" var="dlv">
						<option value="${dlv.dlvid}">${dlv.dlvname}</option>
					</c:forEach>
				</select>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			支付方式：<select name="payid">
						<c:forEach items="${paylist}" var="pay">
							<option value="${pay.payid}">${pay.payname}</option>
						</c:forEach>
					</select>
						
			</div>
		</div>
	</div>	
	<div class="mm2">	
	<div class="main2">	
		<!-- <label class="main2_left"><input type="checkbox" class="check-all check">&nbsp;&nbsp;全选</label> -->
		<div class="main2_left"><!-- <button id="deleteall">删除</button> -->&nbsp;&nbsp;&nbsp;
			 <a href="#">移入收藏夹</a>&nbsp;&nbsp;&nbsp;
			 <a href="#">分享</a>	
		</div>
		<div class="main2_right">
			<input type="hidden" name="omoney" value="${sc.pdtsprice}"/>
			<input type="hidden" name="osmoney" value="${sc.totalprice}"/>
			<input type="hidden" name="onum" value="${sc.pdtnumber}"/>
			<!-- <div><button> --><!-- <a href="#"> --><input type="submit" class="next" value="下一步"><!-- </a> --><!-- </button></div> -->
			<!-- <div>合计(不含运费):<span  id="priceTotal">0.00</span></div> -->
			<!-- <div id="selected">已选商品:<span  id="selectedTotal">0</span>件</div> -->
		</div> 
   	</div>
 
</div>
 </form>
</div>
</body>
</html>