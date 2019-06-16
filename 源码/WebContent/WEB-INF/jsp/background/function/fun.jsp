<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台功能管理</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<script>
			/* function refresh(){
				$("#body").load("${pageContext.request.contextPath}/sys/function/selectfun");
			} */

		function check(obj){
			var o=$(obj);
			
			var pid=o.attr("datapid");
			var pname=o.attr("datapname");
			var id=o.attr("dataid");
			var name=o.attr("dataname");
			var url=o.attr("dataurl");
			var state=o.attr("datastate");
			
			$("#funid").val(id);
			$("#funpid").val(pid);
			$("#funpname").val(pname);
			$("#funname").val(name);	
			$("#funurl").val(url);	
			$("#funstate").val(state);	
			
			if(pid=="-1"){
				//可以增加子节点
				$("#addchild").removeAttr("disabled");
			}else{
				$("#addchild").attr("disabled","disabled");
				}
			
		}
		//增加根节点
		function addroot(){
			$("#funpid").val("-1");
			$("#funpname").val("根节点");
			$("#funname").val("");
			$("#funid").val("");
			$("#funurl").val("");
			$("#addchild").attr("disabled","disabled");
			
		}
		//增加子节点
		function addchild(){
			$("#funpid").val($("#funid").val());
			$("#funpname").val($("#funname").val());
			$("#funname").val("");
			$("#funid").val("");
			$("#funurl").val("");
			$("#addchild").attr("disabled","disabled");
			}
		
		//保存
		function save(){
			//获取数据
			var funpid=$("#funpid").val();
			var funid=$("#funid").val();
			var funname=$("#funname").val();
			var funurl=$("#funurl").val();
			var funstate=$("#funstate").val();
			
			/* var cmd="add";
			if(funid!=""){
				cmd="update";
			} */
			
			if(funid==""){
				$.ajax({
					type:"POST",
					url:"${pageContext.request.contextPath}/sys/function/addfun",
					data:"funpid="+funpid+"&funid="+funid+"&funname="+funname+"&funurl="+funurl+"&funstate="+funstate,
					dataType:"json",
					success:function(msg){
						if(msg.flag>0){
							alert("增加成功");
							$("#body").load("${pageContext.request.contextPath}/sys/function/selectfun");
						}else{
							alert("增加失败");
						}
					}
					
				});
				}else{
					$.ajax({
						type:"POST",
						url:"${pageContext.request.contextPath}/sys/function/edit",
						data:"funpid="+funpid+"&funid="+funid+"&funname="+funname+"&funurl="+funurl+"&funstate="+funstate,
						dataType:"json",
						success:function(msg){
							if(msg.flag>0){
								alert("修改成功");
								$("#body").load("${pageContext.request.contextPath}/sys/function/selectfun");
							}else{
								alert("修改失败");
							}
						}
						
					});
				}
			}
	
</script>
<style>
	*{margin:0;pading:0;}
	
	#body{
		width:1140px;
		height:560px;
		
		}
	.menu{
		
		width:200px;
		height:560px;
		border-right:1px solid #999;
		float:left;
		}
	.middle{
		width:2px;
		height:570px;
		
		float:left;
		}
	.content{
		width:900px;
		height:560px;
		
		float:left;
		}
	.menu dt{
			width:200px;
			height:20px;
			font-weight:bold;
			background-color:#ccc;
			border-top:1px solid #999;
			}
	.menu  dd{
			width:200px;
			height:20px;
			color:#333;
			border-top:1px solid #999;
			}
	.menu dt,.menu dd{
			line-height:20px;
			height:20px;
			text-align:center}
	dt{
			cursor:pointer;
		}
	dd{
			cursor:pointer;
		}
		.menu input{
			width:180px;
			height:30px;
			margin-left:10px;
			background-color:#F0F0F0;
			}
	.menu input,.content input{
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

    <div id="body">  	
    	<div class="menu">  	
        	<input type="button" value="增加根节点" onClick="addroot()"/>
            <!-- <input type="button" value="查看功能" onclick="refresh()"/> -->
        	<br/>       	 
        	<dl>
        	<c:forEach items="${list}" var="fun">
        		<c:if test="${fun.funpid==\"-1\"}">
        			 <dt datapname="无" dataid="${fun.funid}" dataname="${fun.funname}" 
        			 datapid="-1" dataurl="" datastate="${fun.funstate}" onclick="check(this)">${fun.funname}</dt>
        		</c:if>
        		<c:forEach items="${list}" var="child">
        			<c:if test="${child.funpid==fun.funid}">
        				<dd datapname="${child.funpname}" dataid="${child.funid}" 
        				dataname="${child.funname}" dataurl="${child.funurl}" 
        				datastate="${child.funstate}" datapid="${child.funpid}" onclick="check(this)">${child.funname}</dd>
        			</c:if>
        		</c:forEach>
        	</c:forEach>
       		 </dl>     
        </div>     
        <div class="middle"></div>
        <div class="content">
        	<table>
            	   	<tr>
                	<th>父功能：</th>
                    <td>
                    	<input type="text" name="funpname" id="funpname" readonly />
                        <input type="hidden" name="funpid" id="funpid" />
                    </td>
                </tr>
                <tr>
                	<th>功能名称：</th>
                    <td>
                    	<input type="text" name="funname" id="funname" />
                        <input type="hidden" name="funid" id="funid" />
                    </td>
                </tr>
                <tr>
                	<th>功能地址：</th>
                    <td>
                    	<input type="text" name="funurl" id="funurl" />
                    </td>
                </tr>
                <tr>
                	<th>功能状态：</th>
                    <td>
                    	<select name="funstate" id="funstate" style="opacity:1" >
                        	<option value="1">正常</option>
                            <option value="0">不可用</option>
                        </select>
                    </td>
                </tr>
                <tr>
                	<th></th>
                    <td>
                        <input type="button" value="增加子节点" id="addchild" disabled="disabled" onClick="addchild()"/>
                        <input type="button" value="保存" onClick="save()" />
                    </td>
                </tr>
            </table>
        </div>        
    </div>
</body>
</html>