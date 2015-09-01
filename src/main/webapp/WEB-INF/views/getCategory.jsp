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
<a href="../index">Home</a>

<h2>Edit category</h2>
<form:form method="post" action="/editCategory" commandName="category">

	<table>
		<tr>
			<td></td>
			<td><form:input path="id" value="${category.id}" hidden="true" /></td>
		</tr>
		<tr>
			<td><form:label path="name">Name</form:label></td>
			<td><form:input path="name" required="required" /></td>
			<td><form:label path="content">Content</form:label></td>
			<td><form:textarea path="content"></form:textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Save category" /></td>
		</tr>
	</table>
	
</form:form>
</body>
</html>