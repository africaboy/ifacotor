<%@ page contentType="text/html;charset=UTF-8" %>
<%--
# Seller
--%>
<%@ include file="/WEB-INF/views/include/global.jsp"%>
<c:set target="${self}" property="title">i-Factor</c:set>
<c:set target="${self.css}" property="main">
    <style type="text/css">
    </style>
</c:set>
<c:set target="${self.js}" property="main">
    <script type="text/javascript">
    $(function () {
      //$('.selectpicker').selectpicker();
      $('.dropmenu').dropdown('toggle');
    });
   </script>
</c:set>

<c:set target="${self.content}" property="main">
              <div id="form-title"><c:out value="${form_title}" /></div>
              <div id="form-main">
                <form class="form-inline" id="formQuery" role="form">
                  <div class="form-group" style="width:100%">
                  	<div style="width:150px;float:left;">
                      <label class="control-label">Status:</label>
                    </div>
                    <div style="width:650px;float:left;">
                      <c:forEach var="item" items="${states}" varStatus="status"> 
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" id="checkbox_${status}" value="${time}">
                          ${item}
                        </label>
                      </div>
                      </c:forEach>
                    </div>
                  </div> 
                
                  <div class="form-group" style="width:100%;">
                    <div style="width:150px;float:left;">
                      <label for="interest_rate_from" class="control-label" style="width:100px;">Interest rate:</label>
                    </div>
                    <div style="width:650px;float:left;">
                      <input type="text" class="form-inline" id="interest_rate_from" placeholder="0.00">
                      <label for="interest_rate_to">-</label>
                      <input type="text" class="form-inline" id="interest_rate_to" placeholder="100.00">
                      <button type="submit" class="btn btn-default btn-sm">Query</button>
                    </div>
                  </div>
                
                  <div class="clearfix row" style="margin-top:10px;">
                    <div class="col-sm-12">
                      <table class="table table-bordered">
                        <thead>
                          <tr>
                            <th></th>
                            <th>Seller name</th>
                            <th>Debtor name</th>
                            <th>Invoice amount</th>
                            <th>Advance(%)</th>
                            <th>Interest(% per 30 days)</th>
                            <th>Invoice state</th>
                            <th>Number of offers</th>
                            <th>Current best offered interest(% per 30 days)</th>
                            <td>Rating</td>
                          </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="item" items="${invoices}" varStatus="status">     
                          <tr>
                            <td>
                              <a href="/seller/my-invoices/detail/${item.id }" class="btn btn-primary" target="main-iframe">Detail</a>
                              <!-- <button type="button" class="btn btn-primary" id="invoice_detail_1">Detail</button>-->
                            </td>
                            <td>${item.sellerName }</td>
                            <td>${item.debtorName }</td>
                            <td>${item.invoiceAmt }</td>
                            <td>${item.desiredMinAdvance }</td>
                            <td>${item.desiredMaxInterest }</td>
                            <td>${item.invoiceState }</td>
                            <td>${item.noOfOffers }</td>
                            <td>${item.curBestOfferInterest }</td>
                            <td>${item.rating }</td>
                          </tr>
                        </c:forEach>
                        </tbody>
                      </table>
                    </div>
                  </form>
                </div>
              </div>
</c:set>
<c:set target="${self.content}" property="free">
</c:set>

<%@ include file="/WEB-INF/views/themes/default/include/main.jsp"%>