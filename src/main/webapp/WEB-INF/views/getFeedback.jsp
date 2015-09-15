<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Редактировать обратную связь</h2>
		<div class="block">
			<form:form method="post" action="/admin/editFeedback"
				commandName="feedback">
				<table>
					<tr>
						<td></td>
						<td><form:input path="id" value="${feedback.id}"
								hidden="true" /></td>
					</tr>
					<tr>
						<td><form:label path="fullname">Fullname</form:label></td>
						<td><form:input path="fullname" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="company">Company</form:label></td>
						<td><form:input path="company" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="email">Email</form:label></td>
						<td><form:input path="email" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="city">City</form:label></td>
						<td><form:input path="city" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="message">Message</form:label></td>
						<td><form:textarea path="message"></form:textarea></td>
					</tr>
					<tr>
						<td></td>
						<td><form:input path="created" value="${feedback.created}"
								hidden="true" /></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="btn">Save
								Feedback</button></td>
					</tr>

				</table>
			</form:form>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
