<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Добавить подкатегорию</h2>
		<div class="block">
			<form:form method="post" action="addSubcategory" 
				commandName="subcategory">
				<table>
					<tr>
						<td><form:label path="category">Category</form:label></td>
						<td><form:select path="category.id">
								<form:options items="${categoryList}" itemValue="id"
									itemLabel="name" />
							</form:select></td>
					</tr>
					<tr>
						<td><form:label path="name">Name</form:label></td>
						<td><form:input path="name" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="name_en">Name_en</form:label></td>
						<td><form:input path="name_en" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="image">Image</form:label></td>
						<td><form:input path="image" type="file" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="description">Description</form:label></td>
						<td><form:input path="description" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="description_en">Description_en</form:label></td>
						<td><form:input path="description_en" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="content">Content</form:label></td>
						<td><form:textarea path="content"></form:textarea></td>
					</tr>
					<tr>
						<td><form:label path="content_en">Content_en</form:label></td>
						<td><form:textarea path="content_en"></form:textarea></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="btn">Add
								Subcategory</button></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
