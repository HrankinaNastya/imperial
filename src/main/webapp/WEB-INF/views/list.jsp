<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">
	<title>Tour</title>
</head>
<body>

<a href="add">Add category or item</a>

<h3>Categories</h3>
<c:if test="${!empty categoryList}">
	<table class="data">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Name_en</th>
			<th>Content</th>
			<th>Content_en</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${categoryList}" var="category">
			<tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td>${category.name_en}</td>
				<td>${category.content}</td>
				<td>${category.content_en}</td>
				<td><a href="getCategory/${category.id}">Edit</a></td>
				<td><a href="deleteCategory/${category.id}">Delete</a></td>
			</tr>
		</c:forEach>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
	</table>
</c:if>

</body>
</html>