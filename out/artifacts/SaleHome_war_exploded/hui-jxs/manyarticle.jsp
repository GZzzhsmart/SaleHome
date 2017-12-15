<%@page import="com.ht.pojo.TUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	TUser user = (TUser)session.getAttribute("user");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>桃源盛景房产资讯（youinvest.cn）</title>
<meta http-equiv="Cache-Control" content="no-transform" /> 
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="MobileOptimized" content="width"/>
<meta name="HandheldFriendly" content="true"/>
<meta http-equiv="X-UA-Compatible" content="IE=10" />
<meta name="baidu-site-verification" content="ujOHpZF8J7" />
<link rel="shortcut icon" href="<%=path %>/images/icon/apple-touch-icon-72-precomposed.png" />
<link href="<%=path%>/homecss/style1.css" type="text/css" rel="stylesheet" />
<link href="<%=path %>/homecss/style-picture.css" type="text/css" rel="stylesheet" />
<link href="<%=path %>/homecss/media.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="<%=path %>/homejs/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=path %>/homejs/jquery.flexslider-min.js"></script>
<script src="<%=path %>/homejs/common.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=path %>/homejs/jquery.fancybox.js"></script>
<script src="<%=path %>/homejs/jPages.js"></script>
<link href="<%=path%>/css/css.css" rel="stylesheet" media="screen"/>
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
	  <a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_5" class="float_link" id="fl1"></a>
	  <a rel="nofollow" href="<%=path %>/hui-jxs/pinggu.jsp" class="float_link" id="fl2"></a>
	  <a rel="nofollow" href="https://www.dituwuyou.com/map/viewer?mid=oTYlizSY-dBPttvQRr0iag" class="float_link" id="fl3"></a>
	  <a href="<%=path %>/hui-jxs/question.jsp" class="float_link" id="fl4"></a>
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
    <h1><a href="<%=path%>/facemain/articlelist"><img alt="中国房产" src="<%=path %>/homeimage/553d93dd1024f.jpg"/></a></h1>
    <div class="top_right">
      <span><i class="i_con i_ico_1"></i><a rel="nofollow" href="<%=path %>/facemain/aboutwe.jsp#about_5" style="color:white">联系我们</a></span>
      <span><img alt="赣州房产桃源盛景客服:15679760329" src="<%=path %>/homeimage/tel.jpg" /></span> 
    </div>
    <a class="medis_show" id="menu_btn" href="javascript:openmenu();"><img alt="中国房产" src="<%=path %>/homeimage/menu.png" /></a>  
  </div>
  <div class="nav_box">
	  <div class="nav">
		<div class="nav_main">
		  <ul>
			<li><a rel="nofollow" href="<%=path %>/facemain/articlelist"><span>HOME</span> 首页</a></li>
			<li id="nav_1"><a class="nav_a" href="<%=path%>/facemain/bestloupan"><span>LONDON</span>中国房产 </a>
			     <div class="nav_child">
					  <a  href="<%=path%>/facemain/bestloupan">中国房产精选 </a>						  
					  <a  href="<%=path%>/facemain/bestloupan">中国房产一区 </a>						  
					  <a  href="<%=path%>/facemain/bestloupan">中国房产二区 </a>						  
					  <a  href="<%=path%>/facemain/bestloupan">中国三区-五区 </a>						  
					  <a  href="<%=path%>/facemain/bestloupan">中国外及别墅 </a>					
				</div>			  
			</li>
			<li id="nav_2"><a class="nav_a" href="<%=path%>/facemain/othersloupan?loupan.nameString=赣州"><span>MORE CITIES</span>其他城市 </a>
			     <div class="nav_child">
					  <a  href="<%=path%>/facemain/othersloupan?loupan.nameString=上海">上海</a>						  
					  <a  href="<%=path%>/facemain/othersloupan?loupan.nameString=广州">广州 </a>						  
					  <a  href="<%=path%>/facemain/othersloupan?loupan.nameString=南昌">南昌 </a>						  
					  <a  href="<%=path%>/facemain/othersloupan?loupan.nameString=深圳">深圳 </a>					
				</div>			  
			</li>
			<li id="nav_3"><a class="nav_a" href="<%=path%>/facemain/manyarticle"><span>INFO</span>房产投资 </a>
			     <div class="nav_child">
					  <a  href="<%=path%>/facemain/manyarticle">中国房产资讯 </a>						  
					  <a  href="<%=path%>/hui-jxs/question.jsp">买房常见问题 </a>						  
					  <a  href="<%=path%>/hui-jxs/buyhouseliucheng.jsp">中国买房流程 </a>	
					  <c:if test="<%=user!=null %>">
					  	<c:if test="<%=user.getUsertypeInt()==0 %>">
					  		<a  href="<%=path%>/page/addpage">购房调研测试 </a>					
					  	</c:if>
					  </c:if>				
				</div>			  
			</li>			
			<li id="nav_5"><a rel="nofollow" class="nav_a" href="<%=path%>/hui-jxs/aboutwe.jsp"><span>ABOUT  US</span>关于我们 </a>
			     <div class="nav_child">
					  <a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_0">桃源投资 </a>
					  <a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_1">发展渊源 </a>
					  <a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_2">桃源服务 </a>
					  <a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_4">桃源特色 </a>
					  <a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_5">联系我们 </a>
				</div>			  
			</li>
			<c:if test="<%=user==null %>">
				<li id="nav_4"><a rel="nofollow" class="nav_a" href="<%=path%>/hui-jxs/userlogin.jsp"><span>LOGIN</span>登录注册 </a>
				     <div class="nav_child">
						 <a rel="nofollow" href="<%=path%>/hui-jxs/userlogin.jsp">登录 </a>						 
						 <a rel="nofollow" href="<%=path%>/hui-jxs/userlogin.jsp">注册 </a>					
					 </div>			 
				</li>
			</c:if>
			<c:if test="<%=user!=null %>">
				<c:if test="<%=user.getUsertypeInt()==0%>">
					<li id="nav_4">
						<a rel="nofollow" class="nav_a" href="<%=path %>/lr/usermainface"><span>USER</span><%=user.getNameString() %></a>
						<div class="nav_child">
						 	<a rel="nofollow" href="<%=path %>/lr/usermainface">个人中心</a>						 
						 	<a rel="nofollow" href="<%=path%>/lr/exit">退出</a>					
					 	</div>		
					</li>
				</c:if>
				<c:if test="<%=user.getUsertypeInt()==1%>">
					<li id="nav_4">
						<a rel="nofollow" class="nav_a" href="<%=path %>/lr/jxsmainface"><span>TAGNECY</span><%=user.getNameString() %></a>
						<div class="nav_child">
						 	<a rel="nofollow" href="<%=path %>/lr/jxsmainface">个人中心</a>						 
						 	<a rel="nofollow" href="<%=path%>/lr/exit">退出</a>					
					 	</div>
					</li>
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
  <div class="ny_banner"><img src="<%=path %>/homeimage/ny_banner.jpg" border="0" alt="中国房产资讯"/></div>
  <div class="content" style="width:1011px">
    <div class="tab">
      <div class="tab_box">
          <ul class="home_bt">
			  <li id="child_22">
			  	<a href="<%=path%>/facemain/manyarticle">中国房产资讯</a>
			  </li>
			  <li id="child_23">
			  	<c:if test="<%=user==null %>">
			  		<a href="<%=path%>/facemain/articlelist" onclick="alert('你还未登录，请先登录');">购房调研</a>
			  	</c:if>
			  	<c:if test="<%=user!=null %>">
			  		<a href="<%=path%>/page/addpage" >购房调研</a>
			  	</c:if>
			  </li>
			  <li id="child_24">
			  	<a href="<%=path%>/hui-jxs/question.jsp">买房常见问题</a>
			  </li>
			  <li id="child_25">
			  	<a href="<%=path%>/facemain/buyhouseliucheng">中国买房流程</a>
			  </li>
		  </ul>
		  <ul class="news_main" >
			  <li class="tuijian">
				<div class="img"><a href="<%=path%>/facemain/manyarticle"><img src="<%=path %>/homeimage/youinvest.jpg" border="0" alt="中国房产资讯"/></a></div>
				<div class="txt">
				  <dl>
					<dt>中国房产贷款额度下发主要看哪些？</dt>
					<dd class="data">2017.08.11</dd>
					<dd>我们前前后后写过太多文章和大家讲了不少关于贷款的问题，怎么贷款，贷款流程，利率如何。
						关于贷款额度的问题我们也大致有提到过，但是没有比较深入的分析，那么今天我们就来跟大家聊聊怎么去大致估算自己能贷到</dd>
					<dd class="n_more"><a href="/iinvestment/content/id/22/pid/3/newsid/762.html">查看更多<i class="i_con i_ico_7"></i></a></dd>
				  </dl>
				</div>
				<div class="clr"></div>
			  </li>
			  <c:forEach items="${articlelist}" var="a">
				<li>
					<div class="news_left">
					  <p>
					  	<a rel="nofollow" href="javascript:void();">${a.createdTime}</a> <br/> <br/>
					  	<span>热门</span> 
					  </p>
					</div>
					<div class="news_right">
					  <h3>
						  <a href="<%=path%>/${a.contenturlString}">
						  	<i class="i_con i_ico_8"></i>${a.titleString}
						  </a>
					  </h3>
					  <p>${a.contentString}</p>
					</div>
					<div id="h3_more">
						<a href="<%=path%>/${a.contenturlString}" target="_blank">查看详情 ></a>
					</div>
					<div class="clr"></div>
				</li>		
			</c:forEach>	
		</ul>
		<div class="clr"></div>
		<div class="page">
			<span>共${pager.pagebarsum}条记录${pager.currentpage}/${pager.sumpage} 页</span>    
			<a href='<%=path%>/facemain/manyarticle?currentpage=${pager.currentpage}&handle=uppage'>上一页</a>
			<a class='current' href="<%=path%>/facemain/manyarticle?currentpage=1&handle=firstpage">1</a> 
			<a href='<%=path%>/facemain/manyarticle?currentpage=${pager.currentpage}&handle=downpage'>下一页</a> 
			<a href='<%=path%>/facemain/manyarticle?currentpage=${pager.sumpage}&handle=firstpage' >最后一页</a>
		</div>      
		</div>
    </div>
  </div>
</div>
    <div class="public box_2">
	      <div class="public box_2">
			  <div class="fl">
			    <h2 class="bt">桃源盛景房产资讯 | <span>INFORMATION</span></h2>
			    <div class="zixun">
			      <div class="img fl"><img alt="中国房产图片" src="<%=path %>/homeimage/554ad68e4229b.jpg" border="0"/></div>
			      <div class="txt fr">
			        <ul>
					  <c:forEach items="${articlelist}" var="a" begin="1" end="2" step="1">
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
	<div style="height:60px"></div>
﻿<div class="bottom_box">
	  <div class="public bottom_main">
	    <div class="fl bottom_l">
	      <h2>桃源投资</h2>
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
       <li id="b_about"><a rel="nofollow" href="<%=path%>/facemain/aboutwe.jsp">我们</a></li>
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