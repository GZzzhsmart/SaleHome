<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
  <title>SaleHome注册</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="Cache-Control" content="no-transform">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
  <link href="http://passport.lianjia.com/register/resources/lianjia/images/favicons.ico" type="image/x-icon" rel="icon">
  <link href="http://passport.lianjia.com/register/resources/lianjia/images/favicons.ico" type="image/x-icon" rel="shortcut icon">
  <link rel="stylesheet" href="http://passport.lianjia.com/register/resources/lianjia/css/common.css?_v=201701171519">
  <link rel="stylesheet" href="http://passport.lianjia.com/register/resources/lianjia/css/login.css?_v=201701171519">
  <!--[if lt IE 9]><script type="text/javascript" src="js/html5.js?_v=20150514201547"></script><![endif]-->
	<script type="text/javascript">
	function refresh(){
		alert("外部文件");
		document.getElementById("codes").src= '${pageContext.request.contextPath }/enimg.jsp?'+Math.random();
	}
	</script>
</head>
<body>
  <div class="user-login">
    <div class="headerBox">
    	<input type="hidden" value="${pageContext.request.contextPath }" id="p" />
      <img src="<%=path%>/homeimage/logo.png" class="headerLogo">
      <a href="<%=path %>WEB-INF/face/main.jsp" class="gotoIndex">返回桃源盛景首页</a>
    </div>
    <div class="wrapper">
      <h1>创建账户</h1>
      <div class="guideBox">
        <a href="https://passport.lianjia.com/cas/loginmas" id="loginUrl">已有账号，去登录</a>
      </div>
      <div class="reset-pwd registerred">
        <form action="/register/ljRegister/register" method="post" id="registerForm">
          <input type="hidden" name="redirect" id="r" value="">
          <ul>
            <li class="">
              <input type="text" name="mobile" placeholder="请输入手机" validate="notNull,isTel" validatename="手机号" class="phonecode basisyle inputText topSpecial">
              <button class="send actRegisterSMS">发送验证码</button>
            </li>
            <li>
              <input type="text" placeholder="请输短信验证码" name="verifyCode" class="actCheckVerify basisyle inputText" validatename="短信验证码"  maxlength="6" validate="notNull">
            </li>
            <li>
              <input type="text" name="nickName" placeholder="昵称" class="basisyle inputText">
            </li>
            <li>
              <input type="password" name="password" id="password" placeholder="请输入密码（最少8位，需含数字、字母）" validate="notNull,passwordRule" validatename="密码" class="basisyle inputText" maxlength="20">
            </li>
            <li>
              <input type="password" placeholder="请确认新密码" validate="notNull,isSame" validatedata="isSame=#password" validatename="两次密码" class="basisyle inputText botSpecial" maxlength="20">
            </li>
            <li class="mt10">
              <label>
                <input type="checkbox" class="check-agreed alwayCheck" validate="isChecked" validatename="协议" checked="checked">
                <span>我已阅读并同意</span>
                <a href="http://www.lianjia.com/zhuanti/protocol" target="_blank">《链家用户使用协议》</a>
              </label>
            </li>
            <li>
              <input type="submit" value="立即注册" class="up-pwd actSubmit btnStyle basisyle">
            </li>
          </ul>
        </form>
      </div>
    </div>
  </div>
  <div class="lianjia-footer-reg">桃源盛景 / 网络经营许可证 赣ICP备11024601号-12<br>北京链家房地产经纪有限公司保留全部权利&nbsp;</div>
  <script src="http://passport.lianjia.com/register/resources/lianjia/js/fe.js?_v=201701171519"></script>
  <script src="http://passport.lianjia.com/register/resources/lianjia/js/common.js?_v=201701171519"></script>
  <div id="only" data-city="login" data-page="login_register"></div>
  <script>
    var path = 'http://cdn.lianjia.com/pc/asset?_v=201701171519'.split("?");
    require.config({
      baseUrl : path[0],
      paths : {
        'echarts' : '../../dep/echarts-1.4.1/build/echarts',
        'echarts/chart/bar' : '../../dep/echarts-1.4.1/build/echarts',
        'echarts/chart/line' : '../../dep/echarts-1.4.1/build/echarts',
        'echarts/chart/pie' : '../../dep/echarts-1.4.1/build/echarts',
        'common' : 'common',
        'jquery-ui' : '../../dep/jquery-ui/jquery-ui.min'
      },
      urlArgs : path[1]
    });
  </script>
  <script src="<%=path %>/homejs/register.js?_v=201701202222"></script>
  <script type="text/javascript">
    $(function(){
      var host   = location.host;
      var query  = $.parseURL(location.href).query;
      if(host == "172.16.3.147:5300"){
        $("#loginUrl").attr("href","http://passport.off.lianjia.com/cas/login?"+query);
      }else{
        var loginHref = $("#loginUrl").attr("href")+"?"+query;
        $("#loginUrl").attr("href",loginHref);
      }
      var json   = $.queryToJson(query);
      var telVal = localStorage.getItem('noExistTel');
      if(json.service){
        $("#r").val(decodeURIComponent(json.service))
      }
      $(".phonecode").val(telVal);
      localStorage.setItem('noExistTel','');
    });

    require([ "user/register" ], function(register) {
      register($("#registerForm"));
    });

    //埋点
    window.__UDL_CONFIG={"pid":"lianjiaweb"};
    var ulogScript=document.createElement("script");
    var hrefVal   = location.href;
    if(hrefVal.indexOf("https") != -1){
      ulogScript.src="https://s1.ljcdn.com/dig-log/static/lianjiaUlog.js" + "?t=" + ((new Date()).getTime());
    }else{
      ulogScript.src="http://s1.ljcdn.com/dig-log/static/lianjiaUlog.js" + "?t=" + ((new Date()).getTime());
    }
    document.getElementsByTagName("head")[0].appendChild(ulogScript);
  </script>
</body>
</html>