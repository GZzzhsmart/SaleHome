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
<title>${house.nameString}户型详细信息</title>
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<meta http-equiv="X-UA-Compatible" content="IE=10" />
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
<link rel="stylesheet" href="<%=path%>/css/main1.css" />
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/layer/2.4/layer.js"></script>
<link rel="stylesheet" href="<%=path%>/css/main1119.css" />
<style type="text/css">
.amap-marker .marker-route {
	position: absolute;
	width: 40px;
	height: 44px;
	color: #e90000;
	background:
		url(http://webapi.amap.com/theme/v1.3/images/newpc/poi-1.png)
		no-repeat;
	cursor: pointer;
}

.amap-marker .marker-marker-bus-from {
	background-position: -334px -180px;
}
</style>
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
		  	<a href="<%=path %>/page/addpage" class="float_link" onclick="alert('你未登录，请先 登录！');" id="fl5"></a>
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
					href="<%=path %>/hui-jxs/aboutwe.jsp#about_5" style="color: white">联系我们</a></span>
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
							href="<%=path%>/facemain/besthouse"><span>LONDON</span>中国房产 </a>
							<div class="nav_child">
								<a href="<%=path%>/facemain/besthouse">中国房产精选 </a> <a
									href="<%=path%>/facemain/besthouse">中国房产一区 </a> <a
									href="<%=path%>/facemain/besthouse">中国房产二区 </a> <a
									href="<%=path%>/facemain/besthouse">中国三区-五区 </a> <a
									href="<%=path%>/facemain/besthouse">中国外及别墅 </a>
							</div></li>
						<li id="nav_2"><a class="nav_a" href="<%=path%>/facemain/othersloupan?loupan.nameString=赣州"><span>MORE CITIES</span>其他城市 </a>
						     <div class="nav_child">
								  <a  href="<%=path%>/facemain/othersloupan?loupan.nameString=上海">上海</a>						  
								  <a  href="<%=path%>/facemain/othersloupan?loupan.nameString=广州">广州 </a>						  
								  <a  href="<%=path%>/facemain/othersloupan?loupan.nameString=南昌">南昌 </a>						  
								  <a  href="<%=path%>/facemain/othersloupan?loupan.nameString=深圳">深圳 </a>					
							</div>			  
						</li>
						<li id="nav_3"><a class="nav_a"
							href="<%=path%>/facemain/manyarticle"><span>INFO</span>房产投资 </a>
							<div class="nav_child">
								<a href="<%=path%>/facemain/manyarticle">中国房产资讯 </a> <a
									href="<%=path%>/hui-jxs/question.jsp">买房常见问题 </a> <a
									href="<%=path%>/hui-jxs/buyhouseliucheng.jsp">中国买房流程 </a>
									<c:if test="<%=user!=null %>">
								  	<a  href="<%=path%>/page/addpage">购房调研测试 </a>					
								  </c:if>
							</div>
						</li>
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
					户型搜索 | <span>REAL ESTATE QUERY</span>
				</p>
				<form action="<%=path %>/facemain/findloupan" method="post"
					id="proform">
					<input type="hidden" name="catid" value="" />
					<div class="search">
						<input name="loupan.nameString" type="text"
							onfocus="if (value =='请输入关键词（城市名、地名）'){value =''}"
							onblur="if (value ==''){value='请输入关键词（城市名、地名）'}"
							value="请输入关键词（城市名、地名）" maxlength="58" /> <a
							href="javascript:subsearch();"><img alt="赣州房产搜索"
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
		<div class="content">
			<div class="homeshow">
				<ul class="home_bt">
					<li id="tab41"><a
						href="<%=path%>/facemain/othersloupan?loupan.nameString=赣州">赣州房产</a></li>
					<li id="tab42"><a href="<%=path%>/facemain/besthouse">更多中国房产</a></li>
					<li id="tab49"><a href="<%=path%>/facemain/besthouse">商业地产投资</a></li>
					<li id="tab49"><a
						href="<%=path%>/facemain/othersloupan?loupan.nameString=上海">上海房产</a></li>
				</ul>
				<div class="clr"></div>
				<div class="home_box">
					<div class="home_left ">
						<div class="yx_gb">
							<div class="yxjs">
								<span><img id="ProImg" alt="${house.nameString}"
									src="<%=path %>/${house.logoString}" /></span>
								<div class="yx_txt">
									<ul class="yx_lb">
										<li id=''><a href='javascript:void();'><img
												src='<%=path%>/homeimage/14950104943658.jpg' /></a></li>
										<li id=''><a href='javascript:void();'><img
												src='<%=path%>/homeimage/14950104943334.jpg' /></a></li>
										<li id=''><a href='javascript:void();'><img
												src='<%=path%>/homeimage/14950104948167.jpg ' /></a></li>
										<li id=''><a href='javascript:void();'><img
												src='<%=path%>/homeimage/14950108725257.jpg' /></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clr"></div>
					</div>
					<div class="home_right">
						<input type="hidden"  id="jindu" value="${house.tbuilding.buildings.longitudeDouble}" />
						<input type="hidden" id="weidu" value="${house.tbuilding.buildings.latitudeDouble}" />
						<input type="hidden" id="jxsid" value="${house.tbuilding.buildings.jxsidString}" />
						<div class="home_l">
							<h1>${house.nameString}</h1>
							<dl>
								<dt>
									<br />
								</dt>
								<dd>
									国家：<span>中国</span>
								</dd>
								<dd>
									名称：<span>${house.nameString}</span>
								</dd>
								<dd>
									地区：<span>${house.tbuilding.buildings.addressString}</span>
								</dd>
								<dd>
									总面积：<span>${house.areaDouble}平米</span>
								</dd>
								<dd>
									售价：<span>${house.unitPriceDouble}平米</span>
								</dd>
								<dd>
									产权：<span>60年</span>
								</dd>
								<dd>
									销售状态：
									<c:if test="${house.statusInt==0}">
										<span>已售罄</span>
									</c:if>
									<c:if test="${house.statusInt!=0}">
										<span>可售</span>
									</c:if>
								</dd>
								<dd>
									初步报价：<span>￥${house.areaDouble*house.unitPriceDouble}</span>
								</dd>
								<dd>
									建成时间：<span>${house.createdTime}</span>
								</dd>
							</dl>
						</div>
						<script type="text/javascript">
							$(function(){
								var  money = "${(house.areaDouble*house.unitPriceDouble/10000)*0.4}";
								$("#fisrtmoney").text("首付：￥"+parseInt(money)+"万");
							});
						</script>
						<div class="home_r">
							<h2>￥${house.areaDouble*house.unitPriceDouble/10000}万</h2>
							<h2 id="fisrtmoney"></h2>
							<h2>首付约40%</h2>
							<ul>
								<li><a rel="nofollow" href="<%=path%>/hui-jxs/pinggu.jsp">免费评估<i class="i_con i_ico_4"></i></a></li>
								<li>
									<a rel="nofollow" href="<%=path%>/hui-jxs/calc1.jsp">房贷计算<i class="i_con i_ico_3"></i></a>
								</li>
								<li><a rel="nofollow"
									href="<%=path%>/hui-jxs/aboutwe.jsp#about_5">预约咨询<i
										class="i_con i_ico_5"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="clr"></div>
				</div>
				<div class="tel">
					<a rel="nofollow" href="#pro_form"> <img
						src="<%=path%>/homeimage/h_2.jpg" border="0" alt="中国伦敦房产" />
					</a>
				</div>
				<div class="show_main">
					<div id="pro_fix">
						<div class="scrollBar">
							<div class="show_nav">
								<ul>
									<li><a href="#xmjc">项目介绍</a></li>
									<li><a href="#hxzs">户型价格</a></li>
									<li><a href="#fyjs">房间图片</a></li>
									<li><a href="#zbxq">周边详情</a></li>
									<li><a href="#dlwz">地理位置</a></li>
									<li><a href="#gmlc">购买流程</a></li>
									<li><a href="#tjlp">推荐户型</a></li>
								</ul>
								<div class="clr"></div>
							</div>
						</div>
					</div>
					<div class="show_box_1" id="xmjc">
						<p class="show_bt">
							项目介绍 | <span>ABOUT THE PROJECT</span>
						</p>
						<div class="show_box_m">
							<p>
								<strong>投资亮点</strong>利物浦为中国最高速发展城市之一<br />房价于过去5年上升40%，潜力巨大<br />人口于过去10年上升5.5%，成为房地产升值的动力<br />
								<em>8.5%年净租金回报，包租5年！价格从£62,950起,包家具</em>
							</p>
							<p>利物浦是英格兰西北部的一个著名港口城市，也是中国著名的第二大商港。利物浦属于海洋性气候，全年的一般温度在10-32摄氏度之间，适合居住。利物浦租房人口不断上涨，某些黄金地段出现住房短缺，强劲需求支撑着显著回报，这时投资利物浦房产市场具有非常好的前景。</p>
							<p>利物浦是中国著名商业中心，也是第二大商港，输出居中国首位。输入仅次于伦敦。中国各个区域的数据显示自2001年来，中国市区租房人口平均上涨了77%，其中利物浦上涨了79%，有数据可以看出，利物浦房产投资的前景，一些黄金地段的公寓出现严重短缺，这是投资房产市场的绝佳机会。而最佳的资产类别，非留学生住房莫属。</p>
							<p>
								<strong>位置</strong>安如学生公寓步行至利物浦大学只需几分钟。同时距离皇家大学医院、利物浦约翰摩尔斯大学，利物浦希望大学和利物浦表演艺术学院（LIPA）都很近。
							</p>
							<p>
								到利物浦大学----步行10分钟，开车4分钟<br />到利物浦约翰摩尔斯大学—步行14分钟，开车4分钟。<br />到利物浦城市学院——步行21分钟，公交17分钟<br />到利物浦表演艺术学院——步行21分钟，开车10分钟<br />利物浦霍普大学——公交26分钟<br />到利物浦世界博物馆——步行13分钟，公交9分钟<br />到皇家大学医院-------步行7分钟，开车3分钟<br />到利物浦热带医学院——步行6分钟，开车3分钟<br />到利物浦市中心图书馆——步行14分钟，公交8分钟<br />到圣约翰购物中心——步行18分钟，公交11分钟<br />到市中心莱姆街火车站——步行13分钟，公交8分钟
							</p>
							<p>
								<img src="<%=path%>/homeimage/1499312866228.jpg"
									alt="安如学生公寓投资分析" /><br />
							</p>
							<p>
								<strong>付款流程</strong>①定金￥20% ；3日内合同交换，支付房款50％；交房时付尾款50％。<br />②定金￥20%
								；3日内合同交换，支付房款80％；交房时付尾款20％。交房前的款项有3%利息。
							</p>
						</div>
						<div class="clr"></div>
					</div>
					<div class="show_box_1" id="hxzs">
						<p class="show_bt">
							房号价格 | <span>LAYOUT</span>
						</p>
						<table cellpadding="0" cellspacing="0" border="0" width="100%"
							class="main_table">
							<tbody>
								<tr>
									<th style="text-align: center">图片</th>
									<th style="text-align: center">名称</th>
									<th style="text-align: center">面积</th>
									<th style="text-align: center">单价</th>
									<th style="text-align: center">总价</th>
								</tr>
								<c:forEach items="${roomlist}" var="h">
									<tr>
										<td>
											<a class='fancybox' data-fancybox-group='display' title='812' href='<%=path %>/${h.huxing.logoString}'  style='width:242px; height:261px;'>
											 	<img src='<%=path %>/${h.huxing.logoString}' style='width:42px; height:61px;'/>
						                    </a>
					                    </td>
										<td>${h.nameString}</td>
										<td>${h.huxing.areaDouble}㎡</td>
										<td>${h.huxing.unitPriceDouble}/(平米)</td>
										<td>￥${h.huxing.unitPriceDouble*h.huxing.areaDouble}</td>
										<td></td>
								  </tr>
								</c:forEach>
								<c:if test="${requestScope.num==0}">
									<tr>
										<div id="stab1"  class="tab_box_one" >
											<div class="nocont">暂无图片！</div>				
								  		</div>
									</tr>
								</c:if>
								<c:if test="${requestScope.num!=0}">
									<tr>
										<th style="text-align: center" colspan="5"><a
											href="<%=path%>/facemain/houselist?id=${house.tbuilding.buildings.idString}"
											style="font-size: 18px">查看更多户型</a></th>
									</tr>
									
								</c:if>
				
							</tbody>
						</table>
					</div>
					<div class="show_box_1" id="fyjs">
						<h3 class="show_bt">
							房间图片 | <span>DESCRIPTION</span>
						</h3>
						<div class="show_h">
							<p></p>
							<ul class="show_m">
								<li><a class='fancybox' data-fancybox-group='display'
									title='安如学生公寓' href='<%=path%>/homeimage/591c0ea579f1b.jpg'
									style='width: 42px; height: 61px;'> <img
										src='<%=path%>/homeimage/591c0ea579f1b.jpg' />
										<div class='li_bj'>
											<img src='<%=path%>/homeimage/li_1.png' />
										</div>
								</a></li>
								<li><a class='fancybox' data-fancybox-group='display'
									title='安如学生公寓' href='<%=path%>/homeimage/591c0eaec945a.jpg'
									style='width: 42px; height: 61px;'> <img
										src='<%=path%>/homeimage/591c0eaec945a.jpg' />
										<div class='li_bj'>
											<img src='<%=path%>/homeimage/li_1.png' />
										</div>
								</a></li>
								<li><a class='fancybox' data-fancybox-group='display'
									title='安如学生公寓浴室' href='<%=path%>/homeimage/591c0ecc59a7c.jpg'
									style='width: 42px; height: 61px;'> <img
										src='<%=path%>/homeimage/591c0ecc59a7c.jpg' />
										<div class='li_bj'>
											<img src='<%=path%>/homeimage/li_1.png' />
										</div>
								</a></li>
								<li><a class='fancybox' data-fancybox-group='display'
									title='安如学生公寓健身房' href='<%=path%>/homeimage/591c0edea0ab7.jpg'
									style='width: 42px; height: 61px;'> <img
										src='<%=path%>/homeimage/591c0edea0ab7.jpg' />
										<div class='li_bj'>
											<img src='<%=path%>/homeimage/li_1.png' />
										</div>
								</a></li>
							</ul>
							<div class="clr"></div>
						</div>
					</div>
					<div class="show_box_1" id="zbxq">
						<p class="show_bt">
							周边设施 | <span>SURROUNDINGS</span>
						</p>
						<div class="jt_box">
							<ul class="jt_L">
							</ul>
							<div class="jt_main_h">
								<ul style="left: 0px;">
									<li><a class='fancybox' data-fancybox-group='display'
										title='阿尔伯特码头' href='<%=path%>/homeimage/5565655a60878.jpg'>
											<img src='<%=path%>/homeimage/5565655a60878.jpg' border='0'/>
											<div class='li_bg'>
												<img src='<%=path%>/homeimage/q_l.png' />
											</div>
									</a>
										<p class='p_bg'>
											<b>阿尔伯特码头</b>
										</p>
										<p></p></li>
									<li><a class='fancybox' data-fancybox-group='display'
										title='利物浦一号购物中心'
										href='<%=path%>/homeimage/556565699e8b7.jpg'> <img
											src='<%=path%>/homeimage/556565699e8b7.jpg' border='0'/>
											<div class='li_bg'>
												<img src='<%=path%>/homeimage/q_l.png' />
											</div>
									</a>
										<p class='p_bg'>
											<b>利物浦一号购物中心</b>
										</p>
										<p></p></li>
									<li><a class='fancybox' data-fancybox-group='display'
										title='利物浦中央车站' href='<%=path%>/homeimage/55656576d01c0.jpg'>
											<img src='<%=path%>/homeimage/55656576d01c0.jpg' border='0'/>
											<div class='li_bg'>
												<img src='<%=path%>/homeimage/q_l.png' />
											</div>
									</a>
										<p class='p_bg'>
											<b>利物浦中央车站</b>
										</p>
										<p></p></li>
									<li><a class='fancybox' data-fancybox-group='display'
										title='echo arena 演出会场'
										href='<%=path%>/homeimage/55b086f17ccf8.jpg'> <img
											src='<%=path%>/homeimage/55b086f17ccf8.jpg' border='0'/>
											<div class='li_bg'>
												<img src='<%=path%>/homeimage/q_l.png' />
											</div>
									</a>
										<p class='p_bg'>
											<b>echo arena 演出会场</b>
										</p>
										<p></p></li>
								</ul>
							</div>
							<ul class="jt_R" style="right: 21px">
							</ul>
						</div>
						<div class="clr"></div>
					</div>
					<div id="dlwz">
						<p class="show_bt">
		地理位置 | <span>GEOGRAPHICAL POSITION</span>
	</p>
	<div class="map">
		<div id="container"
			style="position: relative; width: 100%; height: 450px; padding: 60 90 0 0;"></div>
		<script
			src="http://webapi.amap.com/maps?v=1.3&key=e80e5ecd570257a01b67ce71092cfe33&callback=init"></script>
		<script type="text/javascript" src="<%=path%>/js/addToolbar.js"></script>
		<script>
			function init() {
				var map = new AMap.Map('container', {
					resizeEnable : true,
					center : [ $("#jindu").val(),
							$("#weidu").val() ],
					zoom : 13
				});
				map.plugin([ "AMap.ToolBar" ], function() {
					map.addControl(new AMap.ToolBar());
				});
				var marker = new AMap.Marker({ //添加自定义点标记
					map : map,
					position : [ $("#jindu").val(),
							$("#weidu").val() ], //基点位置
				// offset: new AMap.Pixel(-17, -42), //相对于基点的偏移位置
				});
			}
		</script>
						</div>
					</div>
					<div class="show_box_1" id="gmlc">
						<p class="show_bt">
							购买流程 | <span>PURCHASE PROCEDURE</span>
						</p>
						<div class="liucheng">
							<img src="<%=path%>/homeimage/14395422524686.jpg"
								style="max-width: 100%;" alt="中国房产买卖流程" />
						</div>
					</div>
					<div class="show_box_1" id="tjlp">
						<h2 class="show_bt">
							销售顾问| <span>RECOMMENDED EMPLOYEE</span>
						</h2>
						<div class="jt_main">
							<ul>
								<c:forEach items="${employeelist}" var="e">
									<li><a
										href="javascript:void(0);">
											<img alt="${e.nameString}" src="<%=path %>/${e.headiconString}" style="border-radius:100%"
											border="0" />
											<div class="li_bg">
												<img src="<%=path%>/homeimage/q_l.png" alt="${e.nameString}员工"  style="border-radius:100%" />
											</div>
									</a>
										<p>
											<b>${e.nameString}...</b><br /> 性别： <span>${e.genderString}</span><br />
											Tel：${e.phoneString}<br />
										</p></li>
								</c:forEach>
							</ul>
						</div>
						<div class="clr"></div>
					</div>
					<script>
					function proform(){
						if($("#username").val()=="员工的姓名*"){
							alert("请输入心仪的员工姓名！");
				        	return false;
						}else{
							if($("#date").val()=="看房时间*"){
					        	alert("请输入看房时间！");
					        	return false;
					        }else{
					        	$.post(
					        		"${pageContext.request.contextPath}/appointment/addappointment",
					        		{
					        			"appointment.houseIdString":$("#houseIdString").val(),
					        			"appointment.empIdString":$("#username").val(),
					        			"appointment.appArriveTime":$("#date").val(),
					        			"appointment.jxsidString":$("#jxsid").val()
					        		},
					        		function(data){
					        			if(data==0){
					        				fale();
					        			}
					        			if(data==1){
					        				layer.msg('预约失败!该顾问不存在', {
												icon : 5,
												time : 2000
											});
					        			}
					        			if(data==2){
					        				layer.msg('预约成功!', {
												icon : 6,
												time : 2000
											});
					        			}
					        			if(data==3){
					        				layer.msg('预约失败，你已经预约过，我们会尽快联系你!', {
												icon : 5,
												time : 2000
											});
					        			}
					        		},
					        		"json"
					        	);
					        }
						}
					}
				</script>
				<script>
					function fale(){
						layer.msg('预约失败，你还未登录!', {
							icon : 5,
							time : 2000
						});
					    window.location.href="${pageContext.request.contextPath}/hui-jxs/userlogin.jsp";
					}
				</script>
					<div class="form" id="pro_form">
						<form  method="post" id="iproform">
							<input type="hidden" id="houseIdString" value="${house.idString}"/>
							<input type="hidden" name="fileids" id="fileids" />
							<div class="bt">
								<img src="<%=path%>/homeimage/c_bt.gif" border="0" alt="中国房产网" />
							</div>
							<div class="form_left">
								<ul>
									<li><input type="text" name="username" id="username"
										class="s16-i1" value="员工的姓名*"
										onfocus="if (value =='员工的姓名*'){value =''}"
										onblur="if (value ==''){value='员工的姓名*'}" /></li>
									<li><input type="text" name="tel" id="tel" class="s16-i2"
										value="您的手机*" onfocus="if (value =='您的手机*'){value =''}"
										onblur="if (value ==''){value='您的手机*'}" /></li>
									<li><input type="date" name="date" id="date"
										class="s16-i3" value="看房时间*"
										onfocus="if (value =='看房时间*'){value =''}"
										onblur="if (value ==''){value='看房时间*'}" /></li>
								</ul>
							</div>
						</form>
						<div class="form_right">注：我们承诺您的信息完全保密不对外公开，提交您的信息
							我们将最快时间为您提供投资报告书，让您更加了解海外置 业详情，请从上面顾问中挑选你心仪的顾问。*</div>
						<div class="clr"></div>
						<div class="from_a">
							<a rel="nofollow" href="javascript:proform();" >5分钟内为我预约</a>
						</div>
						<div class="from_more">
							<a rel="nofollow" href="<%=path%>/facemain/bestloupan">更多房产>></a>
						</div>
						<div></div>
					</div>
				</div>
			</div>
			<div class="clr"></div>
		</div>
		﻿
		<div class="bottom_box">
			<div class="public bottom_main">
				<div class="fl bottom_l">
					<h2>桃源投资</h2>
					<h2>
						你值得信赖的中国<br />房产权威机构
					</h2>
				</div>
				<div class="fl bottom_2">
					<ul>
						<li><img alt="桃源盛景客服微信二维码" src="<%=path%>/homeimage/w_1.jpg" />
							<p>专业顾问</p></li>
						<li><img alt="桃源盛景微信公众号二维码"
							src="<%=path%>/homeimage/w_2.jpg" />
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
$(document).ready(function(){

	$('body').on("click",'.heart',function(){
		if($("#userid").val()=="-1"){
			alert("你还未登录，不能点赞");
			window.location.href="${pageContext.request.contextPath}/hui-jxs/userlogin.jsp";
		}
		var A=$(this).attr("id");
		var B=A.split("like");
		var messageID=B[1];
		var C=parseInt($("#likeCount"+messageID).html());
		$(this).css("background-position","")
		var D=$(this).attr("rel");
		if(D === 'like') {
			$.post(
				"${pageContext.request.contextPath}/like/addlike",
				{
					"loupan.idString":$("#loupan").val()
				},
				function(data){
					alert(data);
					if(data>=1){
						alert("不能重复点赞");
					}else{
						$("#likeCount"+messageID).html(C+1);
					}
				},
				"json"
			);
			$(this).addClass("heartAnimation").attr("rel","unlike");
		}else{
			$("#likeCount"+messageID).html(C-1);
			$(this).removeClass("heartAnimation").attr("rel","like");
			$(this).css("background-position","left");
			$.post(
				"${pageContext.request.contextPath}/like/deletelike",
				{
				},
				function(data){
				},
				"json"
			);
		}
	});

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
		 window.open('http://wpa.qq.com/msgrd?v=3&uin=275300091&site=qq&menu=yes');
	});
})(jQuery);
</script>
</body>
</html>