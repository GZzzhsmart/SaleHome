<%@page import="com.ht.pojo.TUser"%>
<%@page import="com.ht.pojo.TAgency"%>
<%@page import="javax.persistence.criteria.CriteriaBuilder.In"%>
<%@page import="org.apache.commons.lang3.ClassUtils.Interfaces"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	TUser user = (TUser)session.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>桃源盛景</title>
	<!-- Main CSS file -->
	<link rel="stylesheet" href="<%=path %>/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=path %>/css/fonts/font-awesome.css" />
	<link rel="stylesheet" href="<%=path %>/css/responsive.css" />
	<link rel="stylesheet" href="<%=path%>/homecss/login.css"/>
	<link rel="shortcut icon" href="<%=path %>/images/icon/favicon.png">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=path %>/images/icon/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=path %>/images/icon/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=path %>/images/icon/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="<%=path %>/images/icon/apple-touch-icon-57-precomposed.png">
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrapValidator.css" />
	<link href="<%=path%>/css/css.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<!--style="background-image:url(../homeimage/big3.jpg)"  -->
<body >
	<footer id="footer">
		<div style="height:10px;"></div>
		<div class="livechat-girl animated"> <img class="girl" src="<%=path %>/images/en_3.png">
		  <div class="livechat-hint rd-notice-tooltip rd-notice-type-success rd-notice-position-left single-line show_hint">
		    <div class="rd-notice-content">嘿，我来帮您！</div>
		  </div>
		  <div class="animated-circles">
		    <div class="circle c-1"></div>
		    <div class="circle c-2"></div>
		    <div class="circle c-3"></div>
		  </div>
		</div>
	</footer>
	<!-- /FOOTER -->
	<!-- Scroll-up -->
	<h1 align="center">用户经销商找回密码</h1>
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
						<div id="myTabContent" class="tab-content">
								<form class="form-horizontal" role="form" id="form" action="<%=path%>/lr/findpwd">
			                      <div class="form-group">
			                      </div>
			                      <div class="form-group">
			                          <input type="number" class="form-control" name="useraccount" id="useraccount" placeholder="请输入你的手机账号">
			                          <i class="fa fa-user"></i>
			                      </div>
			                      <div class="form-group">
			                          <input type="password" class="form-control" name="loginpassword" id="loginpassword" placeholder="请输入新密码">
			                          <i class="fa fa-lock"></i>
			                      </div>
			                      <div class="form-group">
			                          <input type="text" class="form-control" name="captcha" id="captcha" placeholder="输入答案">
			                          <i class="fa fa-lock"></i>
			                          <label class="col-lg-3 control-label fa fa-question-circle" id="captchaOperation"></label>
			                      </div>
			                      <div class="form-group help">
		                          	  <input type="number" class="form-control" name="registercode" id="registercode" placeholder="验证码">
			                     	  <i class="fa fa-lock"></i>
			                          <button type="button" class="btn btn-primary btn-lg fa-question-circle glyphicon glyphicon-leaf" id="getcode" >获取验证码</button>
			                      </div>
			                      <div class="form-group">
			                          <a href="http://wpa.qq.com/msgrd?v=3&uin=275300091&site=qq&menu=yes" target="_blank">收不到验证码？反馈问题</a>
			                          <div class="form-group">
				                      </div>
			                          <button type="submit" class="btn btn-primary btn-lg btn-block btn-danger">确认找回密码</button>
			                     </div>
			                 </form>							
					</div>
			    </div>
			</div>
		</div>
		<div class="bottom">
		<div class="bottom_m">
			<p style="text-align:center;  padding-top:18px;"/>
			版权所有：Copyright @ 2017 桃源盛景</p>
		</div>
 </div>
	<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script><!-- jQuery -->
	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script><!-- Bootstrap -->
	<script type="text/javascript" src="<%=path %>/js/jquery.parallax.js"></script><!-- Parallax -->
	<script type="text/javascript" src="<%=path %>/js/smoothscroll.js"></script><!-- Smooth Scroll -->
	<script type="text/javascript" src="<%=path %>/js/masonry.pkgd.min.js"></script><!-- masonry -->
	<script type="text/javascript" src="<%=path %>/js/jquery.fitvids.js"></script><!-- fitvids -->
	<script type="text/javascript" src="<%=path %>/js/owl.carousel.min.js"></script><!-- Owl-Carousel -->
	<script type="text/javascript" src="<%=path %>/js/jquery.counterup.min.js"></script><!-- CounterUp -->
	<script type="text/javascript" src="<%=path %>/js/waypoints.min.js"></script><!-- CounterUp -->
	<script type="text/javascript" src="<%=path %>/js/jquery.isotope.min.js"></script><!-- isotope -->
	<script type="text/javascript" src="<%=path %>/js/jquery.magnific-popup.min.js"></script><!-- magnific-popup -->
	<script type="text/javascript" src="<%=path %>/js/scripts.js"></script><!-- Scripts -->
	<script type="text/javascript" src="<%=path%>/js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="<%=path%>/js/zh_CN.js"></script>
	<script type="text/javascript">
		function pwd(){
			$("#inputPassword5").val("@@@@@@@");
		}
	</script>
	<script>
        $(function () {
        	 // Generate a simple captcha
            function randomNumber(min, max) {
                return Math.floor(Math.random() * (max - min + 1) + min);
            };
            $('#captchaOperation').html(['=', randomNumber(1, 99), '+',randomNumber(1, 99) ].join(' '));
            $('form').bootstrapValidator({
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                	useraccount: {
                        message: '账号验证失败',
                        validators: {
                        	notEmpty: {
                                message: '手机号码不能为空'
                            },
                            stringLength: {
                                min: 11,
                                max: 11,
                                message: '请输入11位手机号码'
                            },
                            regexp: {
                                regexp: /^1[3|5|8|7]{1}[0-9]{9}$/,
                                message: '请输入正确的手机号码'
                            },
                            threshold :11 ,
                            remote: {
                                url: '${pageContext.request.contextPath}/lr/checkuseraccount',
                                message: '该手机号不存在',
                                delay :  2000,
                                type: 'POST'
                            }
                        }
                    },
                    loginpassword: {
                        message: '新密码验证失败',
                        validators: {
                            notEmpty: {
                                message: '新密码密码不能为空'
                            },
                            stringLength: {
                                min: 6,
                                max: 18,
                                message: '新密码长度必须在6到18位之间'
                            },
                            regexp: {
                                regexp: /^[a-zA-Z0-9_]+$/,
                                message: '新密码只能包含大写、小写、数字和下划线'
                            },
                            
                        }
                    },
                    registercode :{
                        validators: {
                            notEmpty: {
                                message: '验证码不能为空!'
                            },
                            stringLength: {
                                min: 6,
                                max: 6,
                                message: '请输入6位数的验证码'
                            },
                            threshold :6,
                            remote: {
                                url: '${pageContext.request.contextPath}/lr/checkcode',
                                message: '验证码错误!',
                                delay :  2000,
                                type: 'POST'
                            }
                        }
                    },
                    captcha: {
                        validators: {
                            callback: {
                                message: '回答错误',
                                callback: function(value, validator) {
                                    var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[1]) + parseInt(items[3]);
                                    return value == sum;
                                }
                            }
                        }
                    }
                }
            });
        });
    </script>
    <script>
    	$(function(){
    		$("#lg").bind("click",function(){
    			$('#myTab li:eq(0) a').tab('show')
    		});
    		$("#re").bind("click",function(){
    			$('#myTab li:eq(1) a').tab('show')
    		});
    	});
    </script>
    <script>
    $(function() {
        $("#bt").click(function(){
        	$(this).button('loading').delay(1000).queue(function() {
                $(this).button('reset');
                $(this).dequeue(); 
            });
        });
    });  
    </script>
    <script>
    	$(function(){
    		var num=60;
    		$("#getcode").click(function(){
    			if($("#registeraccount").val()==""){
    				alert("请输入手机号");
    				return;
    			}
    			$.post(
   					"${pageContext.request.contextPath}/lr/sendcode",
   					{
   						"registeraccount":$("#registeraccount").val()
   					},
   					function(data){
   					},
   					"json"
   				);
    			showtime();
    		});
    		function showtime(){
    			if(num>=0){
    				$("#getcode").html(num+"秒后重发");
    				num--;
    			}else{
    				$("#getcode").html("重新发送");
    			}
    			setTimeout(showtime,1000);
    		}
    		$("#getphonecode").click(function(){
    			if($("#fastuseraccount").val()==""){
    				alert("请输入手机号");
    				return;
    			}	
    			showtimecode();
    		});
    		function showtimecode(){
    			if(num>=0){
    				num--;
    				$("#getphonecode").html(num+"秒后重发");
//     				$.post(
//     					"",
//     					{
    						
//     					},
//     					function(data){
    						
//     					},
//     					"json"
//     				);
    			}else{
    				$("#getphonecode").html("重新发送");
    			}
    			setTimeout(showtimecode,1000);
    		}
    	});
    </script>
    <script type="text/javascript">
(function($) {
	setInterval(function(){
		if($(".animated-circles").hasClass("animated")){
			$(".animated-circles").removeClass("animated");
		}else{
			$(".animated-circles").addClass('animated');
		}
	},3000);
	var wait = setInterval(function(){
		$(".livechat-hint").removeClass("show_hint").addClass("hide_hint");
		clearInterval(wait);
	},4500);
	$(".livechat-girl").hover(function(){
		clearInterval(wait);
		$(".livechat-hint").removeClass("hide_hint").addClass("show_hint");
	},function(){
		$(".livechat-hint").removeClass("show_hint").addClass("hide_hint");
	}).click(function(){
		 window.location.href = 'http://wpa.qq.com/msgrd?v=3&uin=275300091&site=qq&menu=yes';
	});
})(jQuery);
</script>
</body>
</html>