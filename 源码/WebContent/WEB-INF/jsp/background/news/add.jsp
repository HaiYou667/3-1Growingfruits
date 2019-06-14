<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻资讯管理</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/ckfinder/ckfinder.js"></script>

<style type="text/css">
	th{
	text-align:right;
	}
</style>
</head>
<body>
	<h2>新闻资讯管理>>添加新闻资讯</h2>
	<form action="">
	<table>
		<tr>
			<th>新闻标题：</th>
			<td><input type="text" name="newstitle"/></td>
		</tr>
		<tr>
			<th>作者：</th>
			<td><input type="text" name="newswriter"/></td>
		</tr>
		<tr>
			<th>发表时间：</th>
			<td><input type="text" name="newsdate"/></td>
		</tr>
		<tr>
			<th>内容：</th>
			<td></td>
		</tr>
		<tr>
			<th></th>
			<td><textarea name="newscontent" class="ckeditor"></textarea></td>
		</tr>
		<tr>
			<th></th>
			<td><input type="submit" value="提交"/></td>
		</tr>
	</table>
	</form>
	
<script type="text/javascript">
        var editor = CKEDITOR.replace('newscontent');
        CKFinder.setupCKEditor(editor, '${pageContext.request.contextPath}/ckfinder/');
</script>
</body>
</html>