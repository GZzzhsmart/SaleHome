<%@page import="com.ht.pojo.TUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	TUser user = (TUser) session.getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客户购房调研测试</title>
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
	src="<%=path%>/homejs/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/homejs/jquery.flexslider-min.js"></script>
<script src="<%=path%>/homejs/common.js" type="text/javascript"></script>
<script type="text/javascript"
	src="<%=path%>/homejs/jquery.fancybox.js"></script>
<script src="<%=path%>/homejs/jPages.js"></script>
<link href="<%=path%>/css/css.css" rel="stylesheet" media="screen" />
<link rel="stylesheet" href="https://www.sojump.com/css/jqmobo.css?v=16" />

<script src="https://staticfile.qnssl.com/jquery/1.10.1/jquery.min.js"></script>
<script type="text/javascript">
	!window.jQuery
			&& document
					.write('<script src="/js/mobile/jquery-1.10.1.min.js"><\/script>');
</script>

<script src="https://www.sojump.com/js/hintinfo.js?v=2"
	type="text/javascript"></script>
<script src="https://www.sojump.com/js/jqmobo2.js?v=303"
	type="text/javascript"></script>
<style>
</style>
<script type="text/javascript">
	if (window.location.hash) {
		window.location.hash = "";
		window.location.href = window.location.href.replace("#", "");
	}
	var isWeiXin = 0;
</script>
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
</head>
<body>
	<div class="float_div">
		<div class="float_div_bg">
			<a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_5"
				class="float_link" id="fl1"></a> <a rel="nofollow"
				href="<%=path%>/hui-jxs/pinggu.jsp" class="float_link" id="fl2"></a>
			<a rel="nofollow"
				href="https://www.dituwuyou.com/map/viewer?mid=oTYlizSY-dBPttvQRr0iag"
				class="float_link" id="fl3"></a> <a
				href="<%=path%>/hui-jxs/question.jsp" class="float_link" id="fl4"></a>
			<c:if test="<%=user==null %>">
		  	<a href="<%=path %>/facemain/articlelist" class="float_link" onclick="alert('你未登录，请先 登录！');" id="fl5"></a>
		  </c:if>
		  <c:if test="<%=user!=null %>">
		  	<c:if test="<%=user.getUsertypeInt()==0 %>">
		  		<a href="<%=path %>/page/addpage" class="float_link"  id="fl5"></a>
		  	</c:if>
		  	<c:if test="<%=user.getUsertypeInt()!=0 %>">
		  		<a href="javascript:void(0);" onclick="alert('你无权限喔！');" class="float_link"  id="fl5"></a>
		  	</c:if>
		  </c:if>
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
							href="<%=path%>/facemain/othersloupan?loupan.nameString=赣州"><span>MORE
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
									<c:if test="<%=user!=null %>">
								  	<c:if test="<%=user.getUsertypeInt()==0 %>">
								  		<a  href="<%=path%>/page/addpage">购房调研测试 </a>					
								  	</c:if>
								  </c:if>
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
<input type="hidden" id="pageid" value="22" />
<input type="hidden" id="menuid" value="3" />
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
				<div class="clr"></div>
				<script>
					function subsearch(){
					    $("#proform").submit();
					}
					</script>
		
			</div>
		</div>
		<div class="clr"></div>
	</div>
	<form id="form1" method="post" onsubmit="return check();" action="<%=path%>/page/afterpage">
		<input type="hidden" value="<%=user.getIdString()%>"></input>
		<input type="hidden" id="page17" name="page.q17" value=""></input>
		<input type="hidden" id="page25" name="page.q25" value=""></input>
		<div id="toptitle" >
			<h1 class="htitle">房地产客户调查问卷</h1>
		</div>
		<div id="divLoadAnswer"
			style="display: none; background: #fffaea; padding: 15px 10px;">
			<b style="color: red;">提示：</b>为了更好的匹配你的房源，请填写，<a href="javascript:"
				onclick="loadAnswer();">加载上次答案</a>
		</div>
		<div id="divContent">
			<div id="divQuestion">
				<fieldset class='fieldset' style='' id='fieldset1'>
					<div class='cutfield' id='divCut1' qtopic='1' topic='c1'>
						<div style='margin: 7px 12px;'>
							<b><span style="font-size: 16px; color: #8d3901;">客户基本描述</span></b>
						</div>
					</div>
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='9'>
						<div class='field-label'>
							1. 被访者<span class='req'>*</span><div style="height:20px"></div> 姓名：<input
								style='max-width: 101px; line-height: 24px; padding: 2px 4px;'
								type='text' id='q1_1' name='page.q1_1' class='ui-input-text' />
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							&nbsp; &nbsp;年龄：<input
								style='max-width: 35px; line-height: 24px; padding: 2px 4px;'
								type='text' id='q1_2' name='page.q1_2' class='ui-input-text' />岁
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;电话：<input
								style='max-width: 134px; line-height: 24px; padding: 2px 4px;'
								type='text' id='q1_3' name='page.q1_3' class='ui-input-text' />
						</div>
						<div class='errorMessage' id="a1"></div>
					</div>
					<div class='field ui-field-contain' id='div2' req='1' topic='2'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							2. 年龄<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q2_1' name='page.q2' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_1'>25-35岁</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q2_2' name='page.q2' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_2'>36-45岁</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q2_3' name='page.q2' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_3'>46-55岁</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q2_4' name='page.q2' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_4'>55岁以上</div>
							</div>
						</div>
						<div class='errorMessage' id="a2"></div>
					</div>
					<div class='field ui-field-contain' id='div3' req='1' topic='3'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							3. 职业<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q3_1' name='page.q3' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q3_1'>国家机关（公务员）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q3_2' name='page.q3' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q3_2'>企业</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q3_3' name='page.q3' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q3_3'>个体经营</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q3_4' name='page.q3' rel='tqq3_4'
									style='display: none;' /><a class='jqradio'
									href='javascript:;'></a></span>
								<div class='label' for='q3_4' style='border-bottom: none;'>其他</div>
								<div class='ui-text'>
									<input type='text' style="display:hidden" rel='q3_4' id='tqq3_4'
										class='OtherRadioText' />
								</div>
								<br />
							</div>
							<div class='errorMessage' id="a3"></div>
						</div>
					</div>
				<div class='field ui-field-contain' id='div4' req='1' topic='4'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							4. 职位<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q4_1' name='page.q4' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_1'>老板/股东</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q4_2' name='page.q4' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_2'>高层管理人员</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q4_3' name='page.q4' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_3'>中层管理人员</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q4_4' name='page.q4' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_4'>普通员工</div>
							</div>
						</div>
						<div class='errorMessage' id="a4"></div>
					</div>
					<div class='field ui-field-contain' id='div5' req='1' topic='5'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							5. 家庭收入<div style="height:20px"></div>包括全家人工资、奖金、分红等所有收入在内，请问您家平均每年的总收入（美元）是多少？<span
								class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q5_1' name='page.q5' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_1'>10万美元以下</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q5_2' name='page.q5' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_2'>10万美元-20万美元</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q5_3' name='page.q5' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_3'>20万美元-30万美元</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q5_4' name='page.q5' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_4'>30万美元-40万美元</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q5_5' name='page.q5' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_5'>40万美元-50万美元</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q5_6' name='page.q5' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_6'>50万美元-60万美元</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q5_7' name='page.q5' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_7'>60万美元-70万美元</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q5_8' name='page.q5' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_8'>70万美元以上</div>
							</div>
						</div>
						<div class='errorMessage' id="a5"></div>
					</div>
					<div class='field ui-field-contain' id='div6' req='1' topic='6'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							6. 学历<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q6_1' name='page.q6' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_1'>初中及以下</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q6_2' name='page.q6' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_2'>高中/中技/中专</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q6_3' name='page.q6' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_3'>大学本科</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q6_4' name='page.q6' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_4'>硕士及以上</div>
							</div>
						</div>
						<div class='errorMessage' id="a6"></div>
					</div>
					<div class='field ui-field-contain' id='div7' req='1' topic='7'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							7. 请问您家的家庭结构属于？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q7_1' name='page.q7' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_1'>单身（1人）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q7_2' name='page.q7' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_2'>夫妇二人（2人）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q7_3' name='page.q7' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_3'>夫/妇与学龄前子女（3-5人）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q7_4' name='page.q7' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_4'>夫/妇与上小/中/大学子女（4-6人）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q7_5' name='page.q7' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_5'>夫/妇与已工作未婚子女（5-7人）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q7_6' name='page.q7' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_6'>夫/妇与已婚子女、夫妻与父/母同住（5-7人）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q7_7' name='page.q7' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_7'>祖父孙三代（夫/妻与父/母、子女同住）（6-8人)</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q7_8' name='page.q7' rel='tqq7_8'
									style='display: none;' /><a class='jqradio'
									href='javascript:;'></a></span>
								<div class='label' for='q7_8' style='border-bottom: none;'>其他</div>
								<div class='ui-text'>
									<input type='text' rel='q7_8' id='tqq7_8'
										class='OtherRadioText'/>
								</div>
								<br />
							</div>
						</div>
						<div class='errorMessage' id="a7"></div>
					</div>
					<div class='field ui-field-contain' id='div8' req='1' topic='8'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							8. 请问您购房最高能够支付的总房款是多少呢？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q8_1' name='page.q8' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_1'>20万美元以下</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q8_2' name='page.q8' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_2'>20万美元-30万美元</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q8_3' name='page.q8' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_3'>30万美元-40万美元</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q8_4' name='page.q8' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_4'>40万美元-50万美元</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q8_5' name='page.q8' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_5'>50万美元-60万美元</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q8_6' name='page.q8' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_6'>60万美元以上</div>
							</div>
						</div>
						<div class='errorMessage' id="a8"></div>
					</div>
					<div class='field ui-field-contain' id='div9' req='1' topic='9'
						data-role='fieldcontain' type='4'>
						<div class='field-label'>
							9. 考虑偏好及价格承受能力，请问您最可能购买哪种类型的住宅？<span class='req'>*</span><span
								class='qtypetip'>&nbsp;[多选题]</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='1' id='q9_1' name='page.q9' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q9_1'>独栋别墅（2-3层）</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='2' id='q9_2' name='page.q9' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q9_2'>联排别墅（2-3层）</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='3' id='q9_3' name='page.q9' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q9_3'>花园洋房（4-6层）</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='4' id='q9_4' name='page.q9' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q9_4'>小高层公寓（7-9层）</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='5' id='q9_5' name='page.q9' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q9_5'>中高层公寓（10-18层）</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='6' id='q9_6' name='page.q9' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q9_6'>高层公寓（18层以上）</div>
							</div>
						</div>
						<div class='errorMessage' id="a9"></div>
					</div>
					<div class='field ui-field-contain' id='div10' req='1' topic='10'
						data-role='fieldcontain' type='4'>
						<div class='field-label'>
							10. 买房投资，您主要是出于什么考虑呢？<span class='req'>*</span><span
								class='qtypetip'>&nbsp;[多选题]</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='1' id='q10_1' name='page.q10' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q10_1'>刚需自住</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='2' id='q10_2' name='page.q10' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q10_2'>改善居住品质</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='3' id='q10_3' name='page.q10' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q10_3'>出租</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='4' id='q10_4' name='page.q10' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q10_4'>升值后卖掉</div>
							</div>
						</div>
						<div class='errorMessage' id="a10"></div>
					</div>
					<div class='field ui-field-contain' id='div11' req='1' topic='11'
						data-role='fieldcontain' type='4'>
						<div class='field-label'>
							11. 买房自住，您主要是出于什么考虑呢？<span class='req'>*</span><span
								class='qtypetip'>&nbsp;[多选题]</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='1' id='q11_1' name='page.q11' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q11_1'>扩大居住面积</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='2' id='q11_2' name='page.q11' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q11_2'>给子女准备</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='3' id='q11_3' name='page.q11' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q11_3'>孩子上学方便</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='4' id='q11_4' name='page.q11' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q11_4'>上班方便</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='5' id='q11_5' name='page.q11' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q11_5'>有一个更好的社区自然环境</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='6' id='q11_6' name='page.q11' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q11_6'>有一个更好的社区生活配套</div>
							</div>
						</div>
						<div class='errorMessage' id="a11"></div>
					</div>
					<div class='field ui-field-contain' id='div12' req='1' topic='12'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							12. 您在该城市的状态属于以下哪种情况？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q12_1' name='page.q12' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_1'>长期居住、生活、工作</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q12_2' name='page.q12' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_2'>单位派驻</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q12_3' name='page.q12' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_3'>探亲访友</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q12_4' name='page.q12' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_4'>休闲度假</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q12_5' name='page.q12' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_5'>生意往来、因公出差</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q12_6' name='page.q12' rel='tqq12_6'
									style='display: none;' /><a class='jqradio'
									href='javascript:;'></a></span>
								<div class='label' for='q12_6' style='border-bottom: none;'>其他</div>
								<div class='ui-text'>
									<input type='text' rel='q12_6' id='tqq12_6'
										class='OtherRadioText'/>
								</div>
								<br />
							</div>
						</div>
						<div class='errorMessage' id="a12"></div>
					</div>
					<div class='cutfield' id='divCut2' qtopic='13' topic='c2'>
						<div style='margin: 7px 12px;'>
							<b><span style="font-size: 16px; color: #8d3901;">客户土地需求分析</span></b>
						</div>
					</div>
					<div class='field ui-field-contain' id='div13' req='1' topic='13'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							13. 请问您是否会选择在该城市购房？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q13_1' name='page.q13' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_1'>是</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q13_2' name='page.q13' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_2'>否</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q13_3' name='page.q13' rel='tqq13_3'
									style='display: none;' /><a class='jqradio'
									href='javascript:;'></a></span>
								<div class='label' for='q13_3' style='border-bottom: none;'>其他</div>
								<div class='ui-text'>
									<input type='text' rel='q13_3' id='tqq13_3'
										class='OtherRadioText'/>
								</div>
								<br />
							</div>
						</div>
						<div class='errorMessage' id="a13"></div>
					</div>
					<div class='field ui-field-contain' id='div14' req='1' topic='14'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							14. 请问您会选择哪种装修标准的商品房<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q14_1' name='page.q14' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_1'>毛坯房</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q14_2' name='page.q14' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_2'>部分精装（厨卫）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q14_3' name='page.q14' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_3'>全部精装（不含家具家电）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q14_4' name='page.q14' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_4'>全部精装（含家具家电）</div>
							</div>
						</div>
						<div class='errorMessage' id="a14"></div>
					</div>
					<div class='field ui-field-contain' id='div15' req='1' topic='15'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							15. 如果您购买该高档住宅项目，能承受的含精装的价格是多少？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q15_1' name='page.q15' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_1'>200美元以上/㎡</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q15_2' name='page.q15' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_2'>200-300美元/㎡</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q15_3' name='page.q15' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_3'>300-400美元/㎡</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q15_4' name='page.q15' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_4'>400美元以上/㎡</div>
							</div>
						</div>
						<div class='errorMessage' id="a15"></div>
					</div>
					<div class='field ui-field-contain' id='div16' req='1' topic='16'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							16. 请问您更愿意选择在城市哪些区域购房？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q16_1' name='page.q16' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q16_1'>配套完善的城市中心区</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q16_2' name='page.q16' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q16_2'>配套一般的城市近郊区</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q16_3' name='page.q16' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q16_3'>环境优美的城市远郊区</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q16_4' name='page.q16' rel='tqq16_4'
									style='display: none;' /><a class='jqradio'
									href='javascript:;'></a></span>
								<div class='label' for='q16_4' style='border-bottom: none;'>其他区域</div>
								<div class='ui-text'>
									<input type='text' rel='q16_4' id='tqq16_4' 
										class='OtherRadioText'/>
								</div>
								<br />
							</div>
						</div>
						<div class='errorMessage' id="a16"></div>
					</div>
					<div class='field ui-field-contain' id='div17' req='1' topic='17'
						minvalue='3' maxvalue='3' data-role='fieldcontain' type='11'>
						<div class='field-label'>
							17. 从购房区域选择来考虑，您认为以下因素哪个最重要？请排序最重要：------------ ； 其次：---------
							_；再次：--------- <span class='req'>*</span><span class='qtypetip'>&nbsp;[请选择<b>3</b>项并排序]
							</span>
						</div>
						<ul class='ui-controlgroup ui-listview'>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='1' /><span
							class='sortnum' id='q17_1' ></span><span>1.区域知名度</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='2'  /><span
							class='sortnum' id='q17_2'></span><span>2.区域生活熟悉程度</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='3'  /><span
							class='sortnum' id='q17_3'></span><span>3.区域升值发展潜力</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='4' /><span
							class='sortnum'  id='q17_4'></span><span>4.商业生活配套</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='5'  /><span
							class='sortnum' id='q17_5'></span><span>5.交通便利</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='6'  /><span
							class='sortnum' id='q17_6'></span><span>6.人文环境</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='7'  /><span
							class='sortnum' id='q17_7'></span><span>7.教育环境</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='8'  /><span
							class='sortnum' id='q17_8'></span><span>8.景观绿化环境</span></li>
					</ul>
						<div class='errorMessage' id="a17"></div>
					</div>
					<div class='field ui-field-contain' id='div18' req='1' topic='18'
						minvalue='3' maxvalue='8' data-role='fieldcontain' type='4'>
						<div class='field-label'>
							18. 您希望社区会所应该具备哪些功能？<span class='req'>*</span><span
								class='qtypetip'>&nbsp;[请选择<b>3</b>-<b>8</b>项]
							</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='1' id='q18_1' name='page.q18' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q18_1'>1.豪华酒店</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='2' id='q18_2' name='page.q18' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q18_2'>2.教育设施（学校、幼儿园等）</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='3' id='q18_3' name='page.q18' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q18_3'>3.休闲（美容美体、SPA、雪茄吧等）</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='4' id='q18_4' name='page.q18' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q18_4'>4.娱乐（KTV、洗浴等）</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='5' id='q18_5' name='page.q18' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q18_5'>5.餐厅</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='6' id='q18_6' name='page.q18' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q18_6'>6.运动健身（健身房、泳池等）</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='7' id='q18_7' name='page.q18' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q18_7'>7.儿童活动中心</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='8' id='q18_8' name='page.q18' rel='tqq18_8'
									style='display: none;' /><a class='jqcheck'
									href='javascript:;'></a></span>
								<div class='label' for='q18_8' style='border-bottom: none;'>8.其他</div>
								<div class='ui-text'>
									<input type='text' rel='q18_8' id='tqq18_8' 
										class='OtherText'/>
								</div>
								<br />
							</div>
						</div>
						<div class='errorMessage' id="a18"></div>
					</div>
					<div class='field ui-field-contain' id='div19' req='1' topic='19'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							19. 请问您对小区周边交通的要求？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q19_1' name='page.q19' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q19_1'>社区班车接送</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q19_2' name='page.q19' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q19_2'>步行5-10分钟可达公共交通车站</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q19_3' name='page.q19' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q19_3'>靠近高架快速干道</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q19_4' name='page.q19' rel='tqq19_4'
									style='display: none;' /><a class='jqradio'
									href='javascript:;'></a></span>
								<div class='label' for='q19_4' style='border-bottom: none;'>其他</div>
								<div class='ui-text'>
									<input type='text' rel='q19_4' id='tqq19_4' 
										class='OtherRadioText'/>
								</div>
								<br />
							</div>
						</div>
						<div class='errorMessage' id="a19"></div>
					</div>
					<div class='field ui-field-contain' id='div20' req='1' topic='20'
						minvalue='3' maxvalue='8' data-role='fieldcontain' type='4'>
						<div class='field-label'>
							20. 请问您对社区周边的居住及商业配套的要求？<span class='req'>*</span><span
								class='qtypetip'>&nbsp;[请选择<b>3</b>-<b>8</b>项]
							</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='1' id='q20_1' name='page.q20' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q20_1'>菜场及超市</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='2' id='q20_2' name='page.q20' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q20_2'>银行网点</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='3' id='q20_3' name='page.q20' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q20_3'>餐厅及咖啡厅</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='4' id='q20_4' name='page.q20' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q20_4'>大型购物商场</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='5' id='q20_5' name='page.q20' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q20_5'>医院</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='6' id='q20_6' name='page.q20' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q20_6'>学校</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='7' id='q20_7' name='page.q20' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q20_7'>酒店</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='8' id='q20_8' name='page.q20' rel='tqq20_8'
									style='display: none;' /><a class='jqcheck'
									href='javascript:;'></a></span>
								<div class='label' for='q20_8' style='border-bottom: none;'>其他</div>
								<div class='ui-text'>
									<input type='text' rel='q20_8' id='tqq20_8' 
										class='OtherText'>
								</div>
								<br />
							</div>
						</div>
						<div class='errorMessage' id="20"></div>
					</div>
					<div class='field ui-field-contain' id='div21' req='1' topic='21'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							21. 请问您希望居住的社区规模有多大：<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q21_1' name='page.q21' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_1'>50户以下</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q21_2' name='page.q21' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_2'>50-100户</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q21_3' name='page.q21' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_3'>100-300户</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q21_4' name='page.q21' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_4'>300-500户</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q21_5' name='page.q21' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_5'>500-800户</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q21_6' name='page.q21' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_6'>800户以上</div>
							</div>
						</div>
						<div class='errorMessage' id="a21"></div>
					</div>
					<div class='cutfield' id='divCut3' qtopic='22' topic='c3'>
						<div style='margin: 7px 12px;'>
							<span style="font-size: 16px; color: #8d3901;"><strong>客户产品需求分析</strong></span>
						</div>
					</div>
					<div class='field ui-field-contain' id='div22' req='1' topic='22'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							22. 考虑各种因素，您会选择哪种建筑类型的住宅？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q22_1' name='page.q22' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_1'>别墅（1-3层）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q22_2' name='page.q22' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_2'>多层（4-6层）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q22_3' name='page.q22' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_3'>小高层（7-9层）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q22_4' name='page.q22' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_4'>中高层（10-12层）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q22_5' name='page.q22' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_5'>高层（13层及以上）</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q22_6' name='page.q22' rel='tqq22_6'
									style='display: none;' /><a class='jqradio'
									href='javascript:;'></a></span>
								<div class='label' for='q22_6' style='border-bottom: none;'>其他</div>
								<div class='ui-text'>
									<input type='text' rel='q22_6' id='tqq22_6' 
										class='OtherRadioText'>
								</div>
								<br />
							</div>
						</div>
						<div class='errorMessage' id="a22"></div>
					</div>
					<div class='field ui-field-contain' id='div23' req='1' topic='23'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							23. 请问您准备购买的住宅户型是？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q23_1' name='page.q23' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_1'>两房两厅</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q23_2' name='page.q23' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_2'>三房两厅</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q23_3' name='page.q23' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_3'>三房两厅附保姆间</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q23_4' name='page.q23' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_4'>四房两厅</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q23_5' name='page.q23' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_5'>四房两厅附保姆间</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q23_6' name='page.q23' rel='tqq23_6'
									style='display: none;' /><a class='jqradio'
									href='javascript:;'></a></span>
								<div class='label' for='q23_6' style='border-bottom: none;'>其他</div>
								<div class='ui-text'>
									<input type='text' rel='q23_6' id='tqq23_6' 
										class='OtherRadioText'>
								</div>
								<br />
							</div>
						</div>
						<div class='errorMessage' id="a23"></div>
					</div>
					<div class='field ui-field-contain' id='div24' req='1' topic='24'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							24. 请问您准备购买的住宅总建筑面积是多少？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q24_1' name='page.q24' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_1'>90平米及以下</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q24_2' name='page.q24' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_2'>90-150平米</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q24_3' name='page.q24' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_3'>150-200平米</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q24_4' name='page.q24' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_4'>200-300平米</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q24_5' name='page.q24' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_5'>300-500平米</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q24_6' name='page.q24' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_6'>500平米及以上</div>
							</div>
						</div>
						<div class='errorMessage' id="a24"></div>
					</div>
					<div class='field ui-field-contain' id='div25' req='1' topic='25'
						minvalue='3' maxvalue='3' data-role='fieldcontain' type='11'>
						<div class='field-label'>
							25. 您认为下列功能空间哪个最必要？请排序第一 第二： 第三： <span class='req'>*</span><span
								class='qtypetip'>&nbsp;[请选择<b>3</b>项并排序]
							</span>
						</div>
						<ul class='ui-controlgroup ui-listview'>
							<li class='ui-li-static' style='cursor: pointer;'><input
								type='hidden' class='custom' value='1'/><span
									class='sortnum'  id='q25_1'></span><span>1.视听室</span></li>
							<li class='ui-li-static' style='cursor: pointer;'><input
								type='hidden' class='custom' value='2'/><span
									class='sortnum'  id='q25_2'></span><span>2.儿童活动室</span></li>
							<li class='ui-li-static' style='cursor: pointer;'><input
								type='hidden' class='custom' value='3'/><span
									class='sortnum'  id='q25_3'></span><span>3.书房或工作间</span></li>
							<li class='ui-li-static' style='cursor: pointer;'><input
								type='hidden' class='custom' value='4'/><span
									class='sortnum'  id='q25_4'></span><span>4.健身房</span></li>
							<li class='ui-li-static' style='cursor: pointer;'><input
								type='hidden' class='custom' value='5'/><span
									class='sortnum'  id='q25_5'></span><span>5.早餐厅</span></li>
							<li class='ui-li-static' style='cursor: pointer;'><input
								type='hidden' class='custom' value='6'/><span
									class='sortnum'  id='q25_6'></span><span>6.阳光房（日光浴/园艺）</span></li>
							<li class='ui-li-static' style='cursor: pointer;'><input
								type='hidden' class='custom' value='7'/><span
									class='sortnum'  id='q25_7'></span><span>7.洗衣房</span></li>
							<li class='ui-li-static' style='cursor: pointer;'><input
								type='hidden' class='custom' value='8'/><span
									class='sortnum'  id='q25_8'></span><span>8.家庭室（较为私密，不用于会客）</span></li>
							<li class='ui-li-static' style='cursor: pointer;'><input
								type='hidden' class='custom' value='9'/><span
									class='sortnum'  id='q25_9'></span><span>9.保姆间</span></li>
							<li class='ui-li-static' style='cursor: pointer;'><input
								type='hidden' class='custom' value='10'/><span
									class='sortnum'  id='q25_10'></span><span>10.储藏室</span></li>
						</ul>
						<div class='errorMessage' id="a25"></div>
					</div>
					<div class='field ui-field-contain' id='div26' req='1' topic='26'
						minvalue='2' maxvalue='2' data-role='fieldcontain' type='4'>
						<div class='field-label'>
							26. 如果有两个露台，您喜欢露台与哪两个房间相连？<span class='req'>*</span><span
								class='qtypetip'>&nbsp;[请选择<b>2</b>项]
							</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='1' id='q26_1' name='page.q26' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q26_1'>客厅带露台</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='2' id='q26_2' name='page.q26' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q26_2'>餐厅带露台</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='3' id='q26_3' name='page.q26' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q26_3'>主卧带露台</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='4' id='q26_4' name='page.q26' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q26_4'>书房带露台</div>
							</div>
						</div>
						<div class='errorMessage' id="a26"></div>
					</div>
					<div class='field ui-field-contain' id='div27' req='1' topic='27'
						minvalue='2' maxvalue='2' data-role='fieldcontain' type='4'>
						<div class='field-label'>
							27. 如果有两个房间朝向花园，请问您喜欢哪个两个房间朝向花园？<span class='req'>*</span><span
								class='qtypetip'>&nbsp;[请选择<b>2</b>项]
							</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='1' id='q27_1' name='page.q27' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q27_1'>客厅</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='2' id='q27_2' name='page.q27' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q27_2'>餐厅</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='3' id='q27_3' name='page.q27' style='display: none;' /><a
									class='jqcheck' href='javascript:;'></a></span>
								<div class='label' for='q27_3'>主卧</div>
							</div>
							<div class='ui-checkbox'>
								<span class='jqcheckwrapper'><input type='checkbox'
									value='4' id='q27_4' name='page.q27' rel='tqq27_4'
									style='display: none;' /><a class='jqcheck'
									href='javascript:;'></a></span>
								<div class='label' for='q27_4' style='border-bottom: none;'>其他</div>
								<div class='ui-text'>
									<input type='text' rel='q27_4' id='tqq27_4' 
										class='OtherText'>
								</div>
								<br />
							</div>
						</div>
						<div class='errorMessage' id="a27"></div>
					</div>
					<div class='field ui-field-contain' id='div28' req='1' topic='28'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							28. 请您从以下图片中挑选出您喜欢的立面图片<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<div class='label' for='q28_1'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/daa18dc9-d4c5-4516-a9c1-e6dd73a5759b.jpg'
										alt='' rel='q28_1' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='1' id='q28_1' name='page.q28'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>英式风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q28_2'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/3457a5c3-896b-4d81-9d88-263c1885cf36.gif'
										alt='' rel='q28_2' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='2' id='q28_2' name='page.q28'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>法式风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q28_3'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/9bd06ec7-d3f0-466c-a99d-10658855c17f.jpg'
										alt='' rel='q28_3' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='3' id='q28_3' name='page.q28'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>地中海风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q28_4'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/d1204c28-3cfe-407b-862e-59d84b236232.jpg'
										alt='' rel='q28_4' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='4' id='q28_4' name='page.q28'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>传统风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q28_5'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/ee35eec6-9aba-4af1-80e5-3c18ea458b6b.jpg'
										alt='' rel='q28_5' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='5' id='q28_5' name='page.q28'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>现代风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q28_6' name='page.q28' rel='tqq28_6'
									style='display: none;' /><a class='jqradio'
									href='javascript:;'></a></span>
								<div class='label' for='q28_6' style='border-bottom: none;'>其他</div>
								<div class='ui-text'>
									<input type='text' rel='q28_6' id='tqq28_6' 
										class='OtherRadioText'/>
								</div>
								<br />
							</div>
						</div>
						<div class='errorMessage' id="a28"></div>
					</div>
					<div class='field ui-field-contain' id='div29' req='1' topic='29'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							29. 请问您喜欢以下哪种景观风格？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<div class='label' for='q29_1'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/94c8ebcf-b1c3-4078-b2e0-7126a88afe5e.jpg'
										alt='' rel='q29_1' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='1' id='q29_1' name='page.q29'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>英式乡村风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q29_2'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/ac12acdb-2fe5-48b1-a036-5e87b63d91cc.jpg'
										alt='' rel='q29_2' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='2' id='q29_2' name='page.q29'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>法式古典风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q29_3'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/097ce735-0102-4432-ba6e-e1808a69e39a.jpg'
										alt='' rel='q29_3' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='3' id='q29_3' name='page.q29'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>地中海风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q29_4'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/200937f5-edd5-44df-ae63-2c9c96b0771a.jpg'
										alt='' rel='q29_4' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='4' id='q29_4' name='page.q29'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>现代风格</span>
									</div>
								</div>
							</div>
						</div>
						<div class='errorMessage' id="a29"></div>
					</div>
					<div class='field ui-field-contain' id='div30' req='1' topic='30'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							30. 请问您喜欢以下哪种室内设计风格？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<div class='label' for='q30_1'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/3a71e6af-13e5-4225-b0c9-5a03281b433e.jpg'
										alt='' rel='q30_1' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='1' id='q30_1' name='page.q30'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>地中海风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q30_2'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/64e229e6-634f-4f2d-a793-8562fd63a815.jpg'
										alt='' rel='q30_2' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='2' id='q30_2' name='page.q30'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>巴洛克风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q30_3'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/cb6be24b-cad8-4ffd-9889-7a096cd36dbc.jpg'
										alt='' rel='q30_3' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='3' id='q30_3' name='page.q30'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>古罗马风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q30_4'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/07fecd8a-3469-47f2-85f5-f06bc87981a3.jpg'
										alt='' rel='q30_4' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='4' id='q30_4' name='page.q30'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>伊斯兰风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q30_5'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/14af6886-3d4f-4ec5-81d2-d9f551370d30.jpg'
										alt='' rel='q30_5' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='5' id='q30_5' name='page.q30'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>古典主义风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q30_6'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/1c6a8fd9-4e86-4e5a-8742-8f6e278e8979.jpg'
										alt='' rel='q30_6' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='6' id='q30_6' name='page.q30'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>乡土田园风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q30_7'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/e6849eea-ee85-42a4-bc7c-43c02b35b838.jpg'
										alt='' rel='q30_7' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='7' id='q30_7' name='page.q30'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>现代风格</span>
									</div>
								</div>
							</div>
							<div class='ui-radio'>
								<div class='label' for='q30_8'>
									<img
										src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/d0b083da-0415-4981-b993-b7412444bd8d.jpg'
										alt='' rel='q30_8' />
									<div style='margin: 10px 0;'>
										<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
											type='radio' value='8' id='q30_8' name='page.q30'
											style='display: none;' /><a class='jqradio'
											href='javascript:;'></a></span><span>后现代构成风格</span>
									</div>
								</div>
							</div>
						</div>
						<div class='errorMessage' id="a30"></div>
					</div>
					<div class='field ui-field-contain' id='div31' req='1' topic='31'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							31. 请问您对物业管理公司有什么要求？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q31_1' name='page.q31' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q31_1'>国际知名物业公司</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q31_2' name='page.q31' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q31_2'>国内知名物业公司</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q31_3' name='page.q31' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q31_3'>对物业公司品牌没有太多要求</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q31_4' name='page.q31' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q31_4'>不需要物业公司</div>
							</div>
						</div>
						<div class='errorMessage' id="a31"></div>
					</div>
					<div class='field ui-field-contain' id='div32' req='1' topic='32'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							32. 请问您能够接受的物业管理费是？<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q32_1' name='page.q32' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q32_1'>0.3美元以下/㎡/月</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q32_2' name='page.q32' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q32_2'>0.3-0.4美元/㎡/月</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q32_3' name='page.q32' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q32_3'>0.4-0.5美元/㎡/月</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q32_4' name='page.q32' style='display: none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q32_4'>0.5美元以上/㎡/月</div>
							</div>
						</div>
						<div class='errorMessage' id="a32"></div>
					</div>
				</fieldset>
			</div>
			<input id="ctlNext" type="submit" class="button blue" value="提交"/>
		</div>
	</form>
	<script>
		function check(){
			var isok=false;
			if($("input[name='page.q1_1']").val()==""){
				isok=false;
			}else if($("input[name='page.q1_1']").val()!=""){
				isok=true;
			}
			if($("input[name='page.q1_2']").val()==""){
				isok=false;
			}else if($("input[name='page.q1_2']").val()!=""){
				isok=true;
			}
			if($("input[name='page.q1_3']").val()==""){
				isok=false;
			}else if($("input[name='page.q1_3']").val()!=""){
				isok=true;
			}
			if($('input:radio[name="page.q2"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q2"]:checked').val()!=null){
				isok=true;
			}
			if($('input:radio[name="page.q3"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q3"]:checked').val()!=null){
				isok=true;
			}
			if($('input:radio[name="page.q4"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q4"]:checked').val()!=null){
				isok=true;
			}
			if($('input:radio[name="page.q5"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q5"]:checked').val()!=null){
				isok=true;
			}
			if($('input:radio[name="page.q6"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q6"]:checked').val()!=null){
				isok=true;
			}
			if($('input:radio[name="page.q7"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q7"]:checked').val()!=null){
				isok=true;
			}
			if($('input:radio[name="page.q8"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q8"]:checked').val()!=null){
				isok=true;
			}
			var q9 =[]; 
			$('input[name="page.q9"]:checked').each(function(){ 
				q9.push($(this).val()); 
			}); 
			if(q9.length==0){
				isok=false;
			}else if(q9.length!=0){
				isok=true;
			}
			var q10 =[]; 
			$('input[name="page.q10"]:checked').each(function(){ 
				q10.push($(this).val()); 
			}); 
			if(q10.length==0){
				isok=false;
			}else if(q10.length!=0){
				isok=true;
			}
			
			var q11 =[]; 
			$('input[name="page.q11"]:checked').each(function(){ 
				q11.push($(this).val()); 
			}); 
			if(q11.length==0){
				isok=false;
			}else if(q11.length!=0){
				isok=true;
			}
			
			if($('input:radio[name="page.q12"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q12"]:checked').val()!=null){
				isok=true;
			}
			
			if($('input:radio[name="page.q13"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q13"]:checked').val()!=null){
				isok=true;
			}
			
			if($('input:radio[name="page.q14"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q14"]:checked').val()!=null){
				isok=true;
			}
			
			if($('input:radio[name="page.q15"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q15"]:checked').val()!=null){
				isok=true;
			}
			
			if($('input:radio[name="page.q16"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q16"]:checked').val()!=null){
				isok=true;
			}
			var q18 =[]; 
			$('input[name="page.q18"]:checked').each(function(){ 
				q18.push($(this).val()); 
			}); 
			if(q18.length==0){
				isok=false;
			}else if(q18.length!=0){
				isok=true;
			}
			
			if($('input:radio[name="page.q19"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q19"]:checked').val()!=null){
				isok=true;
			}
			
			var q20 =[]; 
			$('input[name="page.q20"]:checked').each(function(){ 
				q20.push($(this).val()); 
			}); 
			if(q20.length<3){
				isok=false;
			}else if(q20.length>=3){
				isok=true;
			}
			
			if($('input:radio[name="page.q21"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q21"]:checked').val()!=null){
				isok=true;
			}
			
			if($('input:radio[name="page.q22"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q22"]:checked').val()!=null){
				isok=true;
			}
			
			if($('input:radio[name="page.q23"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q23"]:checked').val()!=null){
				isok=true;
			}
			
			if($('input:radio[name="page.q24"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q24"]:checked').val()!=null){
				isok=true;
			}
			
			var q26 =[]; 
			$('input[name="page.q26"]:checked').each(function(){ 
				q26.push($(this).val()); 
			}); 
			if(q26.length<2){
				isok=false;
			}else if(q26.length>=2){
				isok=true;
			}
			
			var q27 =[]; 
			$('input[name="page.q27"]:checked').each(function(){ 
				q27.push($(this).val()); 
			}); 
			if(q27.length<2){
				isok=false;
			}else if(q27.length>=2){
				isok=true;
			}
			
			if($('input:radio[name="page.q28"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q28"]:checked').val()!=null){
				isok=true;
			}
			
			if($('input:radio[name="page.q29"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q29"]:checked').val()!=null){
				isok=true;
			}
			
			if($('input:radio[name="page.q30"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q30"]:checked').val()!=null){
				isok=true;
			}
			
			if($('input:radio[name="page.q31"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q31"]:checked').val()!=null){
				isok=true;
			}
			
			if($('input:radio[name="page.q32"]:checked').val()==null){
				isok=false;
			}else if($('input:radio[name="page.q32"]:checked').val()!=null){
				isok=true;
			}
			return isok;
		}
	</script>
	<script type="text/javascript">
		$("#div18").click(function(){
			var str="";
			for(var i=1;i<=8;i++){
				if($("#q17_"+i).html()!=""){
					str+=$("#q17_"+i).html()+", ";
				}
			}
			$("#page17").val(str);		
		});	
		$("#div26").click(function(){
			var str1="";
			for(var i=1;i<=8;i++){
				if($("#q25_"+i).html()!=""){
					str1+=$("#q25_"+i).html()+", ";
				}
			}
			$("#page25").val(str1);		
		});	
	</script>
	<a id='lnkCity' style="display: none;"></a>
	<a href="javascript:;" class="scrolltop" style="display: none;"></a>
	<script type="text/javascript">
		var activityId = 3797421;
		var isYdb = 0;
		var isPub = 0;
		var cqType = 1;
		var isDingDing = 0;
		var ddcorpid = "";
		var sojumpParm = '';
		var isKaoShi = 0;
		var lastTopic = 0;
		var Password = "";
		var guid = "";
		var udsid = 0;
		var langVer = 0;
		var cProvince = "";
		var cCity = "";
		var cIp = "";
		var divTip = document.getElementById("divTip");
		var displayPrevPage = "none";
		var inviteid = '';
		var access_token = "";
		var openid = "";
		var wxUserId = "";
		var isQQLogin = 0;
		var wxthird = 0;
		var hashb = 0;
		var sjUser = '';
		var outuser = '';
		var outsign = '';
		var sourceurl = '';
		var sourcename = "";
		var isSimple = '';
		var jiFenBao = 0;
		var cAlipayAccount = "";
		var isRunning = 1;
		var SJBack = '';
		var jiFen = "0";
		var ItemDicData = "";
		var rndnum = "3673853118.94444961";
		var totalPage = 1;
		var totalCut = 3;
		var cepingCandidate = "";
		var cpid = "";
		var needSaveJoin = 0;
		var isChuangGuan = 0;
		var maxOpTime = 0;
		var qBeginDate = "1410686339570";
		var randomMode = 0;
		var fisrtLoadTime = new Date().getTime();
		var notFinishTip = "http://passport.fanli.com/mark?c=nstzk4f7xc;6瓶莫斯利安酸奶";
		var isVip = 0;

		var needHBAlert = 0;
		if (needHBAlert) {
			if (needHBAlert == -1)
				alert("请注意：此问卷红" + "包已被之前参与的用户领取完");
			else if (needHBAlert == -2)
				alert("请注意：抽中红" + "包后答卷还需要发布者审核，通过审核后才能发放红" + "包！");
			else if (needHBAlert == -3)
				alert("提示：只有通过微信作答才能抽取红" + "包");
			else
				alert("请注意：每个参与者填完问卷后有1/" + needHBAlert + "的概率抽中红" + "包");
		}
		var needAwardAlert = 0;
		if (needAwardAlert) {
			if (needAwardAlert < 0)
				alert("请注意：此问卷奖品已被之前参与的用户领取完");
			else if (needAwardAlert == 999)
				alert("请注意：此问卷平均每天低于1人抽中奖品");
			else if (needAwardAlert % 1000 == 0)
				alert("请注意：此问卷平均每天会有" + (needAwardAlert / 1000) + "人抽中奖品");
			else
				alert("请注意：每个参与者填完问卷后有1/" + needAwardAlert + "的概率抽中奖品");
		}
	</script>
	<script type="text/javascript">
		var needAvoidCrack = 0;
		var tdCode = "tdCode";
		var imgCode = $("#imgCode")[0];
		var submit_text = $("#yucinput")[0];
		var tCode = $("#" + tdCode)[0];
		var hasTouPiao = 0;
	</script>
	<script src="https://s6.cnzz.com/js/fastclick.js?v=3" type="text/javascript"></script>
	<script>
		$(function() {
			if (window.FastClick)
				FastClick.attach(document.body);
		});
	</script>
	<div style="display: none;">
		<script src="https://s6.cnzz.com/z_stat.php?id=4478442&web_id=4478442"
			language="JavaScript"></script>
	</div>
	<script>
		$(function() {
			if (window._czc) {

				var evvtype = "免费版";
				if (isVip)
					evvtype = "企业版";
				_czc.push([ "_trackEvent", "移动端JQ", evvtype, cqType ]);
			}
		});
	</script>
 <div class="public box_2">
	      <div class="public box_2">
			  <div class="fl">
			    <h2 class="bt">桃源盛景房产资讯 | <span>INFORMATION</span></h2>
			    <div class="zixun">
			      <div class="img fl"><img alt="中国房产图片" src="<%=path %>/homeimage/554ad68e4229b.jpg" border="0"/></div>
			      <div class="txt fr">
			        <ul>
					  <c:forEach items="${articlelist}" var="a">
					  	<li>
				            <a title="${a.titleString}" href="<%=path%>/${a.contenturlString}">${a.abstractsString}</a>
				            <p>${a.contentString}</p>
			          	</li>
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
						function submitform(){
							var username=$.trim($("#username").val());
							var tel=$.trim($("#tel").val());
							var qq=$.trim($("#email").val());
							if(username!="您的称呼*"){
							    if(tel!="您的电话*"){
								    if(qq!="您的QQ*"){
									  $("#iiform").submit();
									}else{
									   alert("您的邮箱不能为空！");
									   return false;
									}
								}else{
								    alert("您的电话不能为空！");
									return false;
								}
							}else{
							    alert("您的称呼不能为空！");
								return false;
							}              
						}
					</script>
					<div class="form" style="margin:0px;">
					    <form action="/iinvestment/fildform.html" method="post" id="iiform">
					      <input type="hidden" name="fileids" id="fileids" />
					      <div class="bt"><img src="/Apps/Tpl/default/Public/images/c_bt.gif" border="0" alt="索取中国房产投资报告"/></div>
					      <div class="form_left">
					        <ul>
					          <li>
					            <input type="text" name="username" id="username"  class="s16-i1" value="您的称呼*" onfocus="if (value =='您的称呼*'){value =''}" onblur="if (value ==''){value='您的称呼*'}"/>
					          </li>
					          <li>
					            <input type="text" name="tel" id="tel"  class="s16-i2" value="您的手机*" onfocus="if (value =='您的手机*'){value =''}" onblur="if (value ==''){value='您的手机*'}"/>
					          </li>
					          <li>
					            <input type="text" name="email" id="email"  class="s16-i3" value="您的邮箱*" onfocus="if (value =='您的邮箱*'){value =''}" onblur="if (value ==''){value='您的邮箱*'}"/>
					          </li>
					        </ul>
					      </div>
					      <div class="form_right"> 注：我们承诺您的信息完全保密不对外公开，提交您的信息我们将最快时间为您提供投资报告书，让您更加了解海外置业详情。* </div>
					      <div class="clr"></div>
					      <div class="from_a"><a ref="nofollow" href="javascript:submitform();">5分钟内为我发送</a></div>
					    </form>
					</div>
				</div>
			</div>
	</div>
</div>
﻿<div class="bottom_box">
	  <div class="public bottom_main">
	    <div class="fl bottom_l">
	      <h2>桃源盛景</h2>
	      <h2>你值得信赖的中国<br/>房产权威机构</h2>
	    </div>
	    <div class="fl bottom_2">
	      <ul>
	        <li><img alt="桃源盛景客服微信二维码" src="<%=path %>/homeimage/w_1.jpg"/>
	          <p>专业顾问</p>
	        </li>
	        <li><img alt="桃源盛景微信公众号二维码" src="<%=path %>/homeimage/w_2.jpg"/>
	          <p>官方微信</p>
	        </li>
	      </ul>
	    </div>
	    <div class="fr">
	      <div class="bt_box">
	        <p style="padding-top:15px">联系电话</p>
	        <p>156-7976-0329</p>
	        <p>周一至周日 9：00-21：00</p>
	      </div>
	      <p style="padding-top:15px">联系邮箱</p>
	      <p>275300091@qq.com</p>
	    </div> 
	    <div class="clr"></div>
	  </div>
	</div>
	<div class="bottom">
		<div class="bottom_m">
		    <p id="bottom_menu" style="color:white">
			    <a href="<%=path %>/facemain/articlelist" style="color:white">首页</a>
			    <a href="<%=path %>/facemain/othersloupan?loupan.nameString=赣州" style="color:white">赣州房产</a>
			    <a href="<%=path%>/facemain/bestloupan" style="color:white">推荐楼盘</a>
			    <a rel="nofollow" href="<%=path %>/facemain/manyarticle" style="color:white">房产资讯</a>
			    <a href="<%=path %>/hui-jxs/aboutwe.jsp" style="color:white">关于我们</a>
			</p>
			<p class="bottom_address">地址:江西省赣州市章贡区</p>
			<p class="bottom_address">电话:176-0797-5702</p>
			<p id="bottom_menu" style="padding-top:18px;">
				<a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010102002571"  style="color:white">
					<img src="http://www.youinvest.cn/Apps/Tpl/default/Public/images/beian.png" />赣公网安备 31010102002571号
				</a>&nbsp;&nbsp;赣ICP备15015190号-1
			</p>
			<p style="text-align:center;  padding-top:18px;"/>
			版权所有：Copyright @ 2017 桃源盛景</p>
		</div>
		<div style="height:10px;"></div>
		<div class="livechat-girl animated"> <img class="girl" src="<%=path %>/images/en_3.png"/>
		  <div class="livechat-hint rd-notice-tooltip rd-notice-type-success rd-notice-position-left single-line show_hint">
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
  <div class="bottom_off_no"><a href="javasript:openbox();">︿</a></div>
  <div class="bottom_ul_li">
     <ul>
       <li id="b_home"><a rel="nofollow" href="javascript:openqrcode();">微信</a><img alt="桃源盛景客服微信二维码" id="qrcode_img" src="<%=path %>/homeimage/w_1.jpg"/></li>
       <li id="b_tel"><a href="Tel:156-7976-0329">电话</a></li>
       <li id="b_map"><a  rel="nofollow" href="http://api.map.baidu.com/marker?location=114.92,25.85&title=江西省赣州市章贡区&content=桃源盛景_中国房产网_中国房产平台_中国买房_中国房价服务&output=html">地图</a></li>
       <li id="b_about"><a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp">我们</a></li>
     </ul>
     <div class="float_clear"></div>
  </div>
</div>
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
		 window.open('http://wpa.qq.com/msgrd?v=3&uin=275300091&site=qq&menu=yes');
	});
})(jQuery);
</script>
</body>
</html>