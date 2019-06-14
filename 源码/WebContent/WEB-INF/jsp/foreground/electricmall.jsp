<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>R4096商城欢迎您</title>
<!-- ${pageContext.request.contextPath}/images/foreground/other/2.jpg-->
<style type="text/css">
*{
	margin:0;padding:0;
}

#nav{
	/* width: 100%; */
	width:1519px;
	height: 32px;
	background: #e3e4e5;
}
#header_img{
     /* width: 100%; */
     width:1519px;
     height: 80px;
     background: #7be9ce;
}
.header_img_jpg{
	margin :0 auto;
	width: 1190px;
	height: 80px;
}
#heder_one{
	/* width: 100%; */
	width:1519px;
	height: 164px;
	background: white;
}
.nav_font{
	margin :0 auto;
}
.ul1 li{
	float: right;
	width: 100px;
	height: 32px;
	margin-right:22px;
}
.ul1{
	list-style: none;
}
.ul2{
	list-style: none;
}
a{
	text-decoration:none;
}
.nav_middle{
	/* width: 60%; */
	width:1190px;
	/* height: 100%; */
	height: 32px;
	margin :0 auto;
}
.ul1 a span{
	font-size:12px 
	color:#999999;
	text-align: center;
	line-height: 32px;
}
.heder_one_middle{
	width:1190px;
	/* height: 100%; */
	height: 164px;
	margin :0 auto;
}
#productname{
	border: solid 1px #00c65d;
	margin-top: 41px;
	width: 372px;
	height: 38px;
	margin-left:432px;
}
input{
	background:none transparent scroll repeat 0% 0%;
	border:1px solid #00c65d;
	}
.search{
	width: 80px;
	height: 40px; 
	background: #00c65d;
	font-size: 12px;
	color: white;
}
.myshopping{
	height: 40px; 
	background: #f9f9f9;
	font-size: 12px;
	color: #666666;
}
.black{
	width: 190px;
	height: 40px;
	background: #222222;
	float: left;
	margin-top:124px;
	font-size: 16px;
	color: white;
	text-align: center;
	line-height: 40px;
}
#content1{
    width:1519px;
	/* width: 100%; */
	height: 2500px;
    background: #f0f0f8;
}
.content1_middle{
	width: 1190px;/* nn nnnnnnnnnnnnnnnnnnnnnnnnnnnnnn */
	height: 400px;
	background: white;
	margin :0 auto;
}
.menu{
    height:400px;
	/* height: 100%; */
	width:190px;
	float: left;
}
/* .colid_img{
	width: 800px;
	height: 100%;
} */
  #banner{  
    width:800px;  
    height:400px;   
    position:relative;/*相对定位,相对于.btn按钮*/  
    text-align:left;
    float: left;  
  }  
  .pic image {  
    display:block;/*默认有图片不显示*/  
    position:absolute;/*绝对定位.对应的是.pic这个div*/  
    top:0px;  
    left:0px;  
  }  
  .pic a{  
    display:none;  
  }  
  .pic{        /*专门显现图片区*/  
    position:relative;/*相对定位.对应.pic img*/  
    /* border:1px solid red;  */ 
  }  
  .btn{  
    width:150px;  
    height:18px;  
    position:absolute;/*绝对定位相对于banner div*/  
    bottom:5px;  
    right:290px;  
  }  
  .btn ul li{  
    background-color:#000000;/*黑色*/  
    color:#ffffff;  
    list-style-type:none;  
    width:18px;  
    height:18px;  
    float:left;  
    border-radius:9px;/*变成圆的*/  
    text-align:center;  
    line-height:18px;  
    cursor:pointer;/*鼠标移动变手指状态*/  
    margin-left:5px;  
  }  
.btn ul li.one{  
   background-color:#ff9966;  
  } 
.navgite{
	width: 900px;
	height: 40px;
	background: #c5f4d0;
	float: right;
	margin-right: 100px;
	margin-top: 43px;
}
.ul2 li{
	width: 180px;
	float: left;
	line-height: 40px;
	text-align: center;
}
.ul2 li:hover{
background: white;
}
.ul2 li a{
	font-size: 13px;
	color: #005448;
}
.menu_right{
width: 200px;
/* height: 100%; */
height:400px;
float:left;
}
.news_green{
	width: 200px;
	height: 5px;
	float: left;
}
.news{
	width: 200px;
	height: 40px;
	float: left;
	text-align: center;
	line-height: 40px;
}
.ul_li{
	width: 200px;
	height: 94px;
	float: left;
}
.ul_li ul li a{
 font-size: 15px;
}
.ul3{
	list-style-position: inside;
	list-style-image: url(${pageContext.request.contextPath}/images/foreground/point.png);
}
.right_news{
	width: 200px;
	height: 261px;
	float: left;
}
#content1_middle_bottome{
	width: 1190px;
	height: 136px;
	margin :0 auto;
}
.bg1{
	width: 1519px;
	height: 422px;
	background-image: url(${pageContext.request.contextPath}/images/foreground/other/bg1.png);
	background-repeat: no-repeat;
}
.tesegou{
	width: 100px;
	height: 50px;
	margin:0 auto;
}
.tesegou span{
  font-size: 36px;
  color: white;
}
.bg3{
	width: 1190px;
	height: 584px;
	background-image: url(${pageContext.request.contextPath}/images/foreground/other/bg4.jpg);
	margin:0 auto;
	margin-top: 100px;
}
.meishi{
	margin:0 auto;
	width: 150px;
	height: 50px;
	margin-top: 20px;
}
.frurit1 div{
	width: 160px;
	height: 160px;
	background: black;
	margin-left: 65px;
	float: left;
}
.frurit1 div img{
	width: 160px;
	height: 160px;
}
.frurit2 div{
	width: 160px;
	height: 160px;
	background: black;
	margin-left: 65px;
	float: left;
	margin-top: 60px;
}
.frurit2 div img{
	width: 160px;
	height: 160px;
}
.price div{
	width: 160px;
	height: 70px;
	float: left;
	margin-left: 65px;
	/* background:#d3f8cf; */
}
.pricee div{
	width: 160px;
	height: 70px;
	float: left;
	margin-left: 65px;
	/* background: #d3f8cf; */
}
.price1{
	font-size: 14px;
	color: #1c1412;
}
#shenlinshigan{
	/* width: 100%; */
	width:1519px;
	height: 735px;
	background: white;
}
.shenlinbg{
	width: 1214px;
	height: 72px;
	margin:0 auto;
}
.more_frurit{
	width: 1190px;
	height: 301px;
	/* background: black; */
	margin:0 auto;
}
.more_frurit_left{
	width: 201px;
	/* height: 100%; */
	height:301px;
	float: left;
	background: #31b35a;
}
.more_frurit_middle{
width: 599px;
height: 301px;
float: left;
}
.more_frurit_right{
	width: 390px;
	/* height: 100%; */
	height:301px;
	float: left;
}
.more_frurit_right img{
	width: 390px;
	height: 301px;
}
.fresh_frurit{
	/* width: 100%; */
	width:201px;
	height: 40px;
	font-size: 30px;
	color: white;
	margin-top :20px;
}
.fresh_frurit1{
	width: 150px;
	height: 20px;
	font-size: 13px;
	color: white;
	margin-left: 15px;
	margin-top:20px;
}
#frurit_2{
	width: 1190px;
	height: 362px;
	margin:0 auto;
}
.frurit_2_{
	width: 1190px;
	height: 200px;
}
#green{
    width:1519px;
	/* width:100%; */
	height: 480px;
	background: #00c65d;
}
.bolang{
	/* width: 100%; */
	width:1519px;
	height: 12px;
	background-image: url(${pageContext.request.contextPath}/images/foreground/other/bolang.png);
	background-repeat:repeat;
}
.green1{
	width: 1190px;
	height: 146px;
	margin:0 auto;
}
.footer{
	width: 1190px;
	height: 280px;
	margin:0 auto;
	margin-top: 10px;
}
.gouwuzhinan{
width: 297.5px;
/* height: 100%; */
height:280px;
float: left;
}
.peisongfangshi{
width: 297.5px;
/* height: 100%; */
height:280px;
float: left;
}
.service{
width: 297.5px;
/* height: 100%; */
height:280px;
float: left;
}
.contect{
width: 297.5px;
/* height: 100%; */
height:280px;
float: left;
}
.banquan{
	/* width: 100%; */
	width:1519px;
	height: 30px;
}
.ul4 li a{
font-size: 13px;
color: white;
}
.ul5 li a{
font-size: 13px;
color: white;
}
.ul6 li a{
font-size: 13px;
color: white;
}
.ul7 li a{
font-size: 13px;
color: white;
}
.fff{
	width: 160px;
	height: 160px;
	float: left;
	margin-left: 65px;
	background: black;
}
.frurit_2_{
	margin-top:30px;
}
.pricee1{
	width: 1190px;
	height: 150px;
}
.pricee11,.pricee21,.pricee31,.pricee41,.pricee51{
	width: 160px;
	height: 80px;
	margin-left: 65px;
	/*此处写*/
	float: left;
}
dt{
	/* width: 100%; */
	width:190px;
	height: 40px;
	background: #f0f0f8;
	text-align: center;
	line-height: 40px;
}
dd{<!-------------------------------------------------->
    width:190px;
	/* width: 100%; */
	height: 40px;
	font-size: 15px;
}
.ul8 li{
  width: 60px;
  height: 30px;
  line-height: 30px;
  float: left;
  margin-left: 20px;
  border-radius:10px;
  text-align: center;
}
.ul8{list-style: none;}
.ul8 li:hover{background: white;}
.ul8 li a{
	font-size: 12px;
	color: black;
}
.ul1 li{
	text-align: center;
}
.ul1 li a{
	font-size: 13px;
	color: #999999
}
.ul1 li:hover{background:white;} /* .dd2 .dd3 .dd4 .dd5 .dd6 .dd7 */
dd a{
color: #999999;
}
dd :hover{
	color: #f0f0f8;
}
</style>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>  
  <script>  
        $(function(){  
            $("#all li").mouseover(function(){//鼠标进入离开事件  
                $(this).css("background-color","#ff00ff").siblings().css("background-color","white");  
                $(this).css({"background-color":"red","font-size":"9px"}).siblings().hide();  
            });  
  
            $(window).scroll(function(){//鼠标滚动事件  
                var _top=$(window).scrollTop();//获得鼠标滚动的距离  
            });  
              
            //手动播放图片  
            $(".btn ul li").hover(function(){  
                  
                $(this).addClass("one").siblings().removeClass("one");  
                index=$(this).index();  
                i=index;  
                $(".pic a").eq(index).stop().fadeIn(500).show().siblings().stop().fadeIn(500).hide();    
                });  
  
            //自动播放图片  
            var i=0;  
            var t=setInterval(autoplay,2000);  
            function autoplay(){  
                i++;  
                if(i>5)i=0;        
                $(".btn ul li").eq(i).addClass("one").siblings().removeClass("one");  
                $(".pic a").eq(i).stop().fadeIn(500).show().siblings().stop().fadeIn(500).hide();   
            }  
  
                $("#banner").hover(function(){  
                    clearInterval(t);  
                },function(){  
                    t=setInterval(autoplay,2000);  
                });  
            });  
  </script>  
</head>
<body>
	  <div id="nav">
	  	<div class="nav_middle">
 			 <ul class="ul1">
				<li><a href="#"><span>我的购物车</span></a></li>
				<li><a href="#"><span>我的R4096</span></a></li>
				<li><a href="#"><span>我的订单</span></a></li>
				<li><a href="#"><span style="color: red;">免费注册</span></a></li>
				<li><a href="#"><span>你好，请登录</span></a></li>
 			 </ul>
 		</div>
	  </div>
	  <div id="header_img">
	  	<div class="header_img_jpg">
           <a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/header_img.jpg" width="1190" height="80"></a>        </div>
	  </div>

	  <div id="heder_one">
	  	 <div class="heder_one_middle">
			<input type="text" name="productname" id="productname"> 
			<input class="search" type="button" name="" value="搜索"> 
			<input class="myshopping" type="button" name="" value="我的购物车">
			<div class="black">
				鲜果分类
			</div>
			<div class="navgite">
               <ul class="ul2">
					<li><a href="#">首页</a></li>
					<li><a href="#">特价商品</a></li>
					<li><a href="#">推荐商品</a></li>
					<li><a href="#">新闻资讯</a></li>
					<li><a href="#">联系我们</a></li>
				</ul>
			</div>
	  	 </div>
	  </div>




	  <div id="content1">
		  <div class="content1_middle">
		  	<div class="menu">
				<dl> 
                     <dt>国产南北水果</dt>
                     <hr>
                     <dd class="dd1"><a href="#">南方水果</a></dd>
                     <dd class="dd2"><a href="#">北方水果</a></dd>
                     <dd class="dd3"><a href="#">礼盒套餐</a></dd>
                     <hr>
				</dl>
				<dl> 
                     <dt>进口水果</dt>
                     <hr>
                     <dd class="dd4"><a href="#">来自异国的美味</a></dd>
                     <dd class="dd5"><a href="#">来自异国的美味</a></dd>
                     <hr>
				</dl>
				<dl> 
                     <dt>限时优惠</dt>
                     <hr>
                     <dd class="dd6"><a href="#">59元3件</a></dd>
                     <dd class="dd7"><a href="#">满199减100</a></dd>
				</dl>
		  	</div>
   
		  	<div id="banner">
		  		<div class="pic">
				<a href="#" style="display:block"><img src="${pageContext.request.contextPath}/images/foreground/other/1.jpg" width="800" height="400"/></a>  
                <a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/2.jpg"/></a>  
                <a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/3.png"/></a>  
                <a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/4.png"/></a>				</div>
				<div class="btn">  
                 <ul>  
                <li class="one">1</li>  
                <li>2</li>  
                <li>3</li>  
                <li>4</li>  
                </ul>  
                </div>  
			</div>
			<div class="menu_right">
				<div class="news_green"><img src="${pageContext.request.contextPath}/images/foreground/other/green.png" width="200" height="5" style="margin-bottom:395px; float: left;"></div>
				<div class="news">-&nbsp;生鲜头条&nbsp;-</div>
				<div class="ul_li">
					<ul class="ul3">
						<li><a href="#">果蔬小鲜货</a></li>
						<li><a href="#">红心猕猴桃你吃过吗</a></li>
						<li><a href="#">餐饮专供省钱省力省时间</a></li>
					</ul>
				</div>
				<div class="right_news">
					<a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/right_news.png" width="200" height="261"></a>				</div>
			</div>
		  </div>





		  <div id="content1_middle_bottome">
				<img src="${pageContext.request.contextPath}/images/foreground/other/food_safe.png" width="1189" height="136">		  </div>
          <div id="featured_fresh">
			  <div class="bg1">
			  	<div class="tesegou">
			      <span>特&nbsp;/&nbsp;色&nbsp;/&nbsp;购</span>
			    </div>
			    <div class="bg3">
			    	<div  class="meishi">
			    		<!-- <span>精挑细选100份美食</span> -->
			    	</div> 
					<div class="frurit1">
						<div><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit1.jpg" width="160" height="160"></a></div>
						<div><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit22.jpg" width="160" height="160"></a></div>
						<div><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit3.jpg" width="160" height="160"></a></div>
						<div><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit4.jpg" width="160" height="160"></a></div>
						<div><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit5.jpg" width="160" height="160"></a></div>
					</div>
					<div class="price">
						<div class="price1">欢乐果园 河北精选皇冠梨 6个装 单果240-270g 新鲜水果<br>￥13.9</div>
						<div class="price2">南非 进口红西柚 6个 单果重约300-330g 新鲜水果<br>￥33.9</div>
						<div class="price3">泰国进口椰青 2个装 单果约750g 赠送开椰器和吸管 新鲜水果<br>￥22.9</div>
						<div class="price4">百香果西番莲 12个装 单果50-80g 新鲜水果<br>￥35.9</div>
						<div class="price5">Zespri佳沛 新西兰绿奇异果 6个装 特大22果 单果重约 140-170g<br>￥69.9</div>
					</div>
					<div class="frurit2">
						<div><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit6.jpg" width="160" height="160"></a></div>
						<div><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit7.jpg" width="160" height="160"></a></div>
						<div><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit8.jpg" width="160" height="160"></a></div>
						<div><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit9.jpg" width="160" height="160"></a></div>
						<div><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit10.jpg" width="160" height="160"></a></div>
					</div>
					<div class="pricee">
						<div class="pricee1">泰国进口龙眼 1kg 新鲜水果<br>￥13.9</div>
						<div class="pricee2">佳农 进口香蕉 2kg 单根装 新鲜水果<br>￥24.9</div>
						<div class="pricee3">泰国进口椰青原箱 9个装 单果重750g以上<br>￥55.9</div>
						<div class="pricee4">新疆库尔勒香梨 当季新果 特级装 约2.5kg 单果约120-150g<br>￥66.9</div>
						<div class="pricee5">南非进口青柠6个 单个重约70-90g 新鲜水果<br>￥33.9</div>
					</div>
			    </div>





			    <!-- 此处是特色购下面的水果列表和下一个div区分的地方 -->
			    	<!-- <div style="width: 100%; height: 20px; background: black;"></div> -->
			    	<div id="shenlinshigan">
						<div class="shenlinbg">
						<img src="${pageContext.request.contextPath}/images/foreground/other/shenlinshigan.png" width="1214" height="72" style="width: 1214px;height: 72px;">					    </div>
					<div class="more_frurit">
						<div class="more_frurit_left">
							  <div class="fresh_frurit">新鲜水果</div>
							  <div class="fresh_frurit1">应时而采，新鲜特供</div>
							  <hr>
							  <div style="width: 100%;height: 40px;">
									<ul class="ul8">
										<li><a href="#">进口水果</a></li>
										<li><a href="#">猕猴桃</a></li>
									</ul>
							  </div>
							  <div style="width: 100%;height: 40px;margin-top: 10px;">
									<ul class="ul8">
										<li><a href="#">水果礼盒</a></li>
									</ul>
							  </div>
							  <div style="width: 100%;height: 40px;margin-top: 10px;">
									<ul class="ul8">
										<li><a href="#">美国红提</a></li>
										<li><a href="#">石榴</a></li>
									</ul>
							  </div>
						</div>
						<div class="more_frurit_middle">
							<a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/libg.png" width="599" height="301" style="width: 599px;height: 301px;"></a>						</div>
						<div class="more_frurit_right">
							<a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/lemon.png" width="390" height="301"></a>						</div>
					</div>
                        <div id="frurit_2">
							<!-- 此处写水果的列表2 -->
						    <div class="frurit_2_">
						       <div class="fff"><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit21.jpg" width="160" height="160"></a></div>
						       <div class="fff"><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit12.jpg" width="160" height="160"></a></div>
						       <div class="fff"><a href="productdetail.html"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit13.jpg" width="160" height="160"></a></div>
						       <div class="fff"><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit14.jpg" width="160" height="160"></a></div>
						       <div class="fff"><a href="#"><img src="${pageContext.request.contextPath}/images/foreground/other/frurit15.jpg" width="160" height="160"></a></div>
					        </div>
					        <div class="pricee1">
					        	<!-- 此处写价格 222222-->
						       <div class="pricee11">应季鲜冬枣甜脆枣 1kg 单果约12-16g（大果）<br>￥23.9</div>
						       <div class="pricee21">五丰 美仑达 精选进口鲜橙 2kg装(±100g) 简致礼盒 铂金果<br>￥25.9</div>
						       <div class="pricee31">越南红心火龙果 4个装 单果约350~400g 新鲜水果<br>￥39.9</div>
						       <div class="pricee41">爱熊猫（love pan8da） 陕西徐香绿心猕猴桃 12粒 单果约80-100g<br>￥39.9</div>
						       <div class="pricee51">宏辉果蔬 苹果 烟台红富士 12个 单果约75mm 总重约2.1kg<br>￥25.9</div>
					        </div>
					    </div>
                   </div>







                        <div class="bolang">
							
                        </div>
                        <div id="green">
							<div class="green1"><img src="${pageContext.request.contextPath}/images/foreground/other/green1.png" width="1191" height="146" style="width: 1190px;height: 146px;"></div>
							<div class="footer">
							<div class="gouwuzhinan">
								<span style="text-align: center;">购物指南</span>
								<ul style="list-style: none;" class="ul4">
									<li><a href="#">购物流程</a></li>
									<li><a href="#">支付方式</a></li>
									<li><a href="#">售后规则</a></li>
								</ul>
							</div>
							<div class="peisongfangshi">
								<span style="text-align: center;">配送方式</span>
								<ul style="list-style: none;" class="ul5">
									<li><a href="#">配送运费</a></li>
									<li><a href="#">配送范围</a></li>
									<li><a href="#">配送时间</a></li>
								</ul>
							</div>
							<div class="service">
								<span style="text-align: center;">商家服务</span>
								<ul style="list-style: none;" class="ul6">
									<li><a href="#">平台规则</a></li>
									<li><a href="#">商家入驻</a></li>
									<li><a href="#">联系我们</a></li>
								</ul>
							</div>
							<div class="contect">
								<span style="text-align: center;">联系客服</span>
								<ul style="list-style: none;" class="ul7">
									<li><a href="#">在线客服</a></li>
									<li><a href="#">客服电话：123-580-970</a></li>
									<li><a href="#">服务时间</a></li>
									<li><a href="#">反馈邮箱：894563115@163.com</a></li>
								</ul>
							</div>
							</div>
							<div class="banquan">
								<div class="text" style="width: 1190px;height: 100%;margin:0 auto;">
								<div style="margin:0 auto; width: 300px;">@Copyright&nbsp;2014-2017&nbsp;版权所有</div>
								</div>
							</div>
                        </div>
	    	</div>

	    </div>

			  <!-- file:///E:/electricmall/html/electricmall.html -->
</div>

	  </div>

</body>
</html>