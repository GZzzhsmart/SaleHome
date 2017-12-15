<%@page import="com.ht.pojo.TUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	TUser user = (TUser)session.getAttribute("user");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
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
			    <a href="/property/index/id/41/pid/2.html" style="color:white">学生公寓</a>
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

</body>
</html>