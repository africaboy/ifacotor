<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/global.jsp"%>
<!doctype html>
<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="">
<!--<![endif]-->
  <head>
    <meta charset="UTF-8">
    <title><fmt:message key="contact.page.title"/></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${base}/static/libs/bootstrap/${version.bootstrap}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${base}/static/libs/select2-3.5.1/select2.css?ver=${version.app}">
    <link rel="stylesheet" href="${base}/static/themes/default/css/login.css?ver=${version.app}">
    <link rel="stylesheet" href="${base}/static/themes/default/css/topnav.css?ver=${version.app}">
    <c:if test="${not empty self.css.main}">
    <!-- 页面css -->
    ${self.css.main}
    </c:if>
    <!--[if lt IE 9]>
    <script src="${base}/static/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="${base}/static/libs/respondjs/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body style="margin: 0; padding: 0;background:#515151">
    <div class="container" style="width:1200px;padding:0;margin-top:0;">
      <div class="logo-container" id="logo-container-div">
         <div class="logo1-container" id="logo1-container">
           <a style="text-decoration:none;" href="${base}/">
             <img src="${base}/static/themes/default/img/logo1.png" />
           </a>
         </div>
         <div class="logo2-container" id="logo2-container">
           <img src="${base}/static/themes/default/img/logo2.png" />
         </div>
         <div class="pull-right">
            <div style="margin: 20px;font-size:18px;"> 
              <span><fmt:message key="common.theme.title"/>: </span>
              <a href="#" id="defaultTheme" style="color:#11a2af"><fmt:message key="common.theme.default"/></a> | 
              <a href="#" id="blueTheme" style="color:#1150af"><fmt:message key="common.theme.blue"/></a>
            </div>
         </div>
      </div>
      
      <div class="navbar navbar-default" id="navbar">
        <div class="navbar-container" id="navbar-container">
          <div class="navbar-header pull-left">
            <a href="#" class="navbar-brand">
            </a>
          </div>
          <div class="navbar-header pull-right">
            <select id="lang-select" style="width: 120px" class="populate select2-offscreen" tabindex="-1" title="Templating">
              <optgroup label="">
                <option value="EN"<c:if test="${self.locale=='en_US'}"> selected</c:if>><fmt:message key="common.lang.en"/></option>
                <option value="VN"<c:if test="${self.locale=='vi_VN'}"> selected</c:if>><fmt:message key="common.lang.vi"/></option>
              </optgroup>
            </select>
          </div>
          <div class="navbar-header pull-right">
             <div style="width:66px">&nbsp;</div>
          </div>
          
          <div class="navbar-header pull-right" role="navigation">
            <ul class="nav ifactor-nav">
              <li>
                <a href="${base}/home/help">
                  <i class="icon-homehelp"></i>
                  <span class=""><fmt:message key="common.topnav.help"/></span>
                </a>
              </li>
              
              <li class="open">
                <a href="${base}/home/contact-us">
                  <i class="icon-homecontactus"></i>
                  <span class=""><fmt:message key="common.topnav.contactus"/></span>
                </a>
              </li>
              
              <li>
                <a href="${base}/login">
                  <i class="icon-logout"></i>
                  <span class=""><fmt:message key="common.topnav.login"/></span>
                </a>
              </li>
            </ul>
          </div>       
          
        </div>
      </div>
      <div class="home-container" id="home-container">
        <div style="margin:20px;">
          <div class="contact_box">
            <h1 class="title">Contact us </h1>
            <hr />
            <h3>
              <p>Please let us know if you have a question, want to leave a comment, or would like further information about EntroFine.</p>
              <p><a href="http://www.entrofine.com/office.aspx"><span style="color:#e53333;"><em><span style="color:#e53333;"><u>Click to see our more Office Locations &gt;&gt;</u></span></em></span> </a></p> 
            </h3>
            <p></p>
            <p><strong><span style="font-size:14px;color:#337fe5;">Main Office </span></strong></p>
            <p>Unit 1313, 13/F., Peninsula Tower</p>
            <p>538 Castle Peak Road, Kowloon</p>
            <p>Hong Kong SAR</p>
            <p>Tel : (852) 2743 0000</p>
            <p>Fax : (852) 2743 0133</p>
            <p>E-mail : <a href="mailto:info@entrofine.com">info@entrofine.com</a> </p>
            <p></p>
            <div class="map">
              <iframe height="289" marginheight="0" src="http://maps.google.com.hk/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Unit+1313,+13%2FF.,+Peninsular+Tower,+538+Castle+Peak+Road,+Kowloon,+Hong+Kong+SAR&amp;aq=&amp;sll=22.55516,114.053879&amp;sspn=0.821816,1.039581&amp;brcurrent=3,0x3404074a71e4c50b:0xde1076af748ca282,0,0x3403f8acef094f63:0xd156956469ba659c&amp;ie=UTF8&amp;hq=&amp;hnear=Peninsula+Tower,+538+Castle+Peak+Rd&amp;t=m&amp;z=14&amp;ll=22.339603,114.150717&amp;output=embed" frameborder="0" width="554" marginwidth="0" scrolling="no"></iframe>
              <br>
              <small><a style="color:#0000ff;text-align:left;" href="http://maps.google.com.hk/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Unit+1313,+13%2FF.,+Peninsular+Tower,+538+Castle+Peak+Road,+Kowloon,+Hong+Kong+SAR&amp;aq=&amp;sll=22.55516,114.053879&amp;sspn=0.821816,1.039581&amp;brcurrent=3,0x3404074a71e4c50b:0xde1076af748ca282,0,0x3403f8acef094f63:0xd156956469ba659c&amp;ie=UTF8&amp;hq=&amp;hnear=Peninsula+Tower,+538+Castle+Peak+Rd&amp;t=m&amp;z=14&amp;ll=22.339603,114.150717">View Larger Map</a></small> 
            </div>
          </div>
        </div> 
      </div>

      <div class="footer-container" style="height:106px;color:#fff;text-align:center;font-size:16px;padding-top:14px;background:#414141;">
        <div id="copyright">
          <fmt:message key="common.copyright"/>
        </div>
      </div>
    </div>
    <c:if test="${not empty self.content.free}">
    <!--模版/对话框-->
    ${self.content.free}
    </c:if>
    <script type="text/javascript" src="${base}/static/libs/jquery/${version.jquery}/jquery.min.js"></script>
    <script type="text/javascript" src="${base}/static/libs/carhartl-jquery-v1.4.1/jquery.cookie.js"></script>
    <script type="text/javascript" src="${base}/static/libs/bootstrap/${version.bootstrap}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${base}/static/libs/select2-3.5.1/select2.min.js"></script>
    <script type="text/javascript">
    var app = {
      base: '${base}', 
      version: '${version.app}', 
      loginName: '${loginUser.loginName}',
      selfUrl:'${self.url}'
    };
    </script>
      
    <script type="text/javascript" src="${base}/static/themes/default/js/common.multilang.js"></script>
    <script type="text/javascript" src="${base}/static/themes/default/js/app.js?ver=${version.app}"></script> 
    <c:if test="${not empty self.js.main}">
    <!--页面js-->
    ${self.js.main}
    </c:if>
    
  </body>
</html>