<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table>
		<tr>
			<!-- 总记录数，总页数 -->
			<td>
				<a>共计：${pc.pagecount}页/${pc.rscount}条记录</a>
			</td>
			<!-- 上一页 -->
			<td>
				<c:if test="${pc.currentindex==1}" var="fp">
					<a style="disabled: true">上一页</a>
				</c:if> <c:if test="${!fp}">
					<a
						href="${url}?currentindex=${pc.currentindex-1}">上一页</a>
				</c:if>
			</td>
			<!-- 中间页数 -->
			<c:forEach begin="${pc.minpage}" step="1"
				end="${pc.maxpage}" var="index">
				<td><c:if test="${pc.currentindex==index}" var="t">
						<a style="color: red; background-color: #bbb">${index}</a>
					</c:if> <c:if test="${!t}">
						<a
							href="${url}?currentindex=${index}">${index}</a>
					</c:if></td>
			</c:forEach>
			<!-- 下一页 -->
			<td>
				<c:if
					test="${pc.currentindex==pc.pagecount}"
					var="fp">
					<a style="disabled: true">下一页</a>
				</c:if> <c:if test="${!fp}">
					<a
						href="${url}?currentindex=${pc.currentindex+1}">下一页</a>
				</c:if>
			</td>
		</tr>
	</table>