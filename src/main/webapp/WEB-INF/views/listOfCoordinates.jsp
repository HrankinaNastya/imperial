<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Список контактов(координаты)</h2>
		<div class="block">
			<c:if test="${!empty сoordinatesList}">
				<div class="table">
					<table>
						<tr>
							<td>ID</td>
							<td>City</td>
							<td>Сity_en</td>
							<td>Latitude</td>
							<td>Longitude</td>
							<td>Address</td>
							<td>Address_en</td>
							<td>Phone</td>
							<td>Skype</td>
							<td>Email</td>
							<td></td>
							<td></td>
						</tr>
						<c:forEach items="${сoordinatesList}" var="сoordinates">
							<tr>
								<td>${сoordinates.id}</td>
								<td>${сoordinates.city}</td>
								<td>${сoordinates.city_en}</td>
								<td>${сoordinates.latitude}</td>
								<td>${сoordinates.longitude}</td>
								<td>${сoordinates.address}</td>
								<td>${сoordinates.address_en}</td>
								<td>${сoordinates.phone}</td>
								<td>${сoordinates.skype}</td>
								<td>${сoordinates.email}</td>
								<td><a href="/admin/getCoordinates/${сoordinates.id}">Edit</a></td>
								<td><a href="/admin/deleteCoordinates/${сoordinates.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</c:if>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
