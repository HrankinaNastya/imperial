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

<title><spring:message code="label.imperial.doyouknow" /></title>

</head>

<body class="green">

	<table cellspacing="0" cellpadding="0" id="main">
		<tr>
			<td id="left" rowspan="2"></td>
			<td id="top">

				<div class="lang">
					<span><img src="<c:url value="/resources/images/l2.png" />"
						hspace="0">
						<div>
							<a href="http://imperial.ua/contacts.html"><img
								src="<c:url value="/resources/images/flag_rus.gif" />"
								alt="<spring:message code="label.ru" />"
								title="<spring:message code="label.ru" />" class="cur"></a><a
								href="http://imperial.ua/7/eng/index.html"><img
								src="<c:url value="/resources/images/flag_eng.gif" />"
								alt="<spring:message code="label.en" />"
								title="<spring:message code="label.en" />"></a>
						</div> <img src="<c:url value="/resources/images/r2.png" />" hspace="0"></span>
				</div>

				<div class="phone">
					<img src="<c:url value="/resources/images/r1g.png" />" hspace="0">
					<div>
						<spring:message code="label.hotline" />
						&mdash; <b>8 (048) <i>780-14-05</i></b>
					</div>
					<img src="<c:url value="/resources/images/l1g.png" />" hspace="0">
				</div>

				<div class="hmc">
					<a href="<c:url value="/" />"><img
						src="<c:url value="/resources/images/pic_home.gif" />"
						title="<spring:message code="label.home" />"></a><a class=""
						href="<c:url value="/sitemap" />"><img
						src="<c:url value="/resources/images/pic_map.gif" />"
						title="<spring:message code="label.sitemap" />"></a><a class=""
						href="<c:url value="/feedback" />"><img
						src="<c:url value="/resources/images/pic_mail.gif" />"
						title="<spring:message code="label.feedback" />"></a>
				</div>



				<div class="menu">
					<div style="width: 100%;">
						<ul>

							<li style="text-align: left;"><a href="<c:url value="/" />"><img
									src="<c:url value="/resources/images/l2.png" />" hspace="0"><b><c:forEach
											items="${categoryList}" var="category">
											<c:if test="${category.id==1}">${category.name}</c:if>
										</c:forEach></b><img src="<c:url value="/resources/images/r2.png" />"
									hspace="0"></a></li>
							<li><a href="<c:url value="/feedback" />"><img
									src="<c:url value="/resources/images/l2.png"  />" hspace="0"><b><c:forEach
											items="${categoryList}" var="category">
											<c:if test="${category.id==4}">${category.name}</c:if>
										</c:forEach></b><img src="<c:url value="/resources/images/r2.png" />"
									hspace="0"></a></li>
							<li><a href="<c:url value="/news" />"><img
									src="<c:url value="/resources/images/l2.png" />" hspace="0"><b><c:forEach
											items="${categoryList}" var="category">
											<c:if test="${category.id==5}">${category.name}</c:if>
										</c:forEach></b><img src="<c:url value="/resources/images/r2.png" />"
									hspace="0"></a></li>
							<li style="text-align: right;"><a
								href="<c:url value="/contacts/1" />"><img
									src="<c:url value="/resources/images/l2.png" />" hspace="0"><b><c:forEach
											items="${categoryList}" var="category">
											<c:if test="${category.id==6}">${category.name}</c:if>
										</c:forEach></b><img src="<c:url value="/resources/images/r2.png" />"
									hspace="0"></a></li>


						</ul>
					</div>
				</div> <span class="submenu"><img
					src="<c:url value="/resources/images/r7g.png" />" hspace="0">
					<div>
						<img src="<c:url value="/resources/images/arrow.png" />"><a
							href="<c:url value="/ecuador" />" class="roboto4"><c:forEach
								items="${categoryList}" var="category">
								<c:if test="${category.id==7}">${category.name}</c:if>
							</c:forEach></a> <img src="<c:url value="/resources/images/arrow.png" />"><a
							href="<c:url value="/bananas" />" class="roboto4"><c:forEach
								items="${categoryList}" var="category">
								<c:if test="${category.id==8}">${category.name}</c:if>
							</c:forEach></a> <img src="<c:url value="/resources/images/arrow.png" />"><a
							href="<c:url value="/logistics" />" class="roboto4 lastrob"><c:forEach
								items="${categoryList}" var="category">
								<c:if test="${category.id==9}">${category.name}</c:if>
							</c:forEach></a>
					</div> <img src="<c:url value="/resources/images/l7g.png" />" hspace="0"></span>


				<table cellspacing="0" cellpadding="0" id="submain">
					<tr valign="top">
						<td width="30%" id="lft"><img
							src="<c:url value="/resources/images/arrow2.png" />"
							class="h1but">
							<div class="h1">
								<a href="<c:url value="/facts" />" class="roboto5"> <c:if
										test="${!empty category}">${category.name}</c:if>
								</a>
							</div> <img src="<c:url value="/resources/images/tld.png" />"
							hspace="0" style="float: left;"> <img
							src="<c:url value="/resources/images/trd.png" />" hspace="0"
							style="float: right;">


							<div class="t"></div>

							<div class="m">



								<form method="post" commandName="q" action="<c:url value="/search${locale}" />"
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


							<div
								style="position: relative; top: -7px; left: -43px; height: 214px;">
								<img src="<c:url value="/resources/images/img_fruits.png" />">
							</div> <c:if test="${!empty fact}">
								<div class="quote">

									<img src="<c:url value="/resources/images/tl2.png" />"
										hspace="0" style="float: left;"><img
										src="<c:url value="/resources/images/tr2.png" />" hspace="0"
										style="float: right;">
									<div class="t2"></div>

									<div class="m2">
										<h2 class="roboto6">
											<spring:message code="label.doyouknow" />
										</h2>
										${fact.description} &nbsp;

									</div>

									<img src="<c:url value="/resources/images/bl2.png" />"
										hspace="0" style="float: left;">
									<div class="b2" style="margin-right: 0px;"></div>
									<div id="know" style="float: right; padding-right: 17px;">
										<a class="newbut knw"
											href="<c:url value="/facts/${fact.id}" />"> <spring:message
												code="label.more" /> <span></span>
										</a>
									</div>

								</div>
							</c:if>

							<div style="position: relative; top: -230px; clear: both;">
								<h1 class="roboto1">
									<c:if test="${!empty category}">${category.name}</c:if>
								</h1>
								<div style="position: relative; top: -230px; clear: both;">
									<c:if test="${!empty category}">
										<p>${category.content}</p>
									</c:if>
								</div>

								<c:if test="${!empty facts}">
									<c:forEach items="${facts}" var="f">
										<div style="margin-bottom: 25px;">
											${f.description}
											<div
												style="font-style: italic; font-weight: bold; font-size: 13px;">
												<a href="<c:url value="/facts/${f.id}" />"><spring:message
														code="label.more" /></a>
											</div>
										</div>
									</c:forEach>
								</c:if>


								<c:if test="${!empty facts}">
									<div class="navigator">
										<div id="navigator">
											<br>Записей: ${page.lengthOfFact}<br>Страница:
											${post.id} из ${page.pages}<br>
											<c:forEach items="${navList}" var="nav">
												<c:choose>
													<c:when test="${nav.id == post.id}">
													[<u> ${nav.start}<c:if test="${nav.start != nav.end}">..${nav.end}</c:if>
														</u>]
												</c:when>
													<c:otherwise>
													[ <a href="<c:url value="/facts/nav/${nav.id}" />">
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