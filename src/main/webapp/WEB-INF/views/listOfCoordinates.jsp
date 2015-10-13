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
			<c:if test="${!empty coordinatesList}">
				<div class="table">
					<table>
						<tr>
							<td>ID</td>
							<td>City</td>
							<td>Сity_en</td>
							<td>Сity_es</td>
							<td>Latitude</td>
							<td>Longitude</td>
							<td>Address</td>
							<td>Address_en</td>
							<td>Address_es</td>
							<td>Phone</td>
							<td>Skype</td>
							<td>Email</td>
							<td></td>
							<td></td>
						</tr>
						<c:forEach items="${coordinatesList}" var="coordinates">
							<tr>
								<td>${coordinates.id}</td>
								<td>${coordinates.city}</td>
								<td>${coordinates.city_en}</td>
								<td>${coordinates.city_es}</td>
								<td>${coordinates.latitude}</td>
								<td>${coordinates.longitude}</td>
								<td>${coordinates.address}</td>
								<td>${coordinates.address_en}</td>
								<td>${coordinates.address_es}</td>
								<td>${coordinates.phone}</td>
								<td>${coordinates.skype}</td>
								<td>${coordinates.email}</td>
								<td><a href="/admin/getCoordinates/${coordinates.id}">Edit</a></td>
								<td><a href="/admin/deleteCoordinates/${coordinates.id}">Delete</a></td>
							</tr>

						</c:forEach>
					</table>
				</div>
			</c:if>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
