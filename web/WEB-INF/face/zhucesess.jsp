<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

    <!DOCTYPE html>
	<html lang="en-US">
	<head>
		<meta charset="UTF-8">
		<meta name="csrf-param" content="_csrf">
    <meta name="csrf-token" content="QzNSM19sY2tuSSh.OTQEBRljNFUYCTYeBX0FUGsUFx4kVn8Cb19OOA==">
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
		<title>手机注册成功</title>
        <meta name="keywords" content="51CTO技术家园">
<meta name="description" content="51CTO技术家园">
<link href="https://static3.51cto.com/home/web/css/reg_2015/register20160929.css?v=10005" rel="stylesheet">
<script src="https://static4.51cto.com/home/web/js/reg_2015/jquery-1.8.3.min.js?v=10001"></script>
<script src="https://static5.51cto.com/home/web/js/system/yii.js?v=10001"></script>
<script src="https://static4.51cto.com/home/web/js/51cto.js?v=10001"></script>
<script src="https://static5.51cto.com/home/web/js/jquery.message.js?v=10001"></script>
<script src="https://static1.51cto.com/home/web/js/reg_2015/ajaxreg.js?v=10002"></script>
<script src="https://static1.51cto.com/home/web/js/reg_2015/pub.js?v=10001"></script>
<script src="https://static4.51cto.com/home/web/js/reg_2015/analyse.js?v=10002"></script>
<script src="https://static1.51cto.com/home/web/js/reg_2015/register.js?v=10004"></script>
<script src="https://static5.51cto.com/home/web/js/yii/yii.captcha.js?v=10001"></script>	</head>
        <!--简导航开始-->
<body>
<!--头部文件-->
<div class="nav">
    <div class="nav_nr">
        <dl class="nav1">
            <dt><a  target="_blank"><img src='<%=basePath %>image/itlogo.png' alt=""></a></dt>
            <dd>账号通行证</dd>
        </dl>
        <dl class="nav2">
            <dt><a href="<%=basePath %>datainfo/login.jsp">登录</a></dt>
            <dd><a  target="_blank">常见问题</a></dd>
        </dl>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        var doc=document,inputs=doc.getElementsByTagName('input'),supportPlaceholder='placeholder'in doc.createElement('input'),placeholder=function(input){var text=input.getAttribute('placeholder'),defaultValue=input.defaultValue;
            if(defaultValue==''){
                input.value=text}
            input.onfocus=function(){
                if(input.value===text){this.value=''}};
            input.onblur=function(){if(input.value===''){this.value=text}}};
        if(!supportPlaceholder){
            for(var i=0,len=inputs.length;i<len;i++){var input=inputs[i],text=input.getAttribute('placeholder');
                if((input.type==='text')&&text){placeholder(input)}}}});
</script>
<!--头部文件结束-->    <div class="zczh">
    <h2>
        注册账号<a onclick="window.history.go(-1);" href="javascript:void(0)">返回上一步${requestScope.name}</a>
    </h2>
    <div class="form-group-sjwc z_sjwc">
        <h3><span class="nadd">注册完成，欢迎加入本学院！</span></h3>
        <h4> <a href="<%=basePath %>loginservlet?order=studentlogin1&name=${requestScope.name}&password=${requestScope.password}"><span id="mes">5</span>s 后跳到主页面</a></h4>
        <div class="z_dlW">
            <dl>
                <dt><img src="https://static5.51cto.com/home/web/images/reg_2015//z_zc_icon02.jpg" height="60" width="59" alt="" /></dt>
                <dd class="z_dd01">个人履历</dd>
                <dd class="z_dd02">开启一段高薪征程</dd>
            </dl>
            <dl>
                <dt><img src="https://static5.51cto.com/home/web/images/reg_2015//z_zc_icon03.jpg" height="60" width="59" alt="" /></dt>
                <dd class="z_dd01">电子社交名片</dd>
                <dd class="z_dd02">朋友圈交友必备</dd>
            </dl>
            <dl class="z_nm">
                <dt><img src="https://static5.51cto.com/home/web/images/reg_2015//z_zc_icon04.jpg" height="60" width="59" alt="" /></dt>
                <dd class="z_dd01">10颗下载豆</dd>
                <dd class="z_dd02">玩转下载中心</dd>
            </dl>
        </div>
    </div>
</div>
<script language="javascript" type="text/javascript">
    var num = 5;
    var intervalid;
    intervalid = setInterval("fun()", 1000);
    function fun() {
        if (num == 0) {
            var reback = "<%=basePath %>loginservlet?order=studentlogin1&name=${requestScope.name}&password=${requestScope.password}";            
            window.location.href = reback;
            clearInterval(intervalid);
        }
        document.getElementById("mes").innerHTML = num;
        num--;
    }
</script>    <script src="https://logs.51cto.com/rizhi/count/count.js"></script>

<div style="display:none">
   <script>
	var _hmt = _hmt || [];
	(function() {
	  var hm = document.createElement("script");
	  hm.src = "https://hm.baidu.com/hm.js?844390da7774b6a92b34d40f8e16f5ac";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
	})();
	</script>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-57622524-1', 'auto');
        ga('send', 'pageview');
    </script>
</div>
<div style="display:none">
<script src="https://logs.51cto.com/rizhi/count/count.js"></script>
<iframe frameborder="0" scrolling="no" width="0" height="0" src="http://log.51cto.com/pageview.php?frompos=www_art"></iframe>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?844390da7774b6a92b34d40f8e16f5ac";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
</div>
  <script type="text/javascript">
            var uid = '0';
            var _educto = _educto || [];
            _educto.push(['_setUserId',uid]);
        </script>
<script type="text/javascript">
            document.write(decodeURI("%3Cscript src='https://tongji.51cto.com/cto.js/3d7ca8d8c01f7e7b50250ff1c15bdae3' type='text/javascript'%3E%3C/script%3E"));
</script>

    <script src="https://static5.51cto.com/home/web/js/reg_2015/footer.js?v=10002"></script></body>
	</html>
