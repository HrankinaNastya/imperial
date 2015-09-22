<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="grid_2">
	<div class="box sidemenu">
		<div class="block" id="section-menu">
			<ul class="section menu">
				<li><a class="menuitem"
					href="<c:url value="/admin/categories" />">Категории</a>
					<ul class="submenu">
						<li><a href="<c:url value="/admin/categories" />">Список</a></li>
						<li><a href="<c:url value="/admin/addCat" />">Добавить</a></li>
					</ul></li>
				<li><a class="menuitem"
					href="<c:url value="/admin/subcategories" />">Подкатегории</a>
					<ul class="submenu">
						<li><a href="<c:url value="/admin/subcategories" />">Список</a></li>
						<li><a href="<c:url value="/admin/addSubcat" />">Добавить</a></li>
					</ul></li>
				<li><a href="<c:url value="/admin/facts" />" class="menuitem">А
						знаете ли вы?</a>
					<ul class="submenu">
						<li><a href="<c:url value="/admin/sections" />">Разделы</a></li>
						<li><a href="<c:url value="/admin/facts" />">Список</a></li>
						<li><a href="<c:url value="/admin/addFact" />">Добавить</a></li>
					</ul></li>
				<li><a href="<c:url value="/admin/feedbacks" />"
					class="menuitem">Обратная связь</a></li>
				<li><a href="<c:url value="/admin/news" />" class="menuitem">Новости</a>
					<ul class="submenu">
						<li><a href="<c:url value="/admin/news" />">Список</a></li>
						<li><a href="<c:url value="/admin/addNews" />">Добавить</a></li>
					</ul></li>
				<li><a class="menuitem">Филиалы</a>
					<ul class="submenu">
						<li><a>Список</a></li>
						<li><a>Добавить</a></li>
					</ul></li>
				<li><a href="<c:url value="/admin/coordinates" />"
					class="menuitem">Контакты(Координаты)</a>
					<ul class="submenu">
						<li><a href="<c:url value="/admin/coordinates" />">Список</a></li>
						<li><a href="<c:url value="/admin/addCoordinates" />">Добавить</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</div>