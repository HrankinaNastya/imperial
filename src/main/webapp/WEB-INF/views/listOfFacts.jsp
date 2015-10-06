<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Список "А знаете ли Вы?"</h2>
		<div class="block">
			<c:if test="${!empty factList}">
				<div class="table">
					<table>
						<tr>
							<td>ID</td>
							<td>Section</td>
							<td>Description</td>
							<td>Description_en</td>
							<td>Description_es</td>
							<td>Content</td>
							<td>Content_en</td>
							<td>Content_es</td>
							<td></td>
							<td></td>
						</tr>
						<c:forEach items="${factList}" var="fact">
							<tr>
								<td>${fact.id}</td>
								<td>${fact.section.name}</td>
								<td>${fact.description}</td>
								<td>${fact.description_en}</td>
								<td>${fact.description_es}</td>
								<c:choose>
									<c:when test="${!empty fact.content}">
										<td>yes</td>
									</c:when>
									<c:otherwise>
										<td>-</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${!empty fact.content_en}">
										<td>yes</td>
									</c:when>
									<c:otherwise>
										<td>-</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${!empty fact.content_es}">
										<td>yes</td>
									</c:when>
									<c:otherwise>
										<td>-</td>
									</c:otherwise>
								</c:choose>
								<td><a href="/admin/getFact/${fact.id}">Edit</a></td>
								<td><a href="/admin/deleteFact/${fact.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</c:if>
		</div>
	</div>
</div>

<jsp:include page="adminfooter.jsp" />
