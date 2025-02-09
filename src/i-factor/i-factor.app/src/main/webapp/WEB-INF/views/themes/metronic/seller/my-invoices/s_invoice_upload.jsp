﻿<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/global.jsp"%>
<%@ include file="/WEB-INF/views/themes/metronic/include/i18n.jsp"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title><fmt:message key="common.topnav.title"/></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <!-- <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" /> -->
    <link rel="stylesheet" href="${base}/static/libs/fonts.googleapis/fonts.googleapis.css">
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/select2/select2.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css" />
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/css/components.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/css/plugins.css" rel="stylesheet" />
    <link href="${base}/static/themes/metronic/css/layout.css" rel="stylesheet" />
    <link id="style_color" href="${base}/static/themes/metronic/css/themes/light2.css" rel="stylesheet" />
    <link href="${base}/static/themes/metronic/css/flaticon/flaticon.css" rel="stylesheet" />
    <link href="${base}/static/themes/metronic/css/custom.css" rel="stylesheet" />
    <link href="${base}/static/themes/metronic/css/application.css" rel="stylesheet"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="${base}/static/themes/metronic/img/home/policy_1.png" />
     <style>
  /*    .page-sidebar .page-sidebar-menu li.active > .sub-menu, .page-sidebar-closed.page-sidebar-fixed .page-sidebar:hover .page-sidebar-menu li.open .sub-menu {
		display: block;
		} */
		
		.page-sidebar .page-sidebar-menu li.open .sub-menu, .page-sidebar-closed.page-sidebar-fixed .page-sidebar:hover .page-sidebar-menu li.open .sub-menu {
		display: block;
		}
     
     </style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-header-fixed page-quick-sidebar-over-content">
    <!-- BEGIN HEADER -->
    <div class="page-header navbar navbar-fixed-top">
        <!-- BEGIN HEADER INNER -->
        <div class="page-header-inner">
            <!-- BEGIN LOGO -->
            <div class="page-logo">
                <a href="index.html">
                    <img src="${base}/static/themes/metronic/img/entroauction_1.png" alt="logo" class="logo-default" />
                </a>
                <div class="menu-toggler sidebar-toggler hide">
                    <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
                </div>
            </div>
            <!-- END LOGO -->
            <!-- BEGIN HEADER SEARCH BOX -->
            <form class="search-form search-form-expanded" action="extra_search.html" method="GET">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search Invoice/Seller/Debtor" name="query">
                    <span class="input-group-btn">
                        <a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
                    </span>
                </div>
            </form>
            <!-- END HEADER SEARCH BOX -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
            </a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->
                    <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="icon-envelope-open"></i>
                            <span class="badge badge-default">
                                <fmt:message key='bc.application.badge.default' />
                            </span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <p>
                                    <fmt:message key='bc.application.dropdown.menu.p' />
                                </p>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list scroller" style="height: 200px;">
                                    <li>
                                        <a href="#">
                                            <span class="label label-sm label-icon label-success">
                                                <i class="fa fa-plus"></i>
                                            </span>
                                            <fmt:message key='bc.application.scroller.label.success' /> <span class="time">
                                                <fmt:message key='bc.application.scroller.label.success1' />
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-sm label-icon label-danger">
                                                <i class="fa fa-bolt"></i>
                                            </span><fmt:message key='bc.application.scroller.label.danger' /><span class="time">
                                                <fmt:message key='bc.application.scroller.label.danger1' />
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-sm label-icon label-warning">
                                                <i class="fa fa-bell-o"></i>
                                            </span>
                                            <fmt:message key='bc.application.scroller.label.warning' /> <span class="time">
                                                <fmt:message key='bc.application.scroller.label.warning1' />
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-sm label-icon label-info">
                                                <i class="fa fa-bullhorn"></i>
                                            </span>
                                            <fmt:message key='bc.application.scroller.label.info' /> <span class="time">
                                                <fmt:message key='bc.application.scroller.label.info1' />
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-sm label-icon label-danger">
                                                <i class="fa fa-bolt"></i>
                                            </span>
                                            <fmt:message key='bc.application.scroller.label.danger' /> <span class="time">
                                                <fmt:message key='bc.application.scroller.label.danger' />
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="external">
                                <a href="#" style="color:#428bca">
                                    <fmt:message key='bc.application.dropdown.menu.external' /> <i class="m-icon-swapright icon-arrow-right" style="color:#428bca; background: none"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown dropdown-language">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/gb.png">
                            <span class="langname"></span>
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/vn.png"> <fmt:message key='common.lang.vi' />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/cn.png"> <fmt:message key='common.lang.simpchinese' />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/cn.png"> <fmt:message key='common.lang.Tradchinese' />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/nl.png"> <fmt:message key='common.lang.bahasa' />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/id.png"> <fmt:message key='common.lang.nederlands' />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/ro.png"> <fmt:message key='common.lang.ramana' />
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <li class="dropdown dropdown-user">
	        <a href="#" class="dropdown-toggle if-dropdown-user" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
	            <img alt="" class="img-circle hide1" src="${base}/static/themes/metronic/img/avatar3_small.jpg" />
	            <span class="username username-hide-on-mobile">
	                <fmt:message key='s.myinvoice.insettlement.username.hide.mobile' />
	            </span>
	            <i class="fa fa-angle-down"></i>
	        </a>
	        <ul class="dropdown-menu">
	            <li>
	                <a href="${base}/seller/profile/view">
	                    <i class="icon-user"></i> <fmt:message key='bc.application.dropdown.menu.icon.user' />
	                </a>
	            </li>
	            <li>
	            <li>
	                <a href="inbox.html">
	                    <i class="icon-envelope-open"></i> <fmt:message key='bc.application.inbox.html' /> &nbsp;&nbsp;&nbsp;&nbsp;<span class="badge badge-danger">
	                        <fmt:message key='bc.application.inbox.html1' />
	                    </span>
	                </a>
	            </li>
	            <li class="divider">
	            </li>
	            <li>
	                <a href="${base}/logout">
	                    <i class="icon-key"></i> <fmt:message key='bc.application.login.html' />
	                </a>
	            </li>
	        </ul>
	    </li>
	    <!-- END USER LOGIN DROPDOWN -->
	    <!-- BEGIN QUICK SIDEBAR TOGGLER -->
	    <li class="dropdown dropdown-extended last">
	        <a href="${base}/logout" class="dropdown-toggle if-logout">
	            <i class="icon-logout"></i>
	        </a>
	    </li>
	    <!-- END QUICK SIDEBAR TOGGLER -->
	    </ul>
	</div>
            <!-- END TOP NAVIGATION MENU -->
        </div>
        <!-- END HEADER INNER -->
    </div>
    <!-- END HEADER -->
    <div class="clearfix">
    </div>
    <!-- BEGIN CONTAINER -->
    <div class="page-container">
        <!-- BEGIN SIDEBAR -->
        <div class="page-sidebar-wrapper">
            <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
            <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
          <div class="page-sidebar">
            <!-- BEGIN SIDEBAR MENU -->
            <div >
              <!-- BEGIN SIDEBAR MENU -->
              <div>
                <!-- BEGIN SIDEBAR MENU -->
                <ul class="page-sidebar-menu " data-auto-scroll="true" data-slide-speed="200">
                  <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
                  <li class="sidebar-toggler-wrapper">
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                    <div class="sidebar-toggler">
                    </div>
                    <!-- END SIDEBAR TOGGLER BUTTON -->
                  </li>

                  <!-- BEGIN Invoices MENU GROUP -->
                  <li class="heading">
                    <h3 class="uppercase">Invoices in the Market</h3>
                  </li>
                  <li class="last">
                    <a href="/seller/auction/apply">
                      <i class="icon-book-open"></i>
                      <span class="title">Open Invoices</span>
                    </a>
                  </li>
                  <!-- END Invoices MENU GROUP -->
                  <!-- BEGIN My Invoices MENU GROUP -->
                  <li class="heading">
                    <span class="badge badge-round badge-danger"></span>
                    <h3 class="uppercase">My Invoices</h3>
                  </li>
                  <li class="active open">
                    <a href="/seller/invoice/upload" onclick="window.location='/seller/invoice/upload'">
                      <i class="icon-folder"></i>
                      <span class="title">Invoice Upload</span>
                      <span class="arrow open"></span>
                    </a>
                    <ul class="sub-menu">
                      <li>
                        <a href="/seller/invoice/upload">
                          <i class="icon-plus"></i> <span class="title">New Invoice Upload</span>
                        </a>
                      </li>
                      <li>
                        <a href="/seller/invoice/upload">
                          <i class="icon-reload"></i>
                          <span class="title">Resume existing invoice upload</span>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="last ">
                    <a href="/seller/invoice/under-approval">
                      <i class="icon-bell"></i>
                      <span class="badge badge-round badge-danger"></span>
                      <span class="title">Invoice Approval Status</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="/seller/invoice/in-auction">
                      <i class="icon-anchor"></i><span class="badge badge-round badge-danger"></span>
                      <span class="title">Invoices in Auction</span>
                    </a>
                  </li>
                  <li class="last ">
                    <a href="/seller/invoice/dealed">
                      <i class="icon-loop"></i><span class="badge badge-round badge-danger"></span>
                      <span class="title">Dealed Invoices </span>
                    </a>
                  </li>
                  <li class="last ">
                    <a href="/seller/invoice/disbursed">
                      <i class="icon-ban"></i><span class="badge badge-round badge-danger"></span>
                      <span class="title">Invoices in Disbursement</span>
                    </a>
                  </li>
                  <li class="last ">
                    <a href="/seller/invoice/insettle">
                      <i class="icon-close"></i><span class="badge badge-round badge-danger"></span>
                      <span class="title">Invoices in Settlement</span>
                    </a>
                  </li>
                  <li class="last ">
                    <a href="/seller/invoice/delisted">
                      <i class="icon-trash"></i><span class="badge badge-round badge-danger"></span>
                      <span class="title">Delisted invoices</span>
                    </a>
                  </li>
                  <li class="last ">
                    <a href="/seller/invoice/finalclosed">
                      <i class="icon-close"></i><span class="badge badge-round badge-danger"></span>
                      <span class="title">Final Closed Invoices</span>
                    </a>
                  </li>
                  <!-- END BIDDING MENU GROUP -->
                  <!-- BEGIN ACCOUNT MENU GROUP -->
                  <li class="heading">
                    <h3 class="uppercase">Account management</h3>
                  </li>
                  <li class="last">
                    <a href="/seller/profile/view">
                      <i class="icon-user"></i>
                      <span class="title">My profile</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="/seller/password/edit">
                      <i class="icon-pencil"></i>
                      <span class="title">Change password</span>
                    </a>
                  </li>
                  <!-- END ACCOUNT MENU GROUP -->
                  <!-- BEGIN FRONTEND THEME LINKS -->
                  <!-- END FRONTEND THEME LINKS -->
                </ul>
                <!-- END SIDEBAR MENU -->
              </div>
              <!-- END SIDEBAR MENU -->
            </div>
            <!-- END SIDEBAR MENU -->
          </div>
        </div>
        <!-- END SIDEBAR -->
        <!-- BEGIN CONTENT -->
        <div class="page-content-wrapper">
            <div class="page-content">

                <!-- BEGIN PAGE HEADER-->
                <div class="page-bar">
                    <ul class="page-breadcrumb">
                        <li>
                            <a href="#"><fmt:message key='s.myinvoice.delisted.page.breadcrumb' /></a>
                            <i class="fa fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="#"><fmt:message key='s.invoice.upload.page.invoiceUpload' /></a>
                        </li>
                    </ul>
                </div>
                <h5 class="page-title">
                    <b><fmt:message key='s.invoice.upload.page.invoiceUpload' /></b>
                </h5>
                <!-- END PAGE HEADER-->
                <!-- BEGIN PAGE CONTENT-->
                <form class="form-inline" id="formQuery" name="listform" method="post" role="form">
                <div class="text-left" style="margin-bottom: 10px">
                  <a href="${base}/seller/invoice/apply" class="btn if-detail-btn-group if-btn-medium" style="font-size: 13px">
                    <fmt:message key='s.invoice.upload.page.button.upload' />
                  </a>
                </div>
              <hr style="color: #cecece; background-color:#cecece;  height: 1px" />

              <div style="margin-bottom: 20px; font-weight: 600; font-size: 14px; color: #3C4DC2">
                <fmt:message key='s.invoice.upload.page.title.resume' />
              </div>
                <div class="clearfix">
                    <div class="panel panel-success">
                      <div class="panel-heading" style="padding: 5px 5px;">
                        <h3 class="if-panel-title bold"><fmt:message key='invoice.list.tbody.queryForm.index.filters' /></h3>
                      </div>
                        <div class="panel-body">
                                <!-- Begin hidden fields -->
                                <!-- Begin Release Date -->
                                <div class="col-sm-2 col-xs-12 text-left  if-div-input-sm "><a href="#"><fmt:message key='s.invoice.upload.page.savingTime' /></a></div>
                                <div class="col-sm-2 col-xs-12 ">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm date-picker" id="saveTimeFrom" name="saveTimeFrom"  readonly="" />
                                </div>
                                <div class="col-sm-2 col-xs-12 ">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm date-picker" id="saveTimeTo" name="saveTimeTo"  readonly="" />
                                </div>
                                <!-- End Release Date -->
                                <!-- Begin Delisting Date -->
                                <div class="col-sm-2 col-xs-12 text-left  if-div-input-sm "><a href="#"><fmt:message key='invoice.list.thead.debtorName' /></a></div>
                                <div class="col-sm-2 col-xs-12 ">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm" id="debtorName" name="debtorName"/>
                                </div>
                                <!-- End Delisting Date -->
                                <!-- End hidden fields -->
                                <div class="col-sm-2 col-xs-12 text-right">
                                    <a href="#" class="btn if-btn" role="button"><fmt:message key='invoice.list.tbody.queryForm.button.apply' /></a>
                                </div>
                            </div>
                        </div>
                    </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="portlet box">
                    <div class="">
                      <!-- table-scrollable -->
                      <table class="table table-striped table-bordered table-hover" id="content_table">
                        <thead>
                        <tr>
                          <th style="width:20px">
                            <fmt:message key='invoice.list.thead.no' />
                          </th>
                          <th style="width:80px">
                            <fmt:message key='s.invoice.upload.page.resumeInvoice' />
                          </th>
                          <th style="width:160px">
                            <fmt:message key='s.invoice.upload.page.savingTime' />
                          </th>
                          <th style="width:260px">
                            <fmt:message key='invoice.list.thead.debtorName' />
                          </th>
                        </tr>
                        </thead>
                        <tbody>
                        <%-- <c:if test="${not empty page.content}">
                        <c:forEach var="item" items="${page.content}" varStatus="status">
                        <tr>
                          <td class="static">
                            ${status.index + 1}
                          </td>
                          <td>
                            <a href="javascript:;"><button type="button" class="btn-small btn-info btn-circle" onclick="window.location='${base}/seller/invoice/resume/${item.id}';">
                              <i class="fa fa-edit"></i>
                            </button></a>
                          </td>
                          <td>
                            <fmt:formatDate value='${item.createTime}' pattern='MM/dd/yyyy HH:mm:ss'/>
                          </td>
                          <td>
                            ${item.debtorName}
                          </td>
                        </tr>
                        </c:forEach>
                        </c:if> --%>
                        </tbody>
                        <tfoot>
                          <%-- <tr>
                            <td colspan="4">
                             <input type="hidden" name="pageNumber" value="${page.number}" />
                             <input type="hidden" name="pageSize" value="${page.size}" />
                               <%@ include file="/WEB-INF/views/themes/metronic/include/pagination.jsp"%>
                            </td>
                          </tr> --%>
                        </tfoot>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
			 </form>
                <!-- END PAGE CONTENT-->
            </div>
        </div>
        <!-- END CONTENT -->
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
    <div class="page-footer">
        <div class="page-footer-inner text-center">
            <fmt:message key="seller.acceptAnOffer.page.copyright"/>
        </div>
        <div class="scroll-to-top">
            <i class="icon-arrow-up"></i>
        </div>
    </div>
    <!-- END FOOTER -->
    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <!--[if lt IE 9]>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/respond.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/excanvas.min.js"></script>
    <![endif]-->
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-1.11.0.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-migrate-1.2.1.min.js"></script>
    <!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery.blockui.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery.cokie.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/uniform/jquery.uniform.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
    <!-- END CORE PLUGINS -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <!--<script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>-->
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/Scroller/js/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap-pager/bootstrapPager.min.js"></script>
    <!-- END PAGE LEVEL PLUGINS -->

    <script src="${base}/static/libs/metronic/3.3.0/assets/global/scripts/metronic.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/admin/pages/scripts/components-pickers.js"></script>
    <script src="${base}/static/themes/metronic/js/layout.js"></script>
    <script src="${base}/static/themes/metronic/js/quick-sidebar.js"></script>
    <script src="${base}/static/themes/metronic/js/ifactor.js"></script>
    
    <script type="text/javascript" src="${base}/static/themes/metronic/js/Date.prototype.js"></script>
    <script>
    
        var app = {
    	      base: '${base}', 
    	      version: '${version.app}', 
    	      loginName: '${loginUser.loginName}',
    	      selfUrl:'${self.url}',
    	      errorMsg: {
    	    	  mailAddress:"<fmt:message key='seller.apply.form.field.address.required'/>",
    	    	  comDistrict2:"<fmt:message key='seller.apply.form.field.comDistrict2.required'/>",
    	    	  comRegion2:"<fmt:message key='seller.apply.form.field.comRegion2.required'/>",
    	    	  comCity2:"<fmt:message key='seller.apply.form.field.comCity2.required'/>",
    	    	  comCountry2:"<fmt:message key='seller.apply.form.field.comCountry2.required'/>",
    	    	  comPostcode2:"<fmt:message key='seller.apply.form.field.comPostcode2.required'/>"
    	      },
    	      
    	      successSavedMsg:"<fmt:message key='seller.apply.message.successSaved'/>",
    	      successUpdatedMsg:"<fmt:message key='seller.apply.message.successUpdated'/>",
    	      successSubmittedMsg:"<fmt:message key='seller.apply.message.successSubmitted'/>",
    	      successRedirectMsg:"<fmt:message key='seller.apply.message.successRedirectMsg'/>"
    	};
        jQuery(document).ready(function () {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            ComponentsPickers.init();
            $('#content_table').DataTable({
                searching: false,
                "order": [[2, "desc"]],
                //      "sDom": 'tip',
                "aoColumnDefs": [{ 'bSortable': false, 'aTargets': [0, 1] }],
                "fnDrawCallback": function (oSettings) {
                    if (oSettings.bSorted || oSettings.bFiltered) {
                        for (var i = 0, iLen = oSettings.aiDisplay.length ; i < iLen ; i++) {
                            $('td:eq(0)', oSettings.aoData[oSettings.aiDisplay[i]].nTr).html(i + 1);
                        }
                    }
                },
                bServerSide : true,
                iDisplayLength:15,
                pagingType: "bootstrapPager",
                pagerSettings: {
                    textboxWidth: 60,
                    firstIcon: "fa fa-angle-double-left",
                    previousIcon: "fa fa-angle-left",
                    nextIcon: "fa fa-angle-right",
                    lastIcon: "fa  fa-angle-double-right",
                    searchOnEnter: true
                },
                sAjaxSource: app.base + '/seller/invoice/upload/list',
                

                "fnServerData" : function(sSource, aoData, fnCallback) {
                	
                	$.ajax({
                		"type" : 'post',
                		"url" : sSource,
                		"dataType" : "json",
                		"data" : aoData ,
                		"success" : function(resp) {
                			fnCallback(resp);
                		}
                	});
                } ,
                "aoColumns":[ 
                          	{ "mData": "sellerId", 'sClass':'left'},
                          	{ "mData": "id", 'sClass':'left'},
                          	{ "mData": "createTime",'sType': 'date','sClass':'center'},
                          	{ "mData": "debtorName", 'sClass':'left'},
                          	],
                          	
                          	
                          	  "fnRowCallback": function(nRow, aData, iDisplayIndex) {// 当创建了行，但还未绘制到屏幕上的时候调用，通常用于改变行的class风格 
                          	     // if(aData.bestBuyerAdv!=null && !"".equals(aData.bestBuyerAdv)){
                              /*       $('td:eq(9)', nRow).html("<a href='' user_id='" + aData.user_id + "' class='ace_detail'>详情</a>");
                                    if (aData.status != 1 && aData.status != 4 && aData.active == 0) { */
                                  	  var cTime=new Date(aData.createTime);
                                  	  var td0 = nRow._DT_RowIndex+1;
                                  	  var td1 = "<a href='${base}/seller/invoice/resume/"+aData.id+"'><button type='button' class='btn-small btn-info btn-circle'> <i class='fa fa-edit'></i>"
                                                   +"</button></a>";
                                      var td2 =  cTime.Format('MM/dd/yyyy HH:mm:ss');
                                      var td3 =  aData.debtorName;
                                        $('td:eq(0)', nRow).html(td0);
                                        $('td:eq(1)', nRow).html(td1);
                                        $('td:eq(2)', nRow).html(td2);
                                        $('td:eq(3)', nRow).html(td3);
                                    
                                    return nRow;
                                },
            });
        });
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
