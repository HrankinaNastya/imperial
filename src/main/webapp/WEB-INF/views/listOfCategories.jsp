<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Список категорий</h2>
		<div class="block">
			<c:if test="${!empty categoryList}">
				<div class="table">
					<table>
						<tr>
							<td>ID</td>
							<td>Name</td>
							<td>Name_en</td>
							<td>Name_es</td>
							<td>Path</td>
							<td>Content</td>
							<td>Content_en</td>
							<td>Content_es</td>
							<td></td>
							<td></td>
						</tr>
						<c:forEach items="${categoryList}" var="category">
							<tr>
								<td>${category.id}</td>
								<td>${category.name}</td>
								<td>${category.name_en}</td>
								<td>${category.name_es}</td>
								<td>${category.path}</td>
								<c:choose>
									<c:when test="${!empty category.content}">
										<td>yes</td>
									</c:when>
									<c:otherwise>
										<td>-</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${!empty category.content_en}">
										<td>yes</td>
									</c:when>
									<c:otherwise>
										<td>-</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${!empty category.content_es}">
										<td>yes</td>
									</c:when>
									<c:otherwise>
										<td>-</td>
									</c:otherwise>
								</c:choose>
								<td><a href="/admin/getCategory/${category.id}">Edit</a></td>
								<td><a href="/admin/deleteCategory/${category.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</c:if>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
