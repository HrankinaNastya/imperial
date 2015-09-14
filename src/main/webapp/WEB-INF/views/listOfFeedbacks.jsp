<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Список "Обратная связь"</h2>
		<div class="block">
			<c:if test="${!empty feedbackList}">
				<div class="table">
					<table>
						<tr>
							<td>ID</td>
							<td>Fullname</td>
							<td>Company</td>
							<td>Email</td>
							<td>City</td>
							<td>Message</td>
							<td></td>
							<td></td>
						</tr>
						<c:forEach items="${feedbackList}" var="feedback">
							<tr>
								<td>${feedback.id}</td>
								<td>${feedback.fullname}</td>
								<td>${feedback.company}</td>
								<td>${feedback.email}</td>
								<td>${feedback.city}</td>
								<td width="450px">${feedback.message}</td>
								<td><a href="/admin/getFeedback/${feedback.id}">Edit</a></td>
								<td><a href="/admin/deleteFeedback/${feedback.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</c:if>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
