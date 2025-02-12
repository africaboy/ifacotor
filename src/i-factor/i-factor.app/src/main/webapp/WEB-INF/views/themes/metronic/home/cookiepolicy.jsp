<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<%@ include file="/WEB-INF/views/include/global.jsp"%>
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
  <meta charset="utf-8"/>
  <title><fmt:message key="common.topnav.title"/></title>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">
  <meta content="" name="description"/>
  <meta content="" name="author"/>
  <!-- BEGIN GLOBAL MANDATORY STYLES -->
  <!-- <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=all"> -->
   <link rel="stylesheet" href="${base}/static/libs/fonts.googleapis/fonts.googleapis.css">
  <link rel="stylesheet" href="${base}/static/libs/font-awesome-4.2.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap/css/bootstrap.min.css">
  <!--Slider-->
  <link rel="stylesheet" href="${base}/static/libs/slider/3.2/themes/default/default.css" type="text/css" media="screen">
  <link rel="stylesheet" href="${base}/static/libs/slider/3.2/nivo-slider.css" type="text/css" media="screen">
  <link rel="stylesheet" href="${base}/static/libs/slider/3.2/style.css" type="text/css" media="screen">
  <!-- End slider -->
  <link rel="stylesheet" type="text/css" href="${base}/static/themes/metronic/css/homepage.css">
  <link rel="shortcut icon" href="${base}/static/themes/metronic/img/home/policy_1.png"/>

</head>

<body>
<div class="header">
  <div class="header_container">
    <div class="head_logo">
      <a href="${base}/"><img src="${base}/static/themes/metronic/img/home/logo.png" alt="logo" /></a>
    </div>
    <div class="text-left slogan">
      <fmt:message key="common.topnav.cwcmfs"/>
    </div>
  </div>
</div>
<div class="head_menu">
  <div class="menu_container">
    <ul class="menu cf">
      <li>
        <a href="${base}/" class="text">
          <div class="small_text"><fmt:message key="common.topnav.about"/></div>
          <div class="medium_text"><fmt:message key="common.topnav.entroAuction"/></div>
        </a>
      </li>
      <li>
        <a href="${base}/home/help" class="text">
          <div class="small_text"><fmt:message key="common.topnav.how"/></div>
          <div class="medium_text"><fmt:message key="common.topnav.itWorks"/></div>
        </a>
      </li>
      <li>
        <a href="${base}/home/contact-us" class="text">
          <div class="small_text"><fmt:message key="common.topnav.contact"/></div>
          <div class="medium_text"><fmt:message key="common.topnav.us"/></div>
        </a>
      </li>
      <li class="language">
        <a class="text language_text">
          <c:if test="${self.locale=='en_US'}"> </c:if> <img src="${base}/static/themes/metronic/img/home/flag/gb.png"/>&nbsp;<fmt:message key="common.lang.en"/>&nbsp;<img src="${base}/static/themes/metronic/img/home/a.png"/>
          <ul class="submenu">
            <li><c:if test="${self.locale=='vi_VN'}"> </c:if><img src="${base}/static/themes/metronic/img/home/flag/vn.png"/>&nbsp;<fmt:message key="common.lang.vi"/></li>
            <li><img src="${base}/static/themes/metronic/img/home/flag/cn.png"/>&nbsp;<fmt:message key="common.lang.simpchinese"/></li>
            <li><img src="${base}/static/themes/metronic/img/home/flag/cn.png"/>&nbsp;<fmt:message key="common.lang.Tradchinese"/></li>
            <li><img src="${base}/static/themes/metronic/img/home/flag/id.png"/>&nbsp;<fmt:message key="common.lang.bahasa"/></li>
            <li><img src="${base}/static/themes/metronic/img/home/flag/nl.png"/>&nbsp;<fmt:message key="common.lang.nederlands"/></li>
            <li><img src="${base}/static/themes/metronic/img/home/flag/ro.png"/>&nbsp;<fmt:message key="common.lang.ramana"/></li>
         
          </ul>
        </a>
      </li>
      <li class="login_link">
        <a class="text" href="${base}/login"><span><fmt:message key="common.topnav.login"/></span></a>
      </li>
      <li class="login_link">
        <a class="text" href="${base}/#apply-now"><fmt:message key="common.topnav.join"/>&nbsp;<b><fmt:message key="common.topnav.today"/></b></a>
      </li>
    </ul>
  </div>
</div>

<div class="slider-containter">
     <div class="slider-wrapper theme-default">
       <img src="${base}/static/themes/metronic/img/home/cookiepolicy_banner.png" alt="">
     </div>
		<div class="running_text marquee">
	  <!--<marquee  scrollamount="5"  loop="-1">Over £227,547,880 of invoices traded and 56,424 successful transaction</marquee>-->
         <fmt:message key="cookiepolicy.center.marquee"/>
		</div>
</div>
<div class="policyheader">
<c:if test="${self.locale=='en_US'}">
  <span style="font-weight: lighter">  <fmt:message key="cookiepolicy.center.title.Cookie"/>&nbsp;</span><span style="font-weight: bold"><fmt:message key="cookiepolicy.center.title.Policy"/></span>
</c:if>
<c:if test="${self.locale=='vi_VN'}">
  <span style="font-weight: bold"><fmt:message key="cookiepolicy.center.title.Policy"/></span>&nbsp;<span style="font-weight: lighter">  <fmt:message key="cookiepolicy.center.title.Cookie"/></span>
</c:if>
</div>
<div class="policy_block_container">
  <div class="policy_block heading big_text">
   <fmt:message key="cookiepolicy.center.content.heading"/>
  </div>
  <div class="policy_block">
    <div class="policy_left"><img src="${base}/static/themes/metronic/img/home/policy_1.png"></div>
    <div class="policy_right small_text"><span><fmt:message key="cookiepolicy.center.content.Policy1"/></span></div>
  </div>
  <div class="clr"></div>
  <div class="policy_block">
    <div class="policy_left"><img src="${base}/static/themes/metronic/img/home/policy_2.png"></div>
    <div class="policy_right small_text"><span><fmt:message key="cookiepolicy.center.content.Policy2"/></span></div>
  </div>
  <div class="clr"></div>
  <div class="policy_block">
    <div class="policy_left"><img src="${base}/static/themes/metronic/img/home/policy_3.png"></div>
    <div class="policy_right small_text"><span><fmt:message key="cookiepolicy.center.content.Policy3"/></span></div>
  </div>
  <div class="clr"></div>
  <div class="policy_block last">
    <div class="policy_left"><img src="${base}/static/themes/metronic/img/home/policy_4.png"></div>
    <div class="policy_right small_text"><span><fmt:message key="cookiepolicy.center.content.Policy4"/></span></div>
  </div>
  <div class="clr"></div>
</div>

<div id="menu-footer">
  <div id="menu-footer-content">
    	<ul>    
            <li><a href="${base}/"><fmt:message key="index.center.menu.footer.aea"/></a></li>
            <li><a href="${base}/home/help"><fmt:message key="index.center.menu.footer.hiw"/></a></li>
            <li><a href="${base}/home/contact-us"><fmt:message key="index.center.menu.footer.ctu"/></a></li>
            <li><a href="${base}/home/cookiepolicy"><fmt:message key="index.center.menu.footer.ckp"/></a></li>
            <li><a href="${base}/home/termofuse"><fmt:message key="index.center.menu.footer.tou"/></a></li>
        </ul>
  </div>
</div>
<div class="company-logo">
  <div class="company-logo-left">
    <div class="hnx-logo"><img src="${base}/static/themes/metronic/img/home/hnx-logo.png"></div>
    <div class="hnx-title"><fmt:message key="cookiepolicy.center.hnx.title"/></div>
    <div class="hnx-weblink"><a href="http://www.bank.site" target="_blank"><fmt:message key="cookiepolicy.center.hnx.weblink"/></a></div>
  </div>
  <div class="company-vertical-divider"></div>
  <div class="company-logo-right">
    <div class="ef-logo"><img src="${base}/static/themes/metronic/img/home/ef-logo.png"></div>
    <div class="ef-title"><fmt:message key="cookiepolicy.center.ef.title"/></div>
    <div class="ef-weblink"><a href="http://www.entrofine.com" target="_blank"><fmt:message key="cookiepolicy.center.ef.weblink"/></a></div>
  </div>
</div>
<!--<div id="company-logo">
	<div id="company-logo-content">
		<img src="${base}/static/themes/metronic/img/home/company-logo.jpg" usemap="#linkmap" />
    <map name="linkmap">
      <area shape="rect" coords="220,0,360,92" href="http://www.hnx.vn" target="_blank" alt="HNX">
      <area shape="rect" coords="362,0,500,92" href="http://www.entrofine.com" target="_blank" alt="Entrofine">
    </map>
  </div>
</div>-->
<div id="footer">
	<div id="footer-content">
       <p><fmt:message key="cookiepolicy.below.footer.content"/></p>
    </div>
</div>
<!--[if lt IE 9]>
<script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/respond.min.js"></script>
<![endif]-->
<script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-1.11.0.min.js"></script>
<script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-migrate-1.2.1.min.js"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"></script>
<script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap/js/bootstrap.min.js"></script>

<script src="${base}/static/libs/slider/3.2/jquery.nivo.slider.js"></script>
<script src="${base}/static/libs/jquery.marquee/1.0/jquery.marquee.min.js"></script>
<script>
  $(window).load(function () {
    $('.marquee').marquee({
      //speed in milliseconds of the marquee
      duration: 10000,
      //gap in pixels between the tickers
      gap: 200,
      //time in milliseconds before the marquee will start animating
      delayBeforeStart: 0,
      //'left' or 'right'
      direction: 'left',
      //true or false - should the marquee be duplicated to show an effect of continues flow
      duplicated: true
    });
  });
</script>
</body>
</html>
