<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Список подкатегорий</h2>
		<div class="block">
			<c:if test="${!empty subcategoryList}">
				<div class="table">
					<table>
						<tr>
							<td>ID</td>
							<td>Category</td>
							<td>Name</td>
							<td>Name_en</td>
							<td>Name_es</td>
							<td>Description</td>
							<td>Description_en</td>
							<td>Description_es</td>
							<td>Content</td>
							<td>Content_en</td>
							<td>Content_es</td>
							<td></td>
							<td></td>
						</tr>
						<c:forEach items="${subcategoryList}" var="subcategory">
							<tr>
								<td>${subcategory.id}</td>
								<td>${subcategory.category.name}</td>
								<td>${subcategory.name}</td>
								<td>${subcategory.name_en}</td>
								<td>${subcategory.name_es}</td>
								<td>${subcategory.description}</td>
								<td>${subcategory.description_en}</td>
								<td>${subcategory.description_es}</td>
								<c:choose>
									<c:when test="${!empty subcategory.content}">
										<td>yes</td>
									</c:when>
									<c:otherwise>
										<td>-</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${!empty subcategory.content_en}">
										<td>yes</td>
									</c:when>
									<c:otherwise>
										<td>-</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${!empty subcategory.content_es}">
										<td>yes</td>
									</c:when>
									<c:otherwise>
										<td>-</td>
									</c:otherwise>
								</c:choose>
								<td><a href="/admin/getSubcategory/${subcategory.id}">Edit</a></td>
								<td><a href="/admin/deleteSubcategory/${subcategory.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</c:if>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
