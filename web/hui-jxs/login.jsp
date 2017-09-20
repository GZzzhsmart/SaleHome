<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.net.URLDecoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en-US">
	<head>
		<meta http-equiv="Cache-Control" content="no-transform" /> 
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=yes" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="apple-mobile-web-app-status-bar-style" content="black" />
		<meta name="format-detection" content="telephone=no, email=no" />
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="HandheldFriendly" content="true">
		<meta name="MobileOptimized" content="320">
		<meta name="screen-orientation" content="portrait">
		<meta name="x5-orientation" content="portrait">
		<meta name="full-screen" content="yes">
		<meta name="x5-fullscreen" content="true">
		<meta name="browsermode" content="application">
		<meta name="x5-page-mode" content="app">
		<meta name="msapplication-tap-highlight" content="no">
		<meta name="csrf-param" content="_csrf">
		<meta name="csrf-token"
			content="WllWV19Cb2wCaG4.bSBeIw4dIWUVb1w7FDs/PycnASguaA4.HCQVHQ==">
		<title>IT课堂</title>
		<style type="text/css"> 
		/* 默认隐藏手机版头部、导航和页脚 */
		#divHead_mobile{display:none}
		#divNav_mobile{display:none}
		#divBottom_mobile{display:none}
		@media(max-width:960px)
		{
		     /* 网页全屏显示 */
		    body {width:100%;} 
		
		    /* 正文全屏显示 */
		    #divMain{width:100%} 
		
		    /* 为了避免正文图片超出屏幕宽度 */
		    /* 正文图片宽度最多是屏幕宽度的90% */
		    #divMain img{max-width:90%} 
		
		    /* 隐藏头部、导航、侧栏、页脚 */
		    #divHead{display:none}
		    #divNav{display:none}
		    #divSide{display:none}
		    #divBottom{display:none}
		
		    /* 显示手机版头部、导航和页脚 */
		    #divHead_mobile{display:block}
		    #divNav_mobile{display:block}
		    #divBottom_mobile{display:block}
		}
		</style>
		<link rel="stylesheet" href="<%=basePath%>/css/login.css">
		<script src="<%=basePath%>js/jquery.min.js"></script>
		<link rel="shortcut icon" href="<%=basePath%>images/lo.png"
			type="image/x-icon">
		<link
			href="https://static4.51cto.com/home/web/css/z_sign.min.css?v=100008" rel="stylesheet">
		<script src="<%=basePath%>/js/jquery.min.js?v=10001"></script>
		<script src="<%=basePath%>/js/51cto.js?v=10001"></script>
		<script src="<%=basePath%>/js/msg.js?v=10001"></script>
		<script src="<%=basePath%>/js/jquery.message.js?v=10001"></script>
		<script src="<%=basePath%>/js/yii.js?v=10001"></script>
		<script src="<%=basePath%>/js/yii.activeForm.js?v=10001"></script>
		<script src="<%=basePath%>/js/yii.validation.js?v=10001"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/js/jquery-1.4.1.min.js"></script>
		<script type="text/javascript">
	$(function(){
		$("#nologin").bind("click",function(){
			$.post(
				"${pageContext.request.contextPath}/loginservlet",
				{
					"order":"nologin"
				},
				function(data){
					alert(data);
					$("#errorinfo").html("<font>"+data+"</font>");
				},
				"text"
			);
		
		});
	
	});

</script>
		<!-- 
		<script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101407510" data-redirecturi="http://192.168.43.14:8080/IT/apiservlet" charset="utf-8"></script>
	<script type="text/javascript">
	    QC.Login({
	       btnId:"qqLoginBtn"    //插入按钮的节点id
	});
	</script>
	<script type="text/javascript" src="http://192.168.43.14:8080/IT/apiservlet" charset="utf-8" data-callback="true"></script>
	

 -->
	</head>
	<body>
		<%
			if (session.getAttribute("user") != null) {
				response
						.sendRedirect(basePath + "courselistservlet?order=list");
			} else {
				//读取cookie变量的值
				Cookie cookies[] = request.getCookies();
				String mobile = "";
				String pass = "";
				//如果没有cookie则，数组为空
				if (cookies != null) {
					for (int i = 0; i < cookies.length; i++) {
						Cookie c = cookies[i];
						System.out.println(c.getName() + "=" + c.getValue());
						if (c.getName().equals("studentmobile")) {
							//解码操作URLDecoder.decode();
							mobile = URLDecoder.decode(c.getValue());//获取cookie的值
						}
						if (c.getName().equals("studentpassword")) {
							pass = URLDecoder.decode(c.getValue());//获取cookie的值
						}
					}
				}
		%>
		<c:if test="${msg==null}">
			<%
				if (!mobile.equals("") && !pass.equals("")) {
			%>
			<jsp:forward page="/loginservlet?order=studentlogin1">
				<jsp:param name="name" value="<%=mobile%>" />
				<jsp:param name="password" value="<%=pass%>" />
			</jsp:forward>
			<%
				}
			%>
		</c:if>
		<%
			}
		%>
		<div class="sign">
			<div class="loginWrap">
				<a><img src="<%=basePath%>image/itlogo.png" border="0" /> </a>
				<br />
				<div class="loginPic zxflogoPic clearfix">
					<div class="loginImg">
						<a href="<%=basePath%>datainfo/shouye.jsp" target="_blank"><img
								src="<%=basePath%>images/loginbg.png" border="0" /> </a>
					</div>
					<br />
					<br />
					<br />
					<div class="loginBord" id="login-base">
						<div class="loginTit">
							<div class="tosignup">
								<a target="_blank" id="nologin"
									style="margin-right: 10px; color: #969696;">无法登录?</a>|
								<a href="<%=basePath%>datainfo/zhuce.jsp"
									style="margin-left: 10px; color: #d54e4e;">注册</a>
							</div>
							<h1 style="color: #333;">
								登录窗口
							</h1>
						</div>
						<form id="login-form"
							action="<%=basePath%>loginservlet?order=studentlogin"
							method="post" role="form">
							<c:if test="${msg!=null}">
								<script type="text/javascript">
   									alert("${msg}");
   								</script>
							</c:if>
							<input type="hidden" name="_csrf"
								value="WllWV19Cb2wCaG4.bSBeIw4dIWUVb1w7FDs/PycnASguaA4.HCQVHQ==">
							<div class="inpBox textbox_ui user">
								<div class="form-group field-loginform-username required">
									<label class="control-label" for="loginform-username"></label>
									<input type="text" id="loginform-username" class="form-control"
										name="name" placeholder="用户名/邮箱/手机">

									<div class="custom invalid error_9o8Kl" style="display: none"></div>
								</div>
							</div>
							<div class="inpBox textbox_ui pass zxfpass">
								<div class="form-group field-loginform-password required">
									<label class="control-label" for="loginform-password"></label>
									<input type="password" id="loginform-password"
										class="form-control" name="password" placeholder="密码">
									<div class="custom invalid error_9o8Kl" id="errorinfo"
										style="display: none"></div>
								</div>
							</div>
							<div class="clearfix zxfDl">
								<a class="fr" href="<%=basePath%>datainfo/duanxin.jsp">忘记密码?</a>
								<label for="agree_userterm" class="fr">
									<div class="form-group field-loginform-rememberme">
										<div class="checkbox">
											<label for="loginform-rememberme">
												<input type="hidden" name="LoginForm[rememberMe]" value="0">
												<input type="checkbox" id="loginform-rememberme"
													name="login" value="1">
												10天内自动登录
											</label>
											<div class="custom invalid error_9o8Kl" style="display: none"></div>

										</div>
									</div>
								</label>
								<input type="submit" class="loginbtn fl" name="login-button"
									value="登 录">
							</div>
							<div id="errorMsg"></div>
						</form>
						<div class="zxfWechat">
							<a href="javascript:;" onclick="wechat_login()">微信手机访问</a>
						</div>
						<div class="otherAccout zxfAccout">
							<p>
								你也可以使用以下账号登录
							</p>
							<div class="z_box">
								<div class="z_a">
									<div class="z_a_m clearfix">
										<a class="a_QQ"><i class="iQQ"></i>QQ</a>
										<a href="/third-party/auth?type=sina"><i class="iweibo"></i>微博</a>
										<a href="/third-party/auth?type=douban"><i class="douban"></i>豆瓣</a>
										<a href="/third-party/auth?type=renren"><i class="irenren"></i>人人</a>
										<a href="/third-party/auth?type=github" style="width: 64px;"><i
											class="igitup"></i>github</a>
									</div>
								</div>
							</div>
						</div>
						<div class="shadow_l"></div>
						<div class="shadow_r"></div>
					</div>
					<div class="loginBord" id="login-wechat" style="display: none">
						<div class="loginTit">
							<div class="tosignup">
								<a href="javascript:void(0);" onclick="base_login()"
									class="back_account">返回账号登陆</a>
							</div>
							<h1>
								登录IT课堂
							</h1>
						</div>
						<!--20160530检测到微信开始-->
						<div class="code_wxbox">
							<div class="wx_img">
								<img src="<%=basePath%>images/it.bmp" width="185" height="185">
							</div>
							<div class="wx_0s">
								<div class="ts">
									请使用微信扫描上方二维码
								</div>
								<div class="usehelp">
									<a href="javascript:void(0)">使用帮助</a>
								</div>
							</div>
							<div class="wx_10s" style="display: none">
								<span class="wx_loseicon"></span><span class="wx_losetxt">二维码失效<br />请点击<a
									href="javascript:void(0);" onclick="getQrImg()">刷新二维码</a> </span>
							</div>
							<div class="hidetips">

							</div>
						</div>
						<script type="text/javascript">
                $(function(){
                    $('.zxfAccout p').click(function() {
                        $('.z_box').toggle();
                        $('.zxfAccout p').toggleClass('pUp');
                    });
                    function btnbg(zxf_a){
                        $(zxf_a).focus(function() {
                            $('.zxfDl .loginbtn').addClass('zxfBtnbg');
                        });
                        $(zxf_a).blur(function() {
                            if($('.pass input').val() == '' &&  $('.user input').val() == ''){
                                $('.zxfDl .loginbtn').removeClass('zxfBtnbg');
                            }
                        });
                    }
                    btnbg('.pass input');
                    btnbg('.user input');
                    $(".usehelp a").hover(function(){
                        $(".hidetips").show()
                    },function(){
                        $(".hidetips").hide()
                    });

                });
            </script>
						<!--20160530检测到微信结束-->
						<div class="shadow_l"></div>
						<div class="shadow_r"></div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
     var timmer_pull = null ;
     var sid = '' ;

     function getQrImg(){
         $('#qr-img').attr('src', '<%=basePath%>images/two.png');
         $.getJSON('/wechat/get-qr-code', function(data){
             if (data.code == 200){
                 stopPull();

                 $('.wx_10s').hide();
                 $('.wx_0s').show();

                 sid = data.data.sid ;
                 $('#qr-img').attr('src', data.data.img);

                 timmer_pull = setInterval("pull()", 1000) ;
             }else{
             }

         });
     }



     function stopPull(){
         if (timmer_pull != null){
             clearTimeout(timmer_pull);
             timmer_pull = null;
         }
     }
     function pull(){
		 var timestamp = Date.parse(new Date());		 
         $.getJSON('/wechat/scan-pull?sid='+sid+'&time='+timestamp, function(data){

             if (data.code == 200){
                 if (data.data.isok == 1){
                     window.location.href = "/third-party/reg-login?from=http%3A%2F%2Fedu.51cto.com%2Fcenter%2Fuser%2Findex%2Flogin-success%3Fsign%3D467d8R-DxxMVUB0AyDQFs4BBMlhxDWpF6n9NpLxEauDlNOJNglwUK2y21t1AagAL2WFihCID7R2-OVIIObiDi9PNqZEMojYUMgGuiWJkCqMn7KfdJ6SsStiQ-gJaOl0iQF0i%26client%3Dweb";
                 }
             }else{

                 $('.wx_10s').show();
                 $('.wx_0s').hide();
                 stopPull();
             }

         });

     }

     function wechat_login(){
         $('#login-wechat').show();
         $('#login-base').hide();
         getQrImg();
     }

     function base_login(){
         $('#login-wechat').hide();
         $('#login-base').show();
         stopPull();
     }
     $(function(){
         $(".jsCloseBg").click(function(){
             $("#jsValidateUser").hide();
             $(".jsShaow").hide();
         });
     });
          
 </script>

		<div id="jianpan">
			<div class="title" style="text-align: center;">
				<span id="jptitle"></span><span class="jianpan_hide"
					onClick="xfjianpan(false)">×</span>
			</div>
			<table id="xfjp" class="jianpan" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						1
					</td>
					<td>
						2
					</td>
					<td>
						3
					</td>
					<td>
						4
					</td>
					<td>
						5
					</td>
					<td>
						6
					</td>
					<td>
						7
					</td>
					<td>
						8
					</td>
					<td>
						9
					</td>
					<td>
						0
					</td>
				</tr>
				<tr>
					<td>
						q
					</td>
					<td>
						w
					</td>
					<td>
						e
					</td>
					<td>
						r
					</td>
					<td>
						t
					</td>
					<td>
						y
					</td>
					<td>
						u
					</td>
					<td>
						i
					</td>
					<td>
						o
					</td>
					<td>
						p
					</td>
				</tr>
				<tr>
					<td>
						a
					</td>
					<td>
						s
					</td>
					<td>
						d
					</td>
					<td>
						f
					</td>
					<td>
						g
					</td>
					<td>
						h
					</td>
					<td>
						j
					</td>
					<td>
						k
					</td>
					<td>
						l
					</td>
					<td>
						空格
					</td>
				</tr>
				<tr>
					<td id="shift">
						shift
					</td>
					<td>
						z
					</td>
					<td>
						x
					</td>
					<td>
						c
					</td>
					<td>
						v
					</td>
					<td>
						b
					</td>
					<td>
						n
					</td>
					<td>
						m
					</td>
					<td colspan="2">
						清空
					</td>
				</tr>
			</table>
		</div>


		<script>
//键盘部分JS
$("#jianpan .title").css("line-height",$("#jianpan").height()/5+"px");
function xfjianpan(id) {
    //xfjianpan(id),当id为input的id，如果id==false时，键盘隐藏

    var jpnub = $("#xfjp td").length;

    move("jianpan");        //开启键盘可移动

    $("#xfjp td").unbind("click");

    if (id != false) {          
        $("#jianpan").show();
        var xfjp_text = $("#"+id).val();                        //获取input框当前的val值


        $(".input_on").removeClass("input_on");
        $("#"+id).addClass("input_on");                         //设置input框选中时的样式

        $("#jptitle").html($("#"+id).attr("placeholder"));      //键盘标题，自动获取input的placeholder值

        $("#xfjp td").click(function () {
            var click = $(this).html();                         //获取点击按键的内容

            //特殊按键在这添加事件
            //判断点击的按键是否有特殊事件，如果没有则按键内容加在input文本后面
            if (click == "清空") {
                xfjp_text = "";
                $("#"+id).val(xfjp_text);
            }else if(click == "shift"){
                for(i=0;i<jpnub;i++){
                        $("#xfjp td:eq("+i+")").html($("#xfjp td:eq("+i+")").html().toUpperCase());
                    }
            }else if(click == "SHIFT"){
                for(i=0;i<jpnub;i++){
                        $("#xfjp td:eq("+i+")").html($("#xfjp td:eq("+i+")").html().toLowerCase());
                    }
            }else if(click == "空格"){
                xfjp_text = xfjp_text + " ";
                $("#"+id).val(xfjp_text);
            }else {
                xfjp_text = xfjp_text + click;
                $("#"+id).val(xfjp_text);
            }

            $("#"+id).focus();
        })
    }else{
        $(".input_on").removeClass("input_on");                    //移除选中input的选中样式
        $("#jianpan").hide();
    }
}




//鼠标按住拖动部分JS
function unmove(obj){
    $("#" + obj + " .title").unbind("mousedown");
}
function move(obj){
    var OffsetX = 0;
    var OffsetY = 0;
    var moveKg = false;
    var csZ = 0;
    function d(id) {
        return document.getElementById(id);
    }
    $("#"+obj+" .title").bind("mousedown", function () {
        OffsetX = event.pageX - d(obj).offsetLeft;
        OffsetY = event.pageY - d(obj).offsetTop;
        csZ = $("#"+obj).css("z-index");
        $("#"+obj).css("z-index","9999");
        moveKg = true;
        jpyd();
    })
    function jpyd() {
        $(document).bind("mousemove", function () {
            var e = e || window.event;
            var mouswX = e.pageX;
            var mouswY = e.pageY;
            var moveX = mouswX - OffsetX;
            var moveY = mouswY - OffsetY;
            var maxX = $(window).width() - d(obj).offsetWidth;
            var maxY = $(window).height() - d(obj).offsetHeight;
            moveX=Math.min(maxX,Math.max(0,moveX));
            moveY=Math.min(maxY,Math.max(0,moveY));
            $("#"+obj).css({"left":moveX,"top":moveY});
        })
        $(document).bind("mouseup", function () {
            moveKg = false;
            $("#"+obj).css("z-index",csZ);
            $(document).unbind("mousemove mouseup");
        })
    }
}
</script>

		<!--意见反馈-->
		<div class="feedback" style="display: none">
			<div class="popyjdatil">
				<dl class="dl_400 pl20 mb10 clearfix">
					<dt class="left mt5 tr">
						意见或建议：
					</dt>
					<dd class="left validation_or">
						<span><textarea name="feedarea" cols="" rows=""
								class="pop_area_320 inputtext_del t12"
								placeholder="请详细描述意见、问题或建议，2-300字以内"></textarea><span
							class="cl_red" id="cl_redp"></span> </span>
					</dd>

				</dl>
				<dl class="dl_400 pl20 mb10 clearfix">
					<dt class="left mt5 tr">
						联系方式：
					</dt>
					<dd class="left validation_or">
						<span><input type="text" value="" placeholder="邮箱/QQ号"
								class="pop_input_320 inputtext_del t12" name="feedord"><span
							class="cl_red" id="c1_redb"></span> </span>
					</dd>

				</dl>
			</div>
		</div>
		<div class="feedbackstatus" style="display: none">
			<div class="popsuctext">
				您已提交成功！
				<br />
				感谢您的宝贵意见，我们会尽快处理
			</div>
			<div class="regemailloeslist" style="display: none">
				<div class="tl t14 mb15 pl20 emailstatus"></div>
			</div>
		</div>
		<div class="foot">
			<a href="<%=basePath%>courselistservlet?order=guanyu" target="_blank">关于我们</a>
			<span>|</span>
			<a href="<%=basePath%>courselistservlet?order=help" target="_blank">帮助中心</a>
			<span>|</span>
			<a href="<%=basePath%>courselistservlet?order=fankui1"
				target="_blank">意见反馈</a>
			<span>|</span>
			<a href="<%=basePath%>courselistservlet?order=lianxi" target="_blank"
				title="联系我们">联系我们</a>
			<span>|</span>
			<a href="<%=basePath%>courselistservlet?order=dengji" target="_blank">课程登记</a>
			<span>|</span>
			<a href="<%=basePath%>courselistservlet?order=gushi" target="_blank">学员故事</a>
			<span>|</span>
			<a href="<%=basePath%>courselistservlet?order=jiaoliu"
				target="_blank" title="学员交流">学员交流</a>
			<br>
			Copyright &copy; 2017-2027
			<a href="<%=basePath%>courselistservlet?order=list">IT课堂.COM</a> 版权所有
		</div>

		<script
			src="https://static4.51cto.com/home/web/js/loginForm.js?v=10007"></script>

		<div style="display: none">
			<script src="https://logs.51cto.com/rizhi/count/count.js"></script>
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
		<script type="text/javascript">jQuery(document).ready(function () {
jQuery('#login-form').yiiActiveForm([{"id":"loginform-username","name":"username","container":".field-loginform-username","input":"#loginform-username","error":".custom.invalid.error_9o8Kl","encodeError":false,"validate":function (attribute, value, messages, deferred, $form) {yii.validation.required(value, messages, {"message":"账号不能为空"});}},{"id":"loginform-password","name":"password","container":".field-loginform-password","input":"#loginform-password","error":".custom.invalid.error_9o8Kl","encodeError":false,"validate":function (attribute, value, messages, deferred, $form) {yii.validation.required(value, messages, {"message":"密码不能为空"});}},{"id":"loginform-rememberme","name":"rememberMe","container":".field-loginform-rememberme","input":"#loginform-rememberme","error":".custom.invalid.error_9o8Kl","encodeError":false,"validate":function (attribute, value, messages, deferred, $form) {yii.validation.boolean(value, messages, {"trueValue":"1","falseValue":"0","message":"10天内自动登录 must be either \"1\" or \"0\".","skipOnEmpty":1});}}], []);
});</script>
	</body>
</html>
