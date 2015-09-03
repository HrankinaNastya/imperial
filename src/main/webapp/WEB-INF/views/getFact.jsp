<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Редактировать "А знаете ли вы?"</h2>
		<div class="block">
			<form:form method="post" action="/admin/editFact"
				commandName="fact">
				<table>
					<tr>
						<td></td>
						<td><form:input path="id" value="${fact.id}"
								hidden="true" /></td>
					</tr>
					<tr>
						<td><form:label path="section">Section</form:label></td>
						<td><form:select path="section.id">
								<form:options items="${sectionList}" itemValue="id"
									itemLabel="name" />
							</form:select></td>
					</tr>
					<tr>
						<td><form:label path="description">Name</form:label></td>
						<td><form:input path="description" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="description_en">Name_en</form:label></td>
						<td><form:input path="description_en" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="content">Content</form:label></td>
						<td><form:textarea path="content" required="required"></form:textarea></td>
					</tr>
					<tr>
						<td><form:label path="content_en">Content_en</form:label></td>
						<td><form:textarea path="content_en"></form:textarea></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="btn">Save
								Fact</button></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
