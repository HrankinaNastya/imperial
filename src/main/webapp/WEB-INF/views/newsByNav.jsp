<%@page import="ua.imperial.entities.Year"%>
<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords"
	content="бананы в мясо говядина грузоперевозки курицы логистика логистика в украине логистические услуги мяса мясо мясо говядина мясо свинина рыба свиная свинина" />

<meta name="description"
	content="бананы в мясо говядина грузоперевозки курицы логистика логистика в украине логистические услуги мяса мясо мясо говядина мясо свинина рыба свиная свинина" />

<meta name="robots" content="ALL" />


<meta http-equiv="X-UA-Compatible" content="IE=7" />

<link href="<c:url value="/resources/css/main.css?v=0.5" />"
	rel="stylesheet" media="screen">
<link href="<c:url value="/resources/css/custom.css?nocache" />"
	rel="stylesheet" media="screen">

<link rel="icon" href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">
<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico"  />"
	type="image/x-icon">

<script type="text/javascript"
	src="<c:url value="/resources/js/jquery.js" />"></script>

<title><spring:message code="label.imperial.news" /></title>

</head>

<body class="dark">

	<table cellspacing="0" cellpadding="0" id="main">
		<tr>
			<td id="left" rowspan="2"></td>
			<td id="top">

				<div class="lang">
					<span><img src="/resources/images/l2.png" hspace="0">
						<div>
							<a href="?lang=ru"><img id="ru"
								src="/resources/images/flag_rus.gif"
								alt="<spring:message code="label.ru" />"
								title="<spring:message code="label.ru" />"></a><a
								href="?lang=en"><img id="en"
								src="/resources/images/flag_eng.gif"
								alt="<spring:message code="label.en" />"
								title="<spring:message code="label.en" />"></a>
						</div> <img src="/resources/images/r2.png" hspace="0"></span>
				</div> <c:if test="${lang eq 'ru'}">
					<script type="text/javascript">
						$('img#ru').attr('class', 'cur');
					</script>
				</c:if> <c:if test="${lang eq 'en'}">
					<script type="text/javascript">
						$('img#en').attr('class', 'cur');
					</script>
				</c:if>

				<div class="phone">
					<img src="<c:url value="/resources/images/r1d.png" />" hspace="0">
					<div>
						<spring:message code="label.hotline" />
						&mdash; <b>8 (048) <i>780-14-05</i></b>
					</div>
					<img src="<c:url value="/resources/images/l1d.png" />" hspace="0">
				</div>

				<div class="hmc">
					<a href="<c:url value="/${locale}" />"><img
						src="<c:url value="/resources/images/pic_home.gif" />"
						title="<spring:message code="label.home" />"></a><a class=""
						href="<c:url value="/sitemap${locale}" />"><img
						src="<c:url value="/resources/images/pic_map.gif" />"
						title="<spring:message code="label.sitemap" />"></a><a class=""
						href="<c:url value="/feedback${locale}" />"><img
						src="<c:url value="/resources/images/pic_mail.gif" />"
						title="<spring:message code="label.feedback" />"></a>
				</div>



				<div class="menu">
					<div style="width: 100%;">
						<ul>

							<li style="text-align: left;"><a
								href="<c:url value="/${locale}" />"><img
									src="/resources/images/l2.png" hspace="0"><b><c:if
											test="${!empty categoryList[0].id}">
											<c:choose>
												<c:when test="${lang eq 'en'}">${categoryList[0].name_en}</c:when>
												<c:when test="${lang eq 'es'}">${categoryList[0].name_es}</c:when>
												<c:otherwise>${categoryList[0].name}</c:otherwise>
											</c:choose>
										</c:if> </b><img src="/resources/images/r2.png" hspace="0"></a></li>
							<li><a href="<c:url value="/feedback${locale}" />"><img
									src="/resources/images/l2.png" hspace="0"><b><c:if
											test="${!empty categoryList[1].id}">
											<c:choose>
												<c:when test="${lang eq 'en'}">${categoryList[1].name_en}</c:when>
												<c:when test="${lang eq 'es'}">${categoryList[1].name_es}</c:when>
												<c:otherwise>${categoryList[1].name}</c:otherwise>
											</c:choose>
										</c:if></b><img src="/resources/images/r2.png" hspace="0"></a></li>
							<li class="cur"><a href="<c:url value="/news${locale}" />"><img
									src="/resources/images/l4.png" hspace="0" alt=""><b><c:if
											test="${!empty categoryList[2].id}">
											<c:choose>
												<c:when test="${lang eq 'en'}">${categoryList[2].name_en}</c:when>
												<c:when test="${lang eq 'es'}">${categoryList[2].name_es}</c:when>
												<c:otherwise>${categoryList[2].name}</c:otherwise>
											</c:choose>
										</c:if></b><img src="/resources/images/r4.png" hspace="0"></a></li>
							<li style="text-align: right;"><a
								href="<c:url value="/contacts/1${locale}" />"><img
									src="/resources/images/l2.png" hspace="0"><b><c:if
											test="${!empty categoryList[3].id}">
											<c:choose>
												<c:when test="${lang eq 'en'}">${categoryList[3].name_en}</c:when>
												<c:when test="${lang eq 'es'}">${categoryList[3].name_es}</c:when>
												<c:otherwise>${categoryList[3].name}</c:otherwise>
											</c:choose>
										</c:if></b><img src="/resources/images/r2.png" hspace="0"></a></li>
							<li style="text-align: right;"><a
								href="<c:url value="/warehouse${locale}" />"><img
									src="<c:url value="/resources/images/l2.png" />" hspace="0"><b><c:if
											test="${!empty categoryList[9].id}">
											<c:choose>
												<c:when test="${lang eq 'en'}">${categoryList[9].name_en}</c:when>
												<c:when test="${lang eq 'es'}">${categoryList[9].name_es}</c:when>
												<c:otherwise>${categoryList[9].name}</c:otherwise>
											</c:choose>
										</c:if></b><img src="<c:url value="/resources/images/r2.png" />"
									hspace="0"></a></li>


						</ul>
					</div>
				</div> <span class="submenu"><img
					src="<c:url value="/resources/images/r7d.png" />" hspace="0">
					<div>
						<img src="<c:url value="/resources/images/arrow.png" />"><a
							href="<c:url value="/ecuador${locale}" />" class="roboto4"><c:if
								test="${!empty categoryList[4].id}">
								<c:choose>
									<c:when test="${lang eq 'en'}">${categoryList[4].name_en}</c:when>
									<c:when test="${lang eq 'es'}">${categoryList[4].name_es}</c:when>
									<c:otherwise>${categoryList[4].name}</c:otherwise>
								</c:choose>
							</c:if></a> <img src="<c:url value="/resources/images/arrow.png" />"><a
							href="<c:url value="/bananas${locale}" />" class="roboto4"><c:if
								test="${!empty categoryList[5].id}">
								<c:choose>
									<c:when test="${lang eq 'en'}">${categoryList[5].name_en}</c:when>
									<c:when test="${lang eq 'es'}">${categoryList[5].name_es}</c:when>
									<c:otherwise>${categoryList[5].name}</c:otherwise>
								</c:choose>
							</c:if></a> <img src="<c:url value="/resources/images/arrow.png" />"><a
							href="<c:url value="/logistics${locale}" />"
							class="roboto4 lastrob"><c:if
								test="${!empty categoryList[6].id}">
								<c:choose>
									<c:when test="${lang eq 'en'}">${categoryList[6].name_en}</c:when>
									<c:when test="${lang eq 'es'}">${categoryList[6].name_es}</c:when>
									<c:otherwise>${categoryList[6].name}</c:otherwise>
								</c:choose>
							</c:if></a>
					</div> <img src="<c:url value="/resources/images/l7d.png" />" hspace="0"></span>

				<table cellspacing="0" cellpadding="0" id="submain">
					<tr valign="top">
						<td width="30%" id="lft"><img
							src="<c:url value="/resources/images/arrow2.png" />"
							class="h1but">
							<div class="h1">
								<a href="<c:url value="/news${locale}" />" class="roboto5">
									<c:if test="${!empty category}">
										<c:choose>
											<c:when test="${lang eq 'en'}">${category.name_en}</c:when>
											<c:when test="${lang eq 'es'}">${category.name_es}</c:when>
											<c:otherwise>${category.name}</c:otherwise>
										</c:choose>
									</c:if>
								</a>
							</div>
							<div class="submenu">
								<c:if test="${!empty subcategoryList}">
									<c:forEach items="${subcategoryList}" var="subcategory">
										<li><a
											href="<c:url value="/news/cat/${subcategory.id}/1/${locale}" />">
												<c:choose>
													<c:when test="${lang eq 'en'}">${subcategory.name_en}</c:when>
													<c:when test="${lang eq 'es'}">${subcategory.name_es}</c:when>
													<c:otherwise>${subcategory.name}</c:otherwise>
												</c:choose>
										</a></li>
									</c:forEach>
								</c:if>
							</div> <img src="<c:url value="/resources/images/tld.png" />"
							hspace="0" style="float: left;"> <img
							src="<c:url value="/resources/images/trd.png" />" hspace="0"
							style="float: right;">


							<div class="t"></div>

							<div class="m">



								<form method="get" action="<c:url value="/search${locale}" />"
									id="cse-search-box">
									<div style="_width: 90%;">

										<input type="text" name="q" class="shadow text"
											style="width: 90%; display: block; color: #b8b8b8; padding-left: 26px;"
											value="<spring:message code="label.sitesearch" />"
											onfocus="if(this.value='<spring:message code="label.sitesearch" />')this.value='';" />

										<div>
											<img src="/resources/images/search.gif"
												style="position: absolute; margin-top: -19px; margin-left: 5px;">
										</div>
										<div style="padding-top: 15px">
											<button type="submit" class="newbut">
												<spring:message code="label.search" />
												<span></span>
											</button>

										</div>
										<br style="clear: both" />
									</div>
								</form>



							</div> <img src="<c:url value="/resources/images/bld.png" />"
							hspace="0" style="float: left;"><img
							src="<c:url value="/resources/images/brd.png" />" hspace="0"
							style="float: right;">
							<div class="b"></div></td>
							<td width="5%"></td>
							<td class="lh" style="padding: 0 23px;">


							<div style="position: relative; height: 260px;"></div> 

							<div style="position: relative; top: -230px; clear: both;">
								<h1 class="roboto1">
									<c:if test="${!empty category}">
										<c:choose>
											<c:when test="${lang eq 'en'}">${category.name_en}</c:when>
											<c:when test="${lang eq 'es'}">${category.name_es}</c:when>
											<c:otherwise>${category.name}</c:otherwise>
										</c:choose>
									</c:if>
								</h1>
								<p>
									<c:if test="${!empty category}">
										<c:choose>
											<c:when test="${lang eq 'en'}">
												<p>${category.content_en}</p>
											</c:when>
											<c:when test="${lang eq 'es'}">
												<p>${category.content_es}</p>
											</c:when>
											<c:otherwise>
												<p>${category.content}</p>
											</c:otherwise>
										</c:choose>
									</c:if>
									<c:if test="${!empty newsList}">
										<c:forEach items="${newsList}" var="news">
											<div class="news">
												${news.created} <a href="<c:url value="/news/${news.id}" />"
													class="text"> <c:choose>
														<c:when test="${lang eq 'en'}">${news.name_en}</a> <strong><p>${news.description_en}</p></strong>
												</c:when>
												<c:when test="${lang eq 'es'}">${news.name_es}</a>
													<strong><p>${news.description_es}</p></strong>
												</c:when>
												<c:otherwise>${news.name}</a>
													<strong><p>${news.description}</p>
												</c:otherwise>
												</c:choose>
											</div>
										</c:forEach>
									</c:if>
								</p>

								<c:if test="${!empty newsList}">
									<div class="navigator">
										<div id="navigator">
											<br>
											<spring:message code="label.records" />
											${page.lengthOfNews}<br>
											<spring:message code="label.page" />
											${post.id} из ${page.pages}<br>
											<c:forEach items="${navList}" var="nav">
												<c:choose>
													<c:when test="${nav.id == post.id}">
													[<u> ${nav.start}<c:if test="${nav.start != nav.end}">..${nav.end}</c:if>
														</u>]
												</c:when>
													<c:otherwise>
													[ <a
															href="<c:url value="/news/nav/${subcategory.id}${nav.id}${locale}" />">
															${nav.start}<c:if test="${nav.start != nav.end}">..${nav.end}</c:if>
														</a> ]
												</c:otherwise>
												</c:choose>
											</c:forEach>

										</div>
									</div>
								</c:if>

								<div></div>

							</div>
						</td>
					</tr>
				</table>

			</td>
		</tr>
		<tr>
			<td id="bottom"><div>

					<script type="text/javascript">
						var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl."
								: "http://www.");
						document
								.write(unescape("%3Cscript src='"
										+ gaJsHost
										+ "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
					</script>
					<script type="text/javascript">
						try {
							var pageTracker = _gat._getTracker("UA-11636727-1");
							pageTracker._trackPageview();
						} catch (err) {
						}
					</script>

					<strong> </strong> &copy; 2008 &mdash;
					<%=new Year().getCurrentYear() %>
					<spring:message code="label.FIH" />
					<br>
					<spring:message code="label.copy" />
				</div></td>
		</tr>
	</table>

</body>

</html>