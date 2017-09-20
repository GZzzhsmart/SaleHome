<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>员工登录</title>
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
<body>
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
	<h1 align="center">员工登录</h1>
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-body">
				<div id="myTabContent" class="tab-content">
					<div class="tab-pane fade in active" id="login">
						<form class="form-horizontal" role="form" id="form" action="<%=path %>/yg/loginsuccess">
							  <div class="form-group">
		                      </div>
		                      <div class="form-group">
		                          <input type="text" class="form-control" onkeyup="pwd(this.value);" id="useraccount" name="useraccount" placeholder="请输入电子邮件/手机号码">
		                          <i class="fa fa-user"></i>
		                      </div>
		                      <div class="form-group help">
		                          <input type="password" class="form-control" id="inputPassword5" name="password" placeholder="请输入登录密码">
		                          <i class="fa fa-lock"></i>
		                          <button class="btn btn-primary btn-lg fa-question-circle glyphicon glyphicon-info-sign" style="margin-top:0px"  onclick="findmypwd($('#useraccount').val());">忘记密码</button>
		                      </div>
		                      <div class="form-group">
		                          <div class="main-checkbox">
		                              <input type="checkbox" value="None" id="checkbox1" name="check"/>
		                              <label for="checkbox1"></label>
		                          </div>
		                          <label class="text">记住密码</label>
		                          <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;还没有SaleHome账号？<a href="javascript:void(0);" onclick="findmypwd($('#useraccount').val());">忘记密码</a></label>
		                          <div class="form-group">
		                      	  </div>
		                          <button type="submit" class="btn btn-default btn-primary btn-lg btn-block">登录</button>
		                      </div>
		                      <div class="member-social">
		                      		<label class="text" style="margin-left:50px">其他方式登录</label>
									<a href="javascript:void(0);" style="margin-left:30px"><i class="fa fa-facebook"></i></a>
									<a href="javascript:void(0);" style="margin-left:30px"><i class="fa fa-twitter"></i></a>
									<a href="javascript:void(0);" style="margin-left:30px"><i class="fa fa-google-plus"></i></a>
									<a href="javascript:void(0);" style="margin-left:30px"><i class="fa fa-linkedin"></i></a>
							  </div>
		                  </form>
					</div>
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
    $(function () {
    	 // Generate a simple captcha
        function randomNumber(min, max) {
            return Math.floor(Math.random() * (max - min + 1) + min);
        };
        $('#captchaOperation').html(['=', randomNumber(1, 100), '+',randomNumber(1, 100) ].join(' '));
        $('form').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                useraccount: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 11,
                            max: 11,
                            message: '用户名长度必须在11位'
                        },
                        threshold: 10,
                        remote: {
                        	url: '${pageContext.request.contextPath}/yg/checkemployeeaccount',
                            message: '员工不存在',
                            delay :  2000,
                            type: 'POST'
                        }
                    }
                },
                password: {
                    message: '密码验证失败',
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 18,
                            message: '密码长度必须在6到18位之间'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: '密码只能包含大写、小写、数字和下划线'
                        },
                        threshold: 6,
                        remote: {
                            url: "${pageContext.request.contextPath}/yg/checkpassword",
                            data: function (validator) {
                            	return {
                            		useraccount: $("#useraccount").val(),
                                	password: $("#password").val()
                                };
                                
                            },
                            message: '密码输入错误！',
                            delay:1000
                        }
                       
                    }
                },
                loginpassword: {
                    message: '登录密码验证失败',
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 18,
                            message: '密码长度必须在6到18位之间'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: '密码只能包含大写、小写、数字和下划线'
                        },
                        
                    }
                },
              fastuseraccount: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 11,
                            max: 11,
                            message: '用户名长度必须在11位'
                        },
                        threshold: 10,
                        remote: {
                        	url: '${pageContext.request.contextPath}/manager/checkregisteraccount',
                            message: '用户已存在',
                            delay :  2000,
                            type: 'POST'
                        }
                    }
                },
                fastphonecode: {
                    message: '密码验证失败',
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 18,
                            message: '密码长度必须在6到18位之间'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: '密码只能包含大写、小写、数字和下划线'
                        },
                        threshold: 6,
                        remote: {
                            url: "${pageContext.request.contextPath}/manager/getcode",
                            data: function (validator) {
                            	return {
                            		useraccount: $("#useraccount").val()
                                };
                            },
                            message: '密码输入错误！',
                            delay:1000
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
    			alert("尊敬的"+$("#registeraccount").val()+"用户,短信发送成功,请注意查收，谢谢支持！");
    			$.post(
   					"${pageContext.request.contextPath}/manager/sendcode",
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
    				num--;
    				$("#getcode").html(num+"秒后重发");
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
<script type="text/javascript">
	function findmypwd(name){
		if(name==""){
			alert("请输入账号！");
			return;
		}
		$.post(
			"${pageContext.request.contextPath}/yg/sendcode",
			{
				"useraccount":name
			},
			function(data){
				alert(data);
			},
			"text"
		);
			
	}
</script>

</body>
</html>