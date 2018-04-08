<%@page import="com.ht.pojo.TUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	TUser user = (TUser) session.getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>抽奖活动</title>
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="applicable-device" content="pc,mobile" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="X-UA-Compatible" content="IE=10" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="baidu-site-verification" content="ujOHpZF8J7" />
<link rel="shortcut icon"
	href="<%=path%>/images/icon/apple-touch-icon-72-precomposed.png" />
<link href="<%=path%>/homecss/style1.css" type="text/css"
	rel="stylesheet" />
<link href="<%=path%>/homecss/style-picture.css" type="text/css"
	rel="stylesheet" />
<link href="<%=path%>/homecss/media.css" type="text/css"
	rel="stylesheet" />
<script type="text/javascript"
	src="<%=path%>/homejs/jquery.flexslider-min.js"></script>
<script src="<%=path%>/homejs/common.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=path%>/homejs/jquery.fancybox.js"></script>
<script src="<%=path%>/homejs/jPages.js"></script>
<link href="<%=path%>/css/css.css" rel="stylesheet" media="screen" />
<style>
body {
	behavior: url(css/hover.htc);
}
</style>
<script>
	$(function() {
		$("div.holder").jPages({
			containerID : "itemContainer",
			perPage : 16
		});
	});
</script>
<style type="text/css">
.egg {
	width: 650px;
	height: 500px;
	margin: 50px auto 20px auto;
	background: url(../images/bg.jpg);
	position: relative;
}

.egg ul li {
	z-index: 999;
}

.eggList {
	padding-top: 110px;
	position: relative;
	width: 660px;
}

.eggList li {
	float: left;
	background: url(../images/egg_1.png) no-repeat bottom;
	width: 391px;
	height: 268px;
	cursor: pointer;
	position: relative;
	margin-left: 35px;
	top: 100px;
	left: 130px;
}

.eggList li span {
	position: absolute;
	width: 30px;
	height: 60px;
	left: 68px;
	top: 64px;
	color: #ff0;
	font-size: 42px;
	font-weight: bold
}

.eggList li.curr {
	background: url(../images/egg_2.png) no-repeat bottom;
	cursor: default;
	z-index: 300;
}

.eggList li.curr sup {
	position: absolute;
	background: url(../images/img-4.png) no-repeat;
	width: 232px;
	height: 181px;
	top: -10px;
	left: 65px;
	z-index: 800;
}

.hammer {
	width: 120px;
	height: 124px;
	position: absolute;
	z-index: 150;
	left: 468px;
	top: 110px;
}

.resultTip {
	position: absolute;
	background: #ffc;
	width: 148px;
	padding: 6px;
	z-index: 500;
	top: 200px;
	left: 10px;
	color: #f60;
	text-align: center;
	overflow: hidden;
	display: none;
	z-index: 500;
}

.resultTip b {
	font-size: 14px;
	line-height: 24px;
}

.title {
	color: #fff;
	font-size: 28px;
	font-family: 微软雅黑;
	position: absolute;
	left: 100px;
	width: 600px;
	top: 50px;
}

.muji {
	position: absolute;
	top: 330px;
	left: 600;
}

.muji a {
	font-size: 18px;
	color: #fff;
}

.menu {
	margin: 0 auto;
	width: 300px;
	background: #f8cb9c;
	height: 300px;
	padding: 10px;
	font-size: 12px;
	text-align: left;
	color: #9C5E00;
}
</style>

<script>
	function zadan(obj) {

		$(obj).children("span").hide();
		eggClick($(obj));
	};

	var dingshi = setInterval("donghua()", 2000);
	var dansui = 1;
	function eggClick(obj) {
		if (dansui < 1) {
			alert("你已经抽过奖了！");
// 			location.reload();
			return;
		}
		var _this = obj;
		$("#hammer").stop(true);
		clearInterval(dingshi);
		//$(".hammer").css({"top":"150px","left":"420px"});
		setTimeout(function() {
			_this.addClass("curr"); //蛋碎效果 
			_this.find("sup").show(); //金花四溅 
			$(".hammer").hide();//隐藏锤子 
			dansui = 0;
			var item = [ '购房送云南三日游全家票', '购房送购房基金3000', '谢谢惠顾', '购房送苹果6s一部', '购房送oppoR11一部', '购房送外出酒店优惠券300',
					'购房基金4000元', '购房送ipad一部', '购房送半年车库租用', '看房下午茶' ];
			var index = Math.floor(Math.random() * item.length);
			var nb = item[index]
			$("#getprize").val(nb);
			getprizemoney();
			
		}, 300)

	}
</script>
<script type="text/javascript">
	$(function() {
		function show() {
			var mydate = new Date();
			var str = "" + mydate.getFullYear();
			str += (mydate.getMonth() + 1);
			str += mydate.getDate();
			return str;
		}
	});
</script>
</head>
<body>
<input type="text" id="getprize" value=""/>
	<div class="float_div">
		<div class="float_div_bg">
			<a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_5"
				class="float_link" id="fl1"></a> <a rel="nofollow"
				href="<%=path%>/hui-jxs/pinggu.jsp" class="float_link" id="fl2"></a>
			<a rel="nofollow"
				href="https://www.dituwuyou.com/map/viewer?mid=8uKt5b4OJHgRUzWcpMrIig"
				class="float_link" id="fl3"></a> <a
				href="<%=path%>/hui-jxs/question.jsp" class="float_link" id="fl4"></a>
			<a href="<%=path%>/facemain/bestloupan" class="float_link" id="fl5"></a>
			<a rel="nofollow" href="#top" class="float_link" id="fl6"></a>
		</div>
	</div>
	<div class="header">
		<div class="top_main">
			<h1>
				<a href="<%=path%>/facemain/articlelist"><img alt="中国房产"
					src="<%=path%>/homeimage/553d93dd1024f.jpg" /></a>
			</h1>
			<div class="top_right">
				<span><i class="i_con i_ico_1"></i><a rel="nofollow"
					href="<%=path%>/hui-jxs/aboutwe.jsp#about_5" style="color: white">联系我们</a></span>
				<span><img alt="桃源盛景客服:15679760329"
					src="<%=path%>/homeimage/tel.jpg" /></span>
			</div>
			<a class="medis_show" id="menu_btn" href="javascript:openmenu();"><img
				alt="中国房产" src="<%=path%>/homeimage/menu.png" /></a>
		</div>
		<div class="nav_box">
			<div class="nav">
				<div class="nav_main">
					<ul>
						<li><a rel="nofollow" href="<%=path%>/facemain/articlelist"><span>HOME</span>
								首页</a></li>
						<li id="nav_1"><a class="nav_a"
							href="<%=path%>/facemain/bestloupan"><span>LONDON</span>中国房产
						</a>
							<div class="nav_child">
								<a href="<%=path%>/facemain/bestloupan">中国房产精选 </a> <a
									href="<%=path%>/facemain/bestloupan">中国房产一区 </a> <a
									href="<%=path%>/facemain/bestloupan">中国房产二区 </a> <a
									href="<%=path%>/facemain/bestloupan">中国三区-五区 </a> <a
									href="<%=path%>/facemain/bestloupan">中国外及别墅 </a>
							</div></li>
						<li id="nav_2"><a class="nav_a"
							href="<%=path%>/facemain/othersloupan"><span>MORE
									CITIES</span>其他城市 </a>
							<div class="nav_child">
								<a href="<%=path%>/facemain/othersloupan?loupan.nameString=上海">上海</a>
								<a href="<%=path%>/facemain/othersloupan?loupan.nameString=广州">广州
								</a> <a href="<%=path%>/facemain/othersloupan?loupan.nameString=南昌">南昌
								</a> <a href="<%=path%>/facemain/othersloupan?loupan.nameString=深圳">深圳
								</a>
							</div></li>
						<li id="nav_3"><a class="nav_a"
							href="<%=path%>/facemain/manyarticle"><span>INFO</span>房产投资 </a>
							<div class="nav_child">
								<a href="<%=path%>/facemain/manyarticle">中国房产资讯 </a> <a
									href="<%=path%>/hui-jxs/question.jsp">买房常见问题 </a> <a
									href="<%=path%>/hui-jxs/buyhouseliucheng.jsp">中国买房流程 </a>
							</div></li>
						<li id="nav_5"><a rel="nofollow" class="nav_a"
							href="<%=path%>/hui-jxs/aboutwe.jsp"><span>ABOUT US</span>关于我们
						</a>
							<div class="nav_child">
								<a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_0">桃源投资
								</a> <a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_1">发展渊源
								</a> <a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_2">桃源服务
								</a> <a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_4">桃源特色
								</a> <a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_5">联系我们
								</a>
							</div></li>
						<c:if test="<%=user == null%>">
							<li id="nav_4"><a rel="nofollow" class="nav_a"
								href="<%=path%>/hui-jxs/userlogin.jsp"><span>LOGIN</span>登录注册
							</a>
								<div class="nav_child">
									<a rel="nofollow" href="<%=path%>/hui-jxs/userlogin.jsp">登录
									</a> <a rel="nofollow" href="<%=path%>/hui-jxs/userlogin.jsp">注册
									</a>
								</div></li>
						</c:if>
						<c:if test="<%=user != null%>">
							<c:if test="<%=user.getUsertypeInt() == 0%>">
								<li id="nav_4"><a rel="nofollow" class="nav_a"
									href="<%=path%>/lr/usermainface"><span>USER</span><%=user.getNameString()%></a>
									<div class="nav_child">
										<a rel="nofollow" href="<%=path%>/lr/usermainface">个人中心</a> <a
											rel="nofollow" href="<%=path%>/lr/exit">退出</a>
									</div></li>
							</c:if>
							<c:if test="<%=user.getUsertypeInt() == 1%>">
								<li id="nav_4"><a rel="nofollow" class="nav_a"
									href="<%=path%>/lr/jxsmainface"><span>TAGNECY</span><%=user.getNameString()%></a>
									<div class="nav_child">
										<a rel="nofollow" href="<%=path%>/lr/jxsmainface">个人中心</a> <a
											rel="nofollow" href="<%=path%>/lr/exit">退出</a>
									</div></li>
							</c:if>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" id="pageid" value="43" />
	<input type="hidden" id="menuid" value="2" />
	<div class="main">
		<div class="home_top">
			<div class="w_626">
				<div class="img">
					<img alt="中国房产网" src="<%=path%>/homeimage/h_1.png" border="0" />
				</div>
				<p>
					楼盘搜索 | <span>REAL ESTATE QUERY</span>
				</p>
				<form action="<%=path%>/facemain/findloupan" method="post"
					id="proform">
					<input type="hidden" name="catid" value="43" />
					<div class="search">
						<input name="loupan.nameString" type="text"
							onfocus="if (value =='请输入关键词（城市名、地名）'){value =''}"
							onblur="if (value ==''){value='请输入关键词（城市名、地名）'}"
							value="请输入关键词（城市名、地名）" maxlength="58" /> <a
							href="javascript:subsearch();"><img alt="中国房产搜索"
							src="<%=path%>/homeimage/but.gif" /></a>
					</div>
					<div class="clr"></div>
					<ul class="price">
						<li>
							<div class="pro_list">
								<input type="hidden" name="rmbprice" id="pl12" value="" /> <input
									type="text" class="s_list" id="s_list12" value="价格"
									readonly="readonly" />
								<div class="head_p_list">
									<h5 alt="61" class="12" title="100万以下">100万以下</h5>
									<h5 alt="62" class="12" title="100万-300万">100万-300万</h5>
									<h5 alt="63" class="12" title="300万-500万">300万-500万</h5>
									<h5 alt="64" class="12" title="500万-700万">500万-700万</h5>
									<h5 alt="65" class="12" title="700万-1000万">700万-1000万</h5>
									<h5 alt="66" class="12" title="1000万以上">1000万以上</h5>
								</div>
							</div>
						</li>
						<li>
							<div class="pro_list">
								<input type="hidden" name="housetype" id="pl13" value="" /> <input
									type="text" class="s_list" id="s_list13" value="户型"
									readonly="readonly" />
								<div class="head_p_list">
									<h5 alt="5" class="13" title="1房">1房</h5>
									<h5 alt="4" class="13" title="1/2房">1/2房</h5>
									<h5 alt="40" class="13" title="1/2/3房">1/2/3房</h5>
									<h5 alt="50" class="13" title="服务式办公室">服务式办公室</h5>
								</div>
							</div>
						</li>
						<li>
							<div class="pro_list">
								<input type="hidden" name="wytype" id="pl14" value="" /> <input
									type="text" class="s_list" id="s_list14" value="物业类型"
									readonly="readonly" />
								<div class="head_p_list">
									<h5 alt="8" class="14" title="自住公寓">自住公寓</h5>
									<h5 alt="7" class="14" title="自住别墅">自住别墅</h5>
									<h5 alt="9" class="14" title="投资公寓">投资公寓</h5>
									<h5 alt="51" class="14" title="商用物业">商用物业</h5>
								</div>
							</div>
						</li>
					</ul>
				</form>
				<script>
					function subsearch() {
						$("#proform").submit();
					}
				</script>

				<div class="clr"></div>
			</div>
		</div>
		<div class="clr"></div>
	</div>
	<div class="content">
		<div class="egg">
			<div class="muji">
				<img src="<%=path%>/images/muji.png" /><br>
			</div>
			<ul class="eggList">
				<p class="hammer" id="hammer">
					<img src="<%=path%>/images/chuizi.png" class="imgChuiZi" />
				</p>
				<!--<p class="resultTip" id="resultTip"><b id="result"></b></p>-->
				<li id="jindan" onClick="zadan(this)"></li>
			</ul>
		</div>
	</div>
	<div class="public box_2">
		<div class="public box_2">
			<div class="fl">
				<h2 class="bt">
					桃源盛景房产资讯 | <span>INFORMATION</span>
				</h2>
				<div class="zixun">
					<div class="img fl">
						<img alt="中国房产图片" src="<%=path%>/homeimage/554ad68e4229b.jpg"
							border="0" />
					</div>
					<div class="txt fr">
						<ul>
							<c:forEach items="${articlelist}" var="a">
								<li><a title="${a.titleString}"
									href="<%=path%>/${a.contenturlString}">${a.abstractsString}</a>
									<p>${a.contentString}</p></li>
							</c:forEach>
						</ul>
					</div>
					<div class="clr"></div>
				</div>
			</div>
			<div class="fr media_hide">
				<h2 class="bt">平台热门活动 | <span>ACTIVITYS</span></h2>
			    <ul class="qu">
			      <c:forEach items="${activitylist}" var="t">
					  	<li>
					        <a title="${t.titleString}" href="<%=path%>/${t.urlString}">${t.titleString}</a>
					        <p>${t.contentString} </p>
			      		</li>
				 </c:forEach>
			    </ul>
			</div>
			<div class="clr"></div>
			<div class="media_show">
				<script>
					function submitform() {
						var username = $.trim($("#username").val());
						var tel = $.trim($("#tel").val());
						var qq = $.trim($("#email").val());
						if (username != "您的称呼*") {
							if (tel != "您的电话*") {
								if (qq != "您的QQ*") {
									$("#iiform").submit();
								} else {
									alert("您的邮箱不能为空！");
									return false;
								}
							} else {
								alert("您的电话不能为空！");
								return false;
							}
						} else {
							alert("您的称呼不能为空！");
							return false;
						}
					}
				</script>
				<div class="form" style="margin: 0px;">
					<form action="/iinvestment/fildform.html" method="post" id="iiform">
						<input type="hidden" name="fileids" id="fileids" />
						<div class="bt">
							<img src="<%=path%>/homeimage/c_bt.gif" border="0"
								alt="索取中国房产投资报告" />
						</div>
						<div class="form_left">
							<ul>
								<li><input type="text" name="username" id="username"
									class="s16-i1" value="您的称呼*"
									onfocus="if (value =='您的称呼*'){value =''}"
									onblur="if (value ==''){value='您的称呼*'}" /></li>
								<li><input type="text" name="tel" id="tel" class="s16-i2"
									value="您的手机*" onfocus="if (value =='您的手机*'){value =''}"
									onblur="if (value ==''){value='您的手机*'}" /></li>
								<li><input type="text" name="email" id="email"
									class="s16-i3" value="您的邮箱*"
									onfocus="if (value =='您的邮箱*'){value =''}"
									onblur="if (value ==''){value='您的邮箱*'}" /></li>
							</ul>
						</div>
						<div class="form_right">
							注：我们承诺您的信息完全保密不对外公开，提交您的信息我们将最快时间为您提供投资报告书，让您更加了解海外置业详情。*</div>
						<div class="clr"></div>
						<div class="from_a">
							<a ref="nofollow" href="javascript:submitform();">5分钟内为我发送</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	﻿
	<div class="bottom_box">
		<div class="public bottom_main">
			<div class="fl bottom_l">
				<h2>桃源盛景</h2>
				<h2>
					你值得信赖的中国<br />房产权威机构
				</h2>
			</div>
			<div class="fl bottom_2">
				<ul>
					<li><img alt="桃源盛景客服微信二维码" src="<%=path%>/homeimage/w_1.jpg" />
						<p>专业顾问</p></li>
					<li><img alt="桃源盛景微信公众号二维码" src="<%=path%>/homeimage/w_2.jpg" />
						<p>官方微信</p></li>
				</ul>
			</div>
			<div class="fr">
				<div class="bt_box">
					<p style="padding-top: 15px">联系电话</p>
					<p>156-7976-0329</p>
					<p>周一至周日 9：00-21：00</p>
				</div>
				<p style="padding-top: 15px">联系邮箱</p>
				<p>275300091@qq.com</p>
			</div>
			<div class="clr"></div>
		</div>
	</div>
	<div class="bottom">
		<div class="bottom_m">
			<p id="bottom_menu" style="color: white">
				<a href="http://www.youinvest.cn/" style="color: white">首页</a> <a
					href="<%=path%>/facemain/othersloupan?loupan.nameString=赣州"
					style="color: white">赣州房产</a> <a
					href="/property/index/id/41/pid/2.html" style="color: white">学生公寓</a>
				<a rel="nofollow" href="/iinvestment/lists1/id/22/pid/3.html"
					style="color: white">房产资讯</a> <a
					href="<%=path%>/hui-jxs/aboutwe.jsp" style="color: white">关于我们</a>
			</p>
			<p class="bottom_address">地址:江西省赣州市章贡区</p>
			<p class="bottom_address">电话:176-0797-5702</p>
			<p id="bottom_menu" style="padding-top: 18px;">
				<a target="_blank"
					href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010102002571"
					style="color: white"> <img
					src="http://www.youinvest.cn/Apps/Tpl/default/Public/images/beian.png" />赣公网安备
					31010102002571号
				</a>&nbsp;&nbsp;赣ICP备15015190号-1
			</p>
			<p style="text-align: center; padding-top: 18px;" />
			版权所有：Copyright @ 2017 桃源盛景
			</p>
		</div>
		<div style="height: 10px;"></div>
		<div class="livechat-girl animated">
			<img class="girl" src="<%=path%>/images/en_3.png" />
			<div
				class="livechat-hint rd-notice-tooltip rd-notice-type-success rd-notice-position-left single-line show_hint">
				<div class="rd-notice-content">嘿，我来帮您！</div>
			</div>
			<div class="animated-circles">
				<div class="circle c-1"></div>
				<div class="circle c-2"></div>
				<div class="circle c-3"></div>
			</div>
		</div>
	</div>
	</div>
	<div class="bottom_btn">
		<div class="bottom_off_no">
			<a href="javasript:openbox();">︿</a>
		</div>
		<div class="bottom_ul_li">
			<ul>
				<li id="b_home"><a rel="nofollow"
					href="javascript:openqrcode();">微信</a><img alt="桃源盛景客服微信二维码"
					id="qrcode_img" src="<%=path%>/homeimage/w_1.jpg" /></li>
				<li id="b_tel"><a href="Tel:156-7976-0329">电话</a></li>
				<li id="b_map"><a rel="nofollow"
					href="http://api.map.baidu.com/marker?location=114.92,25.85&title=江西省赣州市章贡区&content=桃源盛景_中国房产网_中国房产平台_中国买房_中国房价服务&output=html">地图</a></li>
				<li id="b_about"><a rel="nofollow"
					href="<%=path%>/hui-jxs/aboutwe.jsp">我们</a></li>
			</ul>
			<div class="float_clear"></div>
		</div>
	</div>
		<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script><!-- jQuery -->
	<script type="text/javascript">
		function getprizemoney(){
			$.post(
   					"${pageContext.request.contextPath}/getprize/addgetprize",
   					{
   						"name":$("#getprize").val()
   					},
   					function(data){
   						if(data=="领取成功"){
   							alert($("#getprize").val());
   						}
   						if(data=="你已经抽过奖了"){
   							alert(data);
   						}
   					},
   					"text"
   				);
		}
	</script>
	<script type="text/javascript">
		(function($) {
			setInterval(function() {
				if ($(".animated-circles").hasClass("animated")) {
					$(".animated-circles").removeClass("animated");
				} else {
					$(".animated-circles").addClass('animated');
				}
			}, 3000);
			var wait = setInterval(function() {
				$(".livechat-hint").removeClass("show_hint").addClass(
						"hide_hint");
				clearInterval(wait);
			}, 4500);
			$(".livechat-girl")
			.hover(
				function() {
					clearInterval(wait);
					$(".livechat-hint").removeClass("hide_hint")
							.addClass("show_hint");
				},
				function() {
					$(".livechat-hint").removeClass("show_hint")
							.addClass("hide_hint");
				})
			.click(
				function() {
					window
							.open('http://wpa.qq.com/msgrd?v=3&uin=275300091&site=qq&menu=yes');
				});
		})(jQuery);
	</script>
</body>
</html>