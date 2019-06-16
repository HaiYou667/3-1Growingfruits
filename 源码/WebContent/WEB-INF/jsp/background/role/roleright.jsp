<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色权限管理</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript">
/* 0785b532-ca0d-4dc9-af69-7b362ab8e415 */
	//父功能被选中则其子功能亦被选中
	function check(obj){
		var id=obj.id;
		var objs=$("[pid='"+id+"']");
		if($(obj).attr("checked")=="checked")o{
			//设置选中
			for(var i=0;i<objs.length;i++){
				$(objs[i]).attr("checked","checked");
			}
		}else{
			//取消选中
			for (var i = 0; i < objs.length; i++) {
				$(objs[i]).removeAttr("checked");
			}
		}
	}
		
	//只要有子功能被选中则其父功能也被选中
	function checkchild(obj){
		var pid=$(obj).attr("pid");
		if($(obj).attr("checked")=="checked"){
			$("#"+pid).attr("checked","checked");
		}
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
	<h2>${role.rolename}-角色分配权限</h2>
	<form action="${pageContext.request.contextPath}/sys/roleright/saverr" method="post">
		<div>
			<input type="hidden" name="roleid" value="${role.roleid}"/>
			<input type="submit" value="提交"/>
		</div>
		
		<div>
			<dl>
				<c:forEach items="${rflist}" var="rf">
					<c:if test="${rf.funpid==\"-1\"}">
						<dt>
							<input name="funids" type="checkbox" onclick="check(this)" 
							  id="${rf.funid}" pid="${rf.funpid}" value="${rf.funid}" 
							 <c:if test="${rf.checked==1}">checked="checked"</c:if> />
							 ${rf.funname}
						</dt>
					</c:if>
					<c:forEach items="${rflist}" var="child">
						<c:if test="${child.funpid==rf.funid}">
							<dd>
								<input name="funids" type="checkbox" onclick="checkchild(this)"
								id="${child.funid}" pid="${child.funpid}" value="${child.funid}"
								<c:if test="${child.checked==1}">checked="checked"</c:if>  />
								${child.funname}
							</dd>
						</c:if>
					</c:forEach>
					
				</c:forEach>
		      </dl>
		</div>
	</form>
</body>
</html>