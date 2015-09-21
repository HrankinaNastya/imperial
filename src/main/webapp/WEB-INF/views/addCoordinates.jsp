<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Добавить контакт(координаты)</h2>
		<div class="block">
			<form:form method="post" action="addCoord" commandName="coordinates">
				<a class="linkcoord" href="http://www.mapcoordinates.net/ru">Определение координат</a>
				<table>
					<tr>
						<td><form:label path="city">City</form:label></td>
						<td><form:input path="city" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="city_en">Сity_en</form:label></td>
						<td><form:input path="city_en" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="latitude">Latitude</form:label></td>
						<td><form:input path="latitude" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="longitude">Longitude</form:label></td>
						<td><form:input path="longitude" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="address">Address</form:label></td>
						<td><form:input path="address" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="address_en">Address_en</form:label></td>
						<td><form:input path="address_en" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="phone">Phone</form:label></td>
						<td><form:input path="phone" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="skype">Skype</form:label></td>
						<td><form:input path="skype" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="email">Email</form:label></td>
						<td><form:input path="email" class="input_width" /></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="btn">Add
								Coordinates</button></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
