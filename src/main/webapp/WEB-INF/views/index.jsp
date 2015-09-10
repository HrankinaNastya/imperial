<%@page import="ua.imperial.entities.Year"%>
<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
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

<link rel="icon"
	href="<c:url value=
"/resources/images/favicon.ico" />"
	type="image/x-icon">
<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">

<script type="text/javascript" src="/resources/js/jquery.js"></script>


<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

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
							<a href="http://imperial.ua/about_us.html"><img
								src="/resources/images/flag_rus.gif"
								alt="<spring:message code="label.ru" />"
								title="<spring:message code="label.ru" />" class="cur"></a><a
								href="http://imperial.ua/1/eng/index.html"><img
								src="/resources/images/flag_eng.gif"
								alt="<spring:message code="label.en" />"
								title="<spring:message code="label.en" />"></a>
						</div> <img src="/resources/images/r2.png" hspace="0"></span>
				</div>

				<div class="phone">
					<img src="/resources/images/r1.png" hspace="0">
					<div>
						<spring:message code="label.hotline" />
						&mdash; <b>8 (048) <i>780-14-05</i></b>
					</div>
					<img src="/resources/images/l1.png" hspace="0">
				</div>

				<div class="hmc">
					<a href="./"><img src="/resources/images/pic_home.gif"
						title="<spring:message code="label.home" />"></a><a class=""
						href="sitemap.html"><img src="/resources/images/pic_map.gif"
						title="<spring:message code="label.sitemap" />"></a><a class=""
						href="contacts.html"><img src="/resources/images/pic_mail.gif"
						title="<spring:message code="label.feedback" />"></a>
				</div>


				<div class="menu">
					<div style="width: 100%;">
						<ul>

							<li style="text-align: left;" class="cur"><a
								href="about_us.html"><img src="/resources/images/l4.png"
									hspace="0"><b><c:forEach items="${categoryList}"
											var="category">
											<c:if test="${category.id==1}">${category.name}</c:if>
										</c:forEach></b><img src="/resources/images/r4.png" hspace="0"></a></li>
							<li><a href="partnership.html"><img
									src="/resources/images/l2.png" hspace="0"><b><c:forEach
											items="${categoryList}" var="category">
											<c:if test="${category.id==4}">${category.name}</c:if>
										</c:forEach></b><img src="/resources/images/r2.png" hspace="0"></a></li>
							<li><a href="news.html"><img
									src="/resources/images/l2.png" hspace="0" alt=""><b><c:forEach
											items="${categoryList}" var="category">
											<c:if test="${category.id==5}">${category.name}</c:if>
										</c:forEach></b><img src="/resources/images/r2.png" hspace="0"></a></li>
							<li style="text-align: right;"><a href="contacts.html"><img
									src="/resources/images/l2.png" hspace="0"><b><c:forEach
											items="${categoryList}" var="category">
											<c:if test="${category.id==6}">${category.name}</c:if>
										</c:forEach></b><img src="/resources/images/r2.png" hspace="0"></a></li>


						</ul>
					</div>
				</div>

				<table id="cb" cellspacing="0" border="0" cellpadding="0"
					width="100%" style="clear: both">
					<tr valign="top">
						<td onclick="location.href='http://imperial.ua/meat.html'"><a
							href="meat.html"><ul id="slide_meat"
									style="list-style: none;">
									<li><img class="frst"
										src="/resources/images/pic_meat7.png" /></li>


								</ul> </a>
							<div class="meat_n">
								<h2 class="h2_roboto">
									<a href="meat.html"><c:forEach items="${categoryList}"
											var="category">
											<c:if test="${category.id==7}">${category.name}</c:if>
										</c:forEach></a>
								</h2>
							</div></td>

						<td onclick="location.href='http://imperial.ua/fruits.html'">
							<a style="cursor: pointer;" href="fruits.html">
								<ul id="slide_fruit" style="list-style: none;">
									<li><img src="/resources/images/pic_fruit1.png" /></li>
								</ul>
						</a>
							<div class="fruit_n">
								<h2 class="h2_roboto">
									<a href="fruits.html"><c:forEach items="${categoryList}"
											var="category">
											<c:if test="${category.id==8}">${category.name}</c:if>
										</c:forEach></a>
								</h2>
							</div>
						</td>

						<td onclick="location.href='http://imperial.ua/logistics.html'">

							<a style="cursor: pointer;" href="logistics.html">
								<ul id="slide_trans" style="list-style: none;">
									<li><img src="/resources/images/pic_trans1.png" /></li>
								</ul>
						</a>
							<div class="trans_n">
								<h2 class="h2_roboto">
									<a href="logistics.html"><c:forEach items="${categoryList}"
											var="category">
											<c:if test="${category.id==9}">${category.name}</c:if>
										</c:forEach></a>
								</h2>
							</div>
						</td>
					</tr>
				</table>
				<table cellspacing="0" cellpadding="0" id="submain">

					<tr valign="top">
						<td width="30%">
							<h3 class="h3_roboto">
								<spring:message code="label.lastnews" />
							</h3>
							<div id="sidebar">
								<ul class="spy">

								</ul>
							</div> <a
							href="http://imperial.ua/index.php?PublicationID=6&Language=rus"
							style="color: #9acfe9; display: block; margin: 37px 47px 41px;"><spring:message
									code="label.allnews" /></a> <img src="/resources/images/tl.png"
							hspace="0" style="float: left;"><img
							src="/resources/images/tr.png" hspace="0" style="float: right;">
							<div class="t"></div>

							<div class="m">



								<form action="http://imperial.ua/search.html"
									id="cse-search-box">
									<div style="_width: 90%;">

										<input type="hidden" name="cx"
											value="001330795240219927122:8nphcldyxgg" /> <input
											type="hidden" name="cof" value="FORID:9" /> <input
											type="hidden" name="ie" value="windows-1251" />

										<script type="text/javascript"
											src="http://www.google.com/cse/brand?form=cse-search-box&lang=ru"></script>

										<input type="text" name="q" class="shadow text"
											style="width: 90%; display: block; color: #b8b8b8; padding-left: 26px;"
											value="<spring:message code="label.sitesearch" />"
											onfocus="if(this.value='<spring:message code="label.sitesearch" />')this.value='';" />

										<div>
											<img src="/resources/images/search.gif"
												style="position: absolute; margin-top: -19px; margin-left: 5px;">
										</div>
										<div style="padding-top: 15px">

											<a class="newbut" href=""
												onclick="document.getElementById('cse-search-box').submit(); return false;"><spring:message
													code="label.search" /><span></span></a>
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

								<h1 class="h1_roboto">
									<spring:message code="label.h1index" />
								</h1>
								<div align="justify">
									<c:if test="${!empty category}">${category.content}</c:if>
									<div></div>

								</div>
								<br> <br> <br>
								<div id="mapfirstpage" align="center">
									<h2>
										<a href="#"><spring:message code="label.branchoffices" /></a>
									</h2>
									<iframe
										src="https://www.google.com/maps/d/embed?mid=zn_ZULhOr7HQ.kYlUrvDkaRyg"
										width="640" height="480"></iframe>
								</div>
							</div>


							<div
								style="clear: both; padding: 53px 0 22px 23px; _padding-top: 27px;">
								<h3 class="h3_roboto">
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


									<script>
										var adr = '<spring:message code="label.youremail" />';

										var _check_field = '<spring:message code="label.checkfield" />';

										function ChaeckSubscribe()

										{

											if (!checkMail(document.subscribe.mail.value))

											{

												alert(_check_field + ' "' + adr
														+ '"!');

												return false;

											}

											return CheckFormByArray(
													"subscribe", Array("name",
															"company", "city"));

										}
									</script>

									<form name="subscribe"
										action="publication/modules/subscribe/index.php"
										target="subtag" method="post"
										onsubmit="return ChaeckSubscribe();">

										<td style="padding-right: 50px;"><input
											class="shadow text w100" style="color: #b8b8b8;" name="mail"
											value="<spring:message code="label.youremail" />"
											onfocus="if(this.value==adr){this.value=''; document.getElementById('addfilds').style.display='block'};">

											<div id="addfilds" style="display: none;">

												<div class="form">
													<spring:message code="label.FIO" />
												</div>
												<input class="shadow text w100" name="name">

												<div class="form">
													<spring:message code="label.company" />
												</div>
												<input class="shadow text w100" name="company">

												<div class="form">
													<spring:message code="label.city" />
												</div>
												<input class="shadow text w100" name="city">

											</div>


											<div style="margin-top: 15px">
												<a class="newbut" href=""
													onclick="if(ChaeckSubscribe())document.subscribe.submit(); return false;"><spring:message
														code="label.subscribe" /><span></span></a>
											</div></td>

									</form>

								</tr>

							</table>
							<div id="scht">
								<a href="http://top100.rambler.ru/home?id=2164113"> <img
									src="http://cnt.rambler.ru/top100.cnt?2164113"
									alt="Rambler's Top100" width="81" height="63" border="0" />
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


					<strong> <a href="http://ustimenko.com.ua/" targe
						t="_blank"><spring:message code="label.design" /> &mdash; <u>ustimenko.com.ua</u></a><br>
						<a href="#" target="_blank"><spring:message
								code="label.websiteCreation" /> &mdash; <u>HrankinaAnastasiia</u></a>
					</strong> &copy; 2008 &mdash;
					<%= new Year().getСurrentYear() %>
					<spring:message code="label.FIH" />
					<br>
					<spring:message code="label.copy" />

				</div></td>
		</tr>
	</table>



</body>
</html>