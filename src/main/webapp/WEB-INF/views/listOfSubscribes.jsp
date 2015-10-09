<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Список подписчиков на новости</h2>
		<div class="block">
			<c:if test="${!empty subscribeList}">
				<div class="table">
					<table>
						<tr>
							<td>ID</td>
							<td>Email</td>
							<td>Date</td>
							<td></td>
							<td></td>
						</tr>
						<c:forEach items="${subscribeList}" var="subscribe">
							<tr>
								<td>${subscribe.id}</td>
								<td>${subscribe.email}</td>
								<td>${subscribe.created}</td>
								<td><a href="/admin/getSubscribe/${subscribe.id}">Edit</a></td>
								<td><a href="/admin/deleteSubscribe/${subscribe.id}">Delete</a></td>
							</tr>	
						</c:forEach>
					</table>
				</div>
			</c:if>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
