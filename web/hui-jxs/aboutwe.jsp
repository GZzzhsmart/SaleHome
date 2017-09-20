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
<title>桃源盛景投资_中国房产网_中国房产平台_中国买房_中国房价服务</title>
<meta http-equiv="Cache-Control" content="no-transform" /> 
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="applicable-device" content="pc,mobile"/>
<meta name="MobileOptimized" content="width"/>
<meta name="HandheldFriendly" content="true"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta http-equiv="X-UA-Compatible" content="IE=10" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
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
  /* when document is ready */
  $(function() { 

    /* initiate plugin */
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
	  <a rel="nofollow" href="https://www.dituwuyou.com/map/viewer?mid=oTYlizSY-dBPttvQRr0iag" id="fl3"></a>
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
      <span><i class="i_con i_ico_1"></i><a rel="nofollow" href="<%=path%>/hui-jxs/aboutwe.jsp#about_5"  style="color:white">联系我们</a></span>
      <span><img alt="桃源盛景客服:15679760329" src="<%=path %>/homeimage/tel.jpg" /></span> 
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
<input type="hidden" id="pageid" value="6" />
<input type="hidden" id="menuid" value="5" />
<div class="main">
     <div class="w_lesse_1" id="about_0" style=" background:url(<%=path%>/homeimage/553da7233e54f.jpg) 50% 40px fixed no-repeat; width:100%; padding-top:433px">
		<div class="w_lease_bg">
		  <div class="about_box">
			<h1 class="about_bt">桃源盛景<br/><span>You Investment</span></h1>
			<div class="cat_content">
			   <p style="margin-top:33px;">桃源盛景是一个专注于中国房产置业投资咨询的平台，为客户提供全方位的私家贴心服务。公司根据客户需求，提供详尽最新的中国房产信息，从咨询，区位锁定，楼盘推荐，中国实地看房以及后期的租赁打理及楼市变化情况提供全方位的终身服务，以及相关的增值服务如子女留学协助等。桃源拥有提供全方位中国房产置业投资相关服务的能力，对中国房产市场有深入的研究，并与中国多位资深律师合作、熟悉国际汇款流程等。</p><h2 title="桃源盛景">专注于中国房产置业投资咨询，为您提供全方位的私家贴心服务</h2><p style="padding-left:37px;"><img src="<%=path%>/homeimage/14301045069105.gif" title="桃源盛景" /><br /></p>			   <div class="clr"></div>
			</div>
			<div class="message_icon">
			  <div class="about-sign">
				<div class="sign-top"></div>
				<div class="sign-bot"></div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	  <div class="w_lesse_1" id="about_1" style=" background:url(<%=path%>/homeimage/553daa17395ed.jpg) 50% 45px fixed no-repeat; width:100%; padding-top:433px">
		<div class="w_lease_bg">
		  <div class="about_box">
			<div class="fl about_l">
			  <ul>
				<li><img src="<%=path%>/homeimage/a_2.jpg"/></li>
				<li style="margin-top:33px;"><img src="<%=path%>/homeimage/a_3.jpg"/></li>
			  </ul>
			</div>
			<div class="fr about_r">
			  <h1 class="about_bt">发展渊源<br/><span>You Investment</span></h1>
			  <div class="cat_content">
				   <p style="margin-top:33px;">桃源盛景源于赣州的私人置业办公室，是由在中国从事多年二手别墅评估、改造、拍卖的团队创立，由于在房屋评估方面拥有几十年深厚的经验，办公室由开始受熟人之托在中国寻找并购买客户所需的房产而积累了良好的口碑，形成了源源不断的客户而成立了私人办公室。由于在房产领域积累了丰富的经验，办公室决定把优质的服务带到赣州本土，并成立了上海桃源盛景。</p><p style="margin-top:43px;">中国楼市的稳定以及高回报率是桃源提供服务的基础，以丰富国内高净值人士的投资渠道，和提供国际物业避险能力以及留学的家庭的以租养学和真正的以租养老。</p>				   <div class="clr"></div>
			  </div>
			</div>
			<div class="clr"></div>
		  </div>
		  <div class="message_icon">
			<div class="about-sign">
			  <div class="sign-top"></div>
			  <div class="sign-bot"></div>
			</div>
		  </div>
		</div>
	  </div>
	  <div class="w_lesse_1" id="about_2" style=" background:url(<%=path%>/homeimage/553dab3284706.jpg) 50% 45px fixed no-repeat; width:100%; padding-top:433px">
		<div class="w_lease_bg">
		  <div class="about_box">
			<div class="fl about_left">
			  <h1 class="about_bt">桃源服务<br/>
				<span>You SERVICE</span></h1>
			  <i><img src="<%=path%>/homeimage/a_4.gif" border="0" alt=""/></i>
			  <div class="clr"></div>
			  <div class="cat_content">
				   <h3>赣州办公室</h3><p style="margin-top:30px;">主要服务于本地客户的置业咨询和协助汇款贷款等相关事项，并定期举行活动介绍中国的投资置业信息，以及提供桃源客户的终身投资服务，定期发布新的投资建议和报告已置房产的最新信息。</p>
				   <h3> 冰岛办公室</h3><p style="margin-top:30px;">可服务于海外客户并收集时事的中国房产及经济信息为客户提供最前线和精准的市场报告，以及服务于中国客户的中国看房旅游接待。赣州办公室可以进行客户置业后的物业完善和租赁打理等服务，并随时为投资客户提供当区的楼市变化情况。</p>				   <div class="clr"></div>
			  </div>
			</div>
			<div class="fl about_right"> <img src="<%=path%>/homeimage/a_5.png"/> </div>
			<div class="clr"></div>
		  </div>
		  <div class="message_icon">
			<div class="about-sign">
			  <div class="sign-top"></div>
			  <div class="sign-bot"></div>
			</div>
		  </div>
		</div>
	  </div>
	  <div class="w_lesse_1" id="about_4" style=" background:url(<%=path%>/homeimage/553dab873d391.jpg) 50% 45px fixed no-repeat; width:100%; padding-top:433px">
		<div class="w_lease_bg">
		  <div class="about_box">
			<div class="about_top">
			  <p>桃源盛景是一家年轻并带有活力的青年开发，项目组长为：陈飞龙。我们的团队年轻朝气，努力奋进，专注于打造服务的每一个小细节和24小时全天候呼叫服务。</p>
			  <h1 class="about_bt">桃源特色<br/>
				<span>You CHARACTERISTIC</span><br/>
				<img src="<%=path%>/homeimage/x.gif" style="margin-top:15px;"/></h1>
			  <div class="cat_content">
				   <p><img src="<%=path%>/homeimage/14301052265150.jpg" title="桃源盛景" /><br /></p><h2>桃源为您提供更多</h2><p style="text-indent:0;padding-top:39px;">桃源盛景不仅从事新楼盘的投资服务，也带来了中国传统的本土置业二手房交易。根据客户置业的实际需求和情况，制定最适合的方案并全程精心助您足不出国完成置业梦想。我们的楼盘覆盖赣州一区、二区、三区、四区以及广大赣州周边城市，和中国主要城市曼侧斯特、伯明翰、利物浦等，特别是大学附近的热门楼盘拥有丰富投资经验。并可根据客户实际需求全中搜索及锁定，帮助客户咨询国内无代理的楼盘及二手别墅交易。</p><p style="text-indent:0;padding-top:49px;">http://192.168.43.14:8888是桃源盛景旗下的专业中国房产服务网站，客户可以在上面找到中国经济及楼市的最新信息，和最全面的楼盘产品包括豪华公寓、学生公寓、精品住宅以及二手别墅等。是桃源与客户最便利的中国楼市互动窗口。</p>				   <div class="clr"></div>
			  </div>
		    </div>
		  </div>
		</div>
	  </div>
	  <div class="w_lesse_1" id="about_5">
		<div class="w_lease_bg">
		  <div class="about_box">
			<div class="about_top">
			  <p></p>
			  <h1 class="about_bt">联系我们<br/>
				<span>CONTACT US</span><br/>
				<img src="<%=path%>/homeimage/x.gif" style="margin-top:15px;"/></h1>
		     </div>
			  <div class="cat_content">
				   <p style="text-align:center;"><img src="<%=path%>/homeimage/14315938498244.jpg" title="上海桃源盛景联系方式" alt="上海桃源盛景联系方式" /><br /></p>				   <div class="clr"></div>
			  </div>
		  </div>
		</div>
	  </div>
<div class="bottom_box">
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
			    <a href="<%=path%>/facemain/bestloupan" style="color:white">推荐楼盘</a>			    <a rel="nofollow" href="<%=path %>/facemain/manyarticle" style="color:white">房产资讯</a>
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