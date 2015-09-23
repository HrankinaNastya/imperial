<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Список новостей</h2>
		<div class="block">
			<c:if test="${!empty newsList}">
				<div class="table">
					<table>
						<tr>
							<td>ID</td>
							<td>Subcategory</td>
							<td>Name</td>
							<td>Name_en</td>
							<td>Description</td>
							<td>Description_en</td>
							<td>Content</td>
							<td>Content_en</td>
							<td>Created</td>
							<td></td>
							<td></td>
						</tr>
						<c:forEach items="${newsList}" var="news">
							<tr>
								<td>${news.id}</td>
								<td>${news.subcategory.name}</td>
								<td>${news.name}</td>
								<td>${news.name_en}</td>
								<td>${news.description}</td>
								<td>${news.description_en}</td>
								<c:choose>
									<c:when test="${!empty news.content}">
										<td>yes</td>
									</c:when>
									<c:otherwise>
										<td>-</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${!empty news.content_en}">
										<td>yes</td>
									</c:when>
									<c:otherwise>
										<td>-</td>
									</c:otherwise>
								</c:choose>
								<td>${news.created}</td>
								<td><a href="/admin/getNews/${news.id}">Edit</a></td>
								<td><a href="/admin/deleteNews/${news.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</c:if>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
