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

<link rel="icon" href="<c:url value=
"/resources/images/favicon.ico" />"
	type="image/x-icon">
	
<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">

<script type="text/javascript" src="/resources/js/jquery.js"></script>

<link rel="stylesheet"
	href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/MarkerCluster.css" />" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/MarkerCluster.Default.css" />" />
<script type="text/javascript"
	src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
<script type="text/javascript"
	src="/resources/js/leaflet.markercluster.js"></script>
<script type="text/javascript" src="/resources/js/leaflet.geocsv.js"></script>

<link rel="icon" href="/images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

<!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<title><spring:message code="label.imperial" /></title>
</head>
<body>

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
					<img src="/resources/images/r1.png" hspace="0">
					<div>
						<spring:message code="label.hotline" />
						&mdash; <b>8 (048) <i>780-14-05</i></b>
					</div>
					<img src="/resources/images/l1.png" hspace="0">
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

							<li style="text-align: left;" class="cur"><a
								href="<c:url value="/${locale}" />"><img
									src="/resources/images/l4.png" hspace="0"><b><c:if
											test="${!empty categoryList[0].id}">
											<c:choose>
												<c:when test="${lang eq 'en'}">${categoryList[0].name_en}</c:when>
												<c:when test="${lang eq 'es'}">${categoryList[0].name_es}</c:when>
												<c:otherwise>${categoryList[0].name}</c:otherwise>
											</c:choose>
										</c:if> </b><img src="/resources/images/r4.png" hspace="0"></a></li>
							<li><a href="<c:url value="/feedback${locale}" />"><img
									src="/resources/images/l2.png" hspace="0"><b><c:if
											test="${!empty categoryList[1].id}">
											<c:choose>
												<c:when test="${lang eq 'en'}">${categoryList[1].name_en}</c:when>
												<c:when test="${lang eq 'es'}">${categoryList[1].name_es}</c:when>
												<c:otherwise>${categoryList[1].name}</c:otherwise>
											</c:choose>
										</c:if></b><img src="/resources/images/r2.png" hspace="0"></a></li>
							<li><a href="<c:url value="/news${locale}" />"><img
									src="/resources/images/l2.png" hspace="0" alt=""><b><c:if
											test="${!empty categoryList[2].id}">
											<c:choose>
												<c:when test="${lang eq 'en'}">${categoryList[2].name_en}</c:when>
												<c:when test="${lang eq 'es'}">${categoryList[2].name_es}</c:when>
												<c:otherwise>${categoryList[2].name}</c:otherwise>
											</c:choose>
										</c:if></b><img src="/resources/images/r2.png" hspace="0"></a></li>
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


						</ul>
					</div>
				</div>

				<table id="cb" cellspacing="0" border="0" cellpadding="0"
					width="100%" style="clear: both">
					<tr valign="top">
						<td onclick="location.href='<c:url value="/ecuador${locale}" />'"><a
							href="<c:url value="/ecuador${locale}" />"><ul
									id="slide_meat" style="list-style: none;">
									<li><img class="frst"
										src="/resources/images/pic_fruit4.png" /></li>


								</ul> </a>
							<div class="meat_n">
								<h2 class="roboto2">
									<a href="<c:url value="/ecuador${locale}" />"><c:if
											test="${!empty categoryList[4].id}">
											<c:choose>
												<c:when test="${lang eq 'en'}">${categoryList[4].name_en}</c:when>
												<c:when test="${lang eq 'es'}">${categoryList[4].name_es}</c:when>
												<c:otherwise>${categoryList[4].name}</c:otherwise>
											</c:choose>
										</c:if></a>
								</h2>
							</div></td>

						<td onclick="location.href='<c:url value="/bananas${locale}" />'">
							<a style="cursor: pointer;"
							href="<c:url value="/bananas${locale}" />">
								<ul id="slide_fruit" style="list-style: none;">
									<li><img src="/resources/images/pic_fruit1.png" /></li>
								</ul>
						</a>
							<div class="fruit_n">
								<h2 class="roboto2">
									<a href="<c:url value="/bananas${locale}" />"><c:if
											test="${!empty categoryList[5].id}">
											<c:choose>
												<c:when test="${lang eq 'en'}">${categoryList[5].name_en}</c:when>
												<c:when test="${lang eq 'es'}">${categoryList[5].name_es}</c:when>
												<c:otherwise>${categoryList[5].name}</c:otherwise>
											</c:choose>
										</c:if></a>
								</h2>
							</div>
						</td>

						<td
							onclick="location.href='<c:url value="/logistics${locale}" />'">

							<a style="cursor: pointer;"
							href="<c:url value="/logistics${locale}" />">
								<ul id="slide_trans" style="list-style: none;">
									<li><img src="/resources/images/pic_trans1.png" /></li>
								</ul>
						</a>
							<div class="trans_n">
								<h2 class="roboto2">
									<a href="<c:url value="/logistics${locale}" />"><c:if
											test="${!empty categoryList[6].id}">
											<c:choose>
												<c:when test="${lang eq 'en'}">${categoryList[6].name_en}</c:when>
												<c:when test="${lang eq 'es'}">${categoryList[6].name_es}</c:when>
												<c:otherwise>${categoryList[6].name}</c:otherwise>
											</c:choose>
										</c:if></a>
								</h2>
							</div>
						</td>
					</tr>
				</table>
				<table cellspacing="0" cellpadding="0" id="submain">

					<tr valign="top">
						<td width="30%">
							<h3 class="roboto3">
								<spring:message code="label.lastnews" />
							</h3>
							<div id="sidebar">
								<ul class="spy">

								</ul>
							</div> <a href="<c:url value="/news${locale}" />"
							style="color: #9acfe9; display: block; margin: 37px 47px 41px;"><spring:message
									code="label.allnews" /></a> <img src="/resources/images/tl.png"
							hspace="0" style="float: left;"><img
							src="/resources/images/tr.png" hspace="0" style="float: right;">
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



							</div> <img src="/resources/images/bl.png" hspace="0"
							style="float: left;"><img src="/resources/images/br.png"
							hspace="0" style="float: right;">
							<div class="b"></div>
						</td>
						<td width="5%"></td>
						<td class="lh">

							<div style="padding: 0 23px;">

								<h1 class="roboto1">
									<spring:message code="label.h1index" />
								</h1>
								<div align="justify">
									<c:if test="${!empty category}">
										<c:choose>
											<c:when test="${lang eq 'en'}">${category.content_en}</c:when>
											<c:when test="${lang eq 'es'}">${category.content_es}</c:when>
											<c:otherwise>${category.content}</c:otherwise>
										</c:choose>
									</c:if>
									<div></div>

								</div>
								<br> <br> <br>
								<div id="mapfirstpage" align="center">
									<h2>
										<a href="#"><spring:message code="label.branchoffices" /></a>
									</h2>

									<div id="mapdiv" style="width: 650px; height: 400px">
										There is a map</div>

									<div id="locations" style="white-space: pre; display: none">
										<c:if test="${!empty coordinatesList}">

											<c:forEach items="${coordinatesList}" var="coordinates">
												${coordinates.longitude},${coordinates.latitude},${coordinates.city},${coordinates.city}: ${coordinates.address}
  											</c:forEach>

										</c:if>
									</div>


									<script type="text/javascript" src="/resources/js/script.js"></script>
								</div>
							</div>


							<div
								style="clear: both; padding: 53px 0 22px 23px; _padding-top: 27px;">
								<h3 class="roboto3">
									<spring:message code="label.Learnmoreaboutus" />
								</h3>
							</div> <img src="/resources/images/tl.png" hspace="0"
							style="float: left;"><img src="/resources/images/tr.png"
							hspace="0" style="float: right;">
							<div style="margin: 0 20px; border-top: 1px solid #687d92;"></div>

							<table cellspacing="0" cellpadding="0"
								style="clear: both; width: 100%; height: 80px; border-left: 1px solid #687d92; border-right: 1px solid #687d92; padding: 0 22px;">

								<tr valign="top">

									<td width="45%" class="lh"><spring:message
											code="label.info" /></td>

									<td width="7%;"></td>


									<form:form method="post" action="addSubscribe${locale}"
										commandName="subscribe">

										<td style="padding-right: 50px;"><form:label path="email"
												style="color: #b8b8b8; margin-botoom:5px;">
												<spring:message code='label.youremail' />
											</form:label><br> <form:input path="email" required="required"
												class="shadow text w100" type="email" id="email" /> <form:input
												path="created" hidden="true" />
											<div style="margin-top: 15px">
												<button type="submit" class="newbut">
													<spring:message code="label.subscribe" />
													<span></span>
												</button>
											</div></td>

									</form:form>

								</tr>

							</table>
							<div id="scht">
								<a href="http://top100.rambler.ru/home?id=2164113"> <img
									src="http://cnt.rambler.ru/top100.cnt?2164113"
									alt="Rambler's Top100" width="81" height="63" border="0" /></a>
							</div>


							<div id="scht3">

								<a target="_top" href="http://top.mail.ru/jump?from=1832819">
									<img
									src="http://d7.cf.bb.a1.top.mail.ru/counter?id=1832819;t=243"
									border="0" height="31" width="90"
									alt="<spring:message code="label.ratingMail" />">
								</a>

							</div> <img src="/resources/images/bl.png" hspace="0"
							style="float: left;"><img src="/resources/images/br.png"
							hspace="0" style="float: right;">
							<div
								style="margin: 0 20px; height: 19px; line-height: 19px; border-bottom: 1px solid #687d92;"></div>

							<iframe src="about:blank" name="subtag" width="0" height="0"
								frameborder="0" border="0" scrolling="no" APPLICATION="yes"
								style="display: none;"></iframe>
							</div>
							<div id="scht2">
								<script type="text/javascript" language="javascript">
									hotlog_js = "1.0";
									hotlog_r = "" + Math.random()
											+ "&s=2063094&im=101&r="
											+ escape(document.referrer)
											+ "&pg="
											+ escape(window.location.href);
									document.cookie = "hotlog=1; path=/";
									hotlog_r += "&c="
											+ (document.cookie ? "Y" : "N");
								</script>
								<script type="text/javascript" language="javascript1.1">
									hotlog_js = "1.1";
									hotlog_r += "&j="
											+ (navigator.javaEnabled() ? "Y"
													: "N");
								</script>
								<script type="text/javascript" language="javascript1.2">
									hotlog_js = "1.2";
									hotlog_r += "&wh="
											+ screen.width
											+ "x"
											+ screen.height
											+ "&px="
											+ (((navigator.appName.substring(0,
													3) == "Mic")) ? screen.colorDepth
													: screen.pixelDepth);
								</script>
								<script type="text/javascript" language="javascript1.3">
									hotlog_js = "1.3";
								</script>
								<script type="text/javascript" language="javascript">
									hotlog_r += "&js=" + hotlog_js;
									document
											.write('<a href="http://click.hotlog.ru/?2063094" target="_top"><img '
													+ 'src="http://hit34.hotlog.ru/cgi-bin/hotlog/count?'
													+ hotlog_r
													+ '" border="0" width="90" height="31" alt="HotLog"><\/a>');
								</script>
								<noscript>
									<a href="http://click.hotlog.ru/?2063094" target="_top"><img
										src="http://hit34.hotlog.ru/cgi-bin/hotlog/count?s=2063094&im=101"
										border="0" width="88" height="31" alt="HotLog"></a>
								</noscript>
							</div>

							<div id="scht1">

								<script type="text/javascript"></script>

								<a href="http://www.liveinternet.ru/click" target="_blank"><img
									src="/resources/images/live-image.png"
									title="<spring:message code="label.liveInternet" />" alt=""
									border="0" width="88" height="31" /></a>


							</div>

							<div id="scht4">
								<a href="http://zakladki.od.ua/"><img
									src="http://zakladki.od.ua/counter.php?id_counter=1&url=http://www.imperial.ua&key=1587db612d11b556f113d2cb5019b9e8&host=http://zakladki.od.ua/"
									border="0"></a>
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


					<strong> </strong> &copy; 2008 &mdash;
					<%=new Year().getCurrentYear() %>
					<spring:message code="label.FIH" />
					<br>
					<spring:message code="label.copy" />

				</div></td>
		</tr>
	</table>

<script type="text/javascript">
$(document).ready(function(){   

    $('#email').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });

     });  
</script>

</body>
</html>