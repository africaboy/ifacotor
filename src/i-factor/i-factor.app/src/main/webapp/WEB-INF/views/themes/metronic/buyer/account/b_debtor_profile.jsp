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
  <meta charset="utf-8"/>
  <title><fmt:message key="common.topnav.title"/></title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">
  <meta content="" name="description"/>
  <meta content="" name="author"/>
  <!-- BEGIN GLOBAL MANDATORY STYLES -->
  <!-- <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet"/> -->
  <link rel="stylesheet" href="${base}/static/libs/fonts.googleapis/fonts.googleapis.css">
  <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
  <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet"/>
  <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet"/>
  <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet"/>
  <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"/>
  <!-- END GLOBAL MANDATORY STYLES -->
  <!-- BEGIN PAGE LEVEL STYLES -->
  <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/select2/select2.css"/>
  <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css"/>
  <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css"/>
  <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
  <!-- END PAGE LEVEL STYLES -->
  <!-- BEGIN THEME STYLES -->
  <link href="${base}/static/libs/metronic/3.3.0/assets/global/css/components.css" rel="stylesheet"/>
  <link href="${base}/static/libs/metronic/3.3.0/assets/global/css/plugins.css" rel="stylesheet"/>
  <link href="${base}/static/themes/metronic/css/layout.css" rel="stylesheet"/>
  <link id="style_color" href="${base}/static/themes/metronic/css/themes/light2.css" rel="stylesheet"/>
  <link href="${base}/static/themes/metronic/css/flaticon/flaticon.css" rel="stylesheet"/>
  <link href="${base}/static/themes/metronic/css/custom.css" rel="stylesheet"/>
  <!-- END THEME STYLES -->
  <link rel="shortcut icon" href="${base}/static/themes/metronic/img/home/policy_1.png"/>
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
        <img src="${base}/static/themes/metronic/img/entroauction_1.png" alt="logo" class="logo-default"/>
      </a>
      <div class="menu-toggler sidebar-toggler hide">
        <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
      </div>
    </div>
    <!-- END LOGO -->
    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
    <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
    </a>
    <!-- END RESPONSIVE MENU TOGGLER -->
    <!-- BEGIN TOP NAVIGATION MENU -->
    <div class="top-menu">
      <ul class="nav navbar-nav pull-right">
        <li class="dropdown dropdown-language">
          <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
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
        <!-- BEGIN QUICK SIDEBAR TOGGLER -->
        <li class="dropdown dropdown-extended last">
          <a href="${base}/buyer/bid/open" class="dropdown-toggle if-logout">
            <i class="icon-close"></i>
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

<!-- END SIDEBAR -->
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
<div class="page-content if-detail-auction-content">
<!-- BEGIN PAGE HEADER-->
  <div class="page-bar">
    <ul class="page-breadcrumb">
      <li>
        <a href="javascript:;"><fmt:message key='buyer.debtor.profile.page.header.debtor' /></a>
      </li>
    </ul>
  </div>
<h5 class="page-title">
  <b><fmt:message key='buyer.debtor.profile.page.header.debtor' /></b>
</h5>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<!-- Begin general information -->
<div class="clearfix">
  <div class="if-panel-head if-panel-blue">
    <fmt:message key='buyer.debtor.profile.page.panel.title' />
  </div>
  <div class="panel panel-success">
    <div class="panel-body">
      <div class="row">
        <!-- Row 1 -->
        <div class="col-sm-2 col-xs-12 text-left if-div-input-sm"><a href="javascript:;"><fmt:message key='buyer.debtor.profile.page.panel.debtorName' /></a></div>
        <div class="col-sm-6 col-xs-12">
          <input type="text" class="form-control if-input-sm if-div-input-sm" readonly  id="txtDebtorName" value="${invoice.debtorName}">
        </div>
        <div class="col-sm-2 col-xs-12 text-left if-div-input-sm"><a href="javascript:;"><fmt:message key='buyer.debtor.profile.page.panel.companyRegistrationNumber' /></a></div>
        <div class="col-sm-2 col-xs-12 ">
          <input type="text" class="form-control if-input-sm if-div-input-sm" readonly  id="txtCompanyRegistrationNo" value="${invoice.debtorBizRegNo}">
        </div>
        <!-- Row 2 -->
        <div class="col-sm-2 col-xs-12 text-left if-div-input-sm"><a href="javascript:;"><fmt:message key='buyer.debtor.profile.page.panel.taxCode' /></a></div>
        <div class="col-sm-2 col-xs-12 ">
          <input type="text" class="form-control if-input-sm if-div-input-sm" readonly  id="txtTaxCode" value="${invoice.debtorTaxCode}">
        </div>
        <div class="col-sm-2 col-xs-12 text-left if-div-input-sm"><a href="javascript:;"><fmt:message key='buyer.debtor.profile.page.panel.question1' />?</a></div>
        <div class="col-sm-2 col-xs-12 ">
          <input type="text" class="form-control if-input-sm if-div-input-sm" readonly  id="txtUploadInvTotal" value="80">
        </div>
        <div class="col-sm-2 col-xs-12 text-left if-div-input-sm"><a href="javascript:;"><fmt:message key='buyer.debtor.profile.page.panel.question2' />?</a></div>
        <div class="col-sm-2 col-xs-12 ">
          <input type="text" class="form-control if-input-sm if-div-input-sm" readonly  id="txtSoldInvTotal" value="60">
        </div>
        <div class="col-sm-2 col-xs-12 text-left if-div-input-sm"><a href="javascript:;"><fmt:message key='buyer.debtor.profile.page.panel.question3' />?</a></div>
        <div class="col-sm-2 col-xs-12 ">
          <input type="text" class="form-control if-input-sm if-div-input-sm" readonly  id="txtSettleInvTotal" value="40">
        </div>
        <!-- Row 4 -->
        <div class="col-sm-2 col-xs-12 text-left if-div-input-sm"><a href="javascript:;"><fmt:message key='buyer.debtor.profile.page.panel.question4' />?</a></div>
        <div class="col-sm-2 col-xs-12">
          <input type="text" class="form-control if-input-sm if-div-input-sm" readonly  id="txtOutstandingInvTotal" value="20">
        </div>
        <div class="col-sm-2 col-xs-12 text-left if-div-input-sm"><a href="javascript:;"><fmt:message key='buyer.debtor.profile.page.panel.Average' /></a></div>
        <div class="col-sm-2 col-xs-12">
          <input type="text" class="form-control if-input-sm if-div-input-sm" readonly  id="txtOverdueAvg" value="20">
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End general information -->
<h5 class="page-title">
  <b><fmt:message key='buyer.debtor.profile.page.center.title' /></b>
</h5>
<div class="row">
  <div class="col-md-12">
    <div class="tabbable tabbable-custom boxless tabbable-reversed">
      <ul class="nav nav-tabs if-profile-tab">
        <li class="active">
          <a href="#tab_0" data-toggle="tab">
            <fmt:message key='buyer.debtor.profile.page.table.title1' />
          </a>
        </li>
        <li>
          <a href="#tab_1" data-toggle="tab">
            <fmt:message key='buyer.debtor.profile.page.table.title2' />
          </a>
        </li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab_0">
        <div>
        <!-- table-scrollable -->
        <table class="table table-striped table-bordered table-hover" id="content_table_1">
        <thead>
        <tr>
          <th style="width:20px">
            <fmt:message key='invoice.list.thead.no' />
          </th>
          <th style="width:120px">
           <fmt:message key='seller.myinvoice.disbursement.page.panel.body.disbursementDate' />
          </th>
          <th style="width:80px">
            <fmt:message key='invoice.list.thead.stickerId' />
          </th>
          <th style="width:120px">
            <fmt:message key='invoice.list.thead.invoiceAmount' />
          </th>
          <th style="width:120px">
            <fmt:message key='buyer.debtor.profile.page.table.th.invoiceSellerId' />
          </th>
          <th style="width:80px" class="if-tooltip">
            <a data-toggle="tooltip white" data-original-title="Ready to sell advance" style="color:white"><fmt:message key='seller.market.list.page.table.th.rtsa' />&nbsp;<i class="icon-question"></i></a>
          </th>
          <th style="width:80px">
             <fmt:message key='buyer.debtor.profile.page.table.th.acceptedAvanced' />
          </th>
          <th style="width:80px" class="if-tooltip">
            <a data-toggle="tooltip white" data-original-title="Ready to sell interest" style="color:white"><fmt:message key='seller.market.list.page.panel.body.rtsi' />&nbsp;<i class="icon-question"></i></a>
          </th>
          <th style="width:80px">
             <fmt:message key='buyer.debtor.profile.page.table.th.acceptedInterest' />
          </th>
          <th style="width:100px">
            <fmt:message key='seller.myinvoice.dealed.page.table.th.expectedSettlement' />
          </th>
          <th style="width:80px">
           <fmt:message key='buyer.debtor.profile.page.table.th.numberOfOverdueDays' />
          </th>
        </tr>
        </thead>
        <tbody>
        	<c:if test="${not empty page.content}">
            <c:forEach var="item" items="${page.content}" varStatus="status">     
            <tr>
              <td>${status.index + 1}</td> 
              <td>${item.finInvIssDate}</td>
              <td>${item.finStickerId}</td>
              <td>${item.finInvAmount }</td>
              <td>${item.sellerId}</td>
              <td>${item.debtorName}</td>
              <td>${item.finDueDateAccToCont}</td>
              <td>${item.bestBuyerAdv }</td>
              <td>${item.readyToSellAdv}</td>
              <td>${item.readyToSellInt }</td>
              <td>${item.curBestOffrInt }</td>
            </tr>
            </c:forEach>
          </c:if>
           </tbody>
           <tfoot>
           <tr>
             <td colspan="11">
              <input type="hidden" name="pageNumber" value="${page.number}" />
              <input type="hidden" name="pageSize" value="${page.size}" />
                <%@ include file="/WEB-INF/views/themes/metronic/include/pagination.jsp"%>
             </td>
           </tr>
         </tfoot>
        </table>
        </div>
        </div>
        <div class="tab-pane" id="tab_1">
          <div>
            <!-- table-scrollable -->
            <table class="table table-striped table-bordered table-hover" id="content_table_2">
              <thead>
              <tr>
                <th style="width:20px">
                  <fmt:message key='invoice.list.thead.no' />
                </th>
                <th style="width:120px">
                 <fmt:message key='buyer.debtor.profile.page.table.th.settlementDate' />
                </th>
                <th style="width:80px">
                  <fmt:message key='invoice.list.thead.stickerId' />
                </th>
                <th style="width:120px">
                  <fmt:message key='invoice.list.thead.invoiceAmount' />
                </th>
                <th style="width:120px">
                  <fmt:message key='invoice.list.thead.invoiceSellerId' />
                </th>
                <th style="width:80px" class="if-tooltip">
                  <a data-toggle="tooltip white" data-original-title="Ready to sell advance" style="color:white"><fmt:message key='seller.market.list.page.table.th.rtsa' />&nbsp;<i class="icon-question"></i></a>
                </th>
                <th style="width:80px">
                  <fmt:message key='buyer.debtor.profile.page.table.th.acceptedAvanced' />
                </th>
                <th style="width:80px" class="if-tooltip">
                  <a data-toggle="tooltip white" data-original-title="Ready to sell interest" style="color:white"><fmt:message key='seller.market.list.page.table.th.rtsi' />&nbsp;<i class="icon-question"></i></a>
                </th>
                <th style="width:80px">
                  <fmt:message key='buyer.debtor.profile.page.table.th.acceptedInterest' />
                </th>
                <th style="width:100px">
                  <fmt:message key='seller.myinvoice.dealed.page.table.th.expectedSettlement' />
                </th>
                <th style="width:80px">
                  <fmt:message key='buyer.debtor.profile.page.table.th.numberOfOverdueDays' />
                </th>
              </tr>
              </thead>
              <tbody>
               <c:if test="${not empty page.content}">
               <c:forEach var="item" items="${page.content}" varStatus="status">     
               <tr>
                 <td>${status.index + 1}</td> 
                 <td>${item.finInvIssDate}</td>
                 <td>${item.finStickerId}</td>
                 <td>${item.finInvAmount }</td>
                 <td>${item.sellerId}</td>
                 <td>${item.debtorName}</td>
                 <td>${item.finDueDateAccToCont}</td>
                 <td>${item.bestBuyerAdv }</td>
                 <td>${item.readyToSellAdv}</td>
                 <td>${item.readyToSellInt }</td>
                 <td>${item.curBestOffrInt }</td>
               </tr>
               </c:forEach>
              </c:if>
              </tbody>
              <tfoot>
                <tr>
                  <td colspan="11">
                   <input type="hidden" name="pageNumber" value="${page.number}" />
                   <input type="hidden" name="pageSize" value="${page.size}" />
                     <%@ include file="/WEB-INF/views/themes/metronic/include/pagination.jsp"%>
                  </td>
                </tr>
              </tfoot>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END PAGE CONTENT-->
</div>
</div>
<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
  <div class="page-footer-inner text-center">
    <fmt:message key='buyer.apply.form.footer.copyright' />
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
<script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootbox/bootbox.min.js"></script>
<script src="${base}/static/themes/metronic/js/ui-alert-dialog-api.js"></script>
<!-- END PAGE LEVEL PLUGINS -->

<script src="${base}/static/libs/metronic/3.3.0/assets/global/scripts/metronic.js"></script>
<script src="${base}/static/libs/metronic/3.3.0/assets/admin/pages/scripts/components-pickers.js"></script>
<script src="${base}/static/themes/metronic/js/layout.js"></script>
<script src="${base}/static/themes/metronic/js/quick-sidebar.js"></script>
<script src="${base}/static/themes/metronic/js/ifactor.js"></script>
<script>
  jQuery(document).ready(function() {
    Metronic.init(); // init metronic core components
    Layout.init(); // init current layout
    ComponentsPickers.init();
    //tab 1
    $('#content_table_1').DataTable({
      searching: false,
      "order": [[1, "desc"]],
      //      "sDom": 'tip',
      "aoColumnDefs": [{ 'bSortable': false, 'aTargets': [0] }],
      "fnDrawCallback": function (oSettings) {
        if (oSettings.bSorted || oSettings.bFiltered) {
          for (var i = 0, iLen = oSettings.aiDisplay.length ; i < iLen ; i++) {
            $('td:eq(0)', oSettings.aoData[oSettings.aiDisplay[i]].nTr).html(i + 1);
          }
        }
      },
      pagingType: "bootstrapPager",
      pagerSettings: {
        textboxWidth: 60,
        firstIcon: "fa fa-angle-double-left",
        previousIcon: "fa fa-angle-left",
        nextIcon: "fa fa-angle-right",
        lastIcon: "fa  fa-angle-double-right",
        searchOnEnter: true
      }
    });
    //tab 2
    $('#content_table_2').DataTable({
      searching: false,
      "order": [[1, "desc"]],
      //      "sDom": 'tip',
      "aoColumnDefs": [{ 'bSortable': false, 'aTargets': [0] }],
      "fnDrawCallback": function (oSettings) {
        if (oSettings.bSorted || oSettings.bFiltered) {
          for (var i = 0, iLen = oSettings.aiDisplay.length ; i < iLen ; i++) {
            $('td:eq(0)', oSettings.aoData[oSettings.aiDisplay[i]].nTr).html(i + 1);
          }
        }
      },
      pagingType: "bootstrapPager",
      pagerSettings: {
        textboxWidth: 60,
        firstIcon: "fa fa-angle-double-left",
        previousIcon: "fa fa-angle-left",
        nextIcon: "fa fa-angle-right",
        lastIcon: "fa  fa-angle-double-right",
        searchOnEnter: true
      }
    });
  });
  
  var app = {
			base : '${base}',
			version : '${version.app}',
			loginName : '${loginUser.loginName}',
			selfUrl : '${self.url}',
			successSavedMsg : "<fmt:message key='buyer.apply.message.successSaved'/>",
			successUpdatedMsg : "<fmt:message key='buyer.apply.message.successUpdated'/>",
			successSubmittedMsg : "<fmt:message key='buyer.apply.message.successSubmitted'/>",
			successRedirectMsg : "<fmt:message key='buyer.apply.message.successRedirectMsg'/>"
		};
</script>

<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
