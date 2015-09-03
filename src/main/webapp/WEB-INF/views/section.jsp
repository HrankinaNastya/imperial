<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Добавить раздел</h2>
		<div class="block">
			<form:form method="post" action="addSection" commandName="section">
				<table>
					<tr>
						<td><form:label path="name">Name</form:label></td>
						<td><form:input path="name" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="btn">Add
								Section</button></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</div>


<div class="grid_10">
	<div class="box round first">
		<h2>Разделы</h2>
		<div class="block">
			<c:if test="${!empty sectionList}">
				<div class="table">
					<table>
						<tr>
							<td>ID</td>
							<td>Name</td>
							<td></td>
							<td></td>
						</tr>
						<c:forEach items="${sectionList}" var="section">
							<tr>
								<td>${section.id}</td>
								<td>${section.name}</td>
								<td><a href="/admin/getSection/${section.id}">Edit</a></td>
								<td><a href="/admin/deleteSection/${section.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
			</c:if>
		</div>
	</div>
</div>


<jsp:include page="adminfooter.jsp" />
