<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Admin</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/reset.css" />" media="screen" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/text.css" />" media="screen" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/grid.css" />" media="screen" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/layout.css" />" media="screen" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/table.css" />" media="screen" />
<!--[if IE 6]><link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/ie6.css" />" media="screen" /><![endif]-->
<!--[if IE 7]><link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/ie.css" />" media="screen" /><![endif]-->

<script type="text/javascript"
	src="<c:url value="/resources/js/jquery.js" />"></script>
	
</head>
<body>
	<div class="container_12">
		<div class="grid_12 header-repeat">
			<div id="branding">
				<div class="floatleft logo">
					<a href="<c:url value="/admin/categories" />">Imperial Admin</a>
				</div>
				<div class="floatright">
					<div class="floatleft">
						<img src="<c:url value="/resources/images/img-profile.jpg" />"
							alt="Profile Pic" />
					</div>
					<div class="floatleft marginleft10">
						<ul class="inline-ul floatleft">
							<li>Hello Admin</li>
							<li><a href="#">Logout</a></li>
						</ul>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="clear"></div>