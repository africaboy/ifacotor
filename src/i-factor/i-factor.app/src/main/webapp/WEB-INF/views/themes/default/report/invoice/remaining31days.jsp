<%@ page contentType="text/html;charset=UTF-8" %>
<%--
# Seller
--%>
<%@ include file="/WEB-INF/views/include/global.jsp"%>
<c:set target="${self}" property="title"><fmt:message key='report.aggregateInvoiceReportByRemaining31Days'/></c:set>
<c:set target="${self.css}" property="main">
    <style type="text/css">
    .table-bordered,
    .table-bordered>thead>tr>th, 
    .table-bordered>tbody>tr>th, 
    .table-bordered>tfoot>tr>th, 
    .table-bordered>thead>tr>td, 
    .table-bordered>tbody>tr>td, 
    .table-bordered>tfoot>tr>td {
      border: 1px solid #000;
    }
    </style>
</c:set>
<c:set target="${self.js}" property="main">
    <script type="text/javascript">
    </script>
</c:set>

<c:set target="${self.content}" property="main">
              <div id="form-title"><c:out value="${form_title}" /></div>
              <div id="form-main">
                
                  <div class="clearfix row" style="margin-top:10px;">
                    <div class="col-sm-12">
                      <table class="table table-bordered">
                        <thead>
                          <tr style="background:#bdd6ee;">
                            <th rowspan="2"><fmt:message key='report.invoice.thead.no'/></th>
                            <th rowspan="2"><fmt:message key='report.invoice.thead.invoiceId'/></th>
                            <th rowspan="2"><fmt:message key='report.invoice.thead.sellerId'/></th>
                            <th rowspan="2"><fmt:message key='report.invoice.thead.debtorId'/></th>
                            <th rowspan="2"><fmt:message key='report.invoice.thead.acknowledgement'/></th>
                            <th colspan="2"><fmt:message key='report.invoice.thead.readyToSell'/></th>
                            <th colspan="2"><fmt:message key='report.invoice.thead.existingBids'/></th>
                          </tr>
                          <tr style="background:#bdd6ee;">
                            <th><fmt:message key='report.invoice.thead.financing'/></th>
                            <th><fmt:message key='report.invoice.thead.rest'/></th>
                            <th><fmt:message key='report.invoice.thead.financing'/></th>
                            <th><fmt:message key='report.invoice.thead.rest'/></th>
                          </tr>
                        </thead>
                        <tbody>
                        <%-- <c:if test="${not empty page.content}">
                          <c:forEach var="item" items="${page.content}" varStatus="status">    
                          <tr>
                            <td>${item.sellerCompanyName }</td>
                            <td>${item.debtorName }</td>
                            <td>${item.finInvAmount }</td>
                            <td>${item.noOfOffers }</td>
                            <td>${item.curBestOffrInt }</td>
                            <td>${item.bestBuyerAdv }</td>
                            <td>${item.bestBuyerInt }</td>
                            <td>${item.rating}</td>
                            <td>${item.flowStatus }</td>
                            <td>${item.bestBuyerInt }</td>
                            <td>${item.rating}</td>
                            <td>${item.flowStatus }</td>
                          </tr>
                          </c:forEach>
                        </c:if> --%>
                        <tr>
                          <td>1</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                        </tr>
                       
                        </tbody>
                        <tfoot>
                        </tfoot>
                      </table>
                    </div>
                </div>
              </div>
</c:set>
<c:set target="${self.content}" property="free">
</c:set>

<%@ include file="/WEB-INF/views/themes/default/include/main.jsp"%>
