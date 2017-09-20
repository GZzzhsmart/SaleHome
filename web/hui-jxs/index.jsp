<%@page import="com.ht.pojo.TAgency"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	TAgency tagency = (TAgency)session.getAttribute("tagency");
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=yes" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico">
<link rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css"
	href="<%=path %>/hui-jxs/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=path %>/hui-jxs/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="<%=path %>/hui-jxs/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="<%=path %>/hui-jxs/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="<%=path %>/hui-jxs/static/h-ui.admin/css/style.css" />
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="<%=path %>/css/css1.css" /> --%>
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<%-- <title><%=tagency.getPhoneString()%>的主页</title> --%>
<title>经销商的主页</title>
</head>
<body>
	<header class="navbar-wrapper">
		<div class="navbar navbar-fixed-top">
			<div class="container-fluid cl">
				 <a class="logo navbar-logo f-l mr-10 hidden-xs"><%=tagency.getLeaderString()%></a>
				 <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="/aboutHui.shtml">☎<%=tagency.getPhoneString() %></a> 
				 <c:if test="<%=tagency.getStatusInt()==1 %>">
				 	<span class="logo navbar-slogan f-l mr-10 hidden-xs">未认证</span> 
				 </c:if>
				 <c:if test="<%=tagency.getStatusInt()==0 %>">
				 	<span class="logo navbar-slogan f-l mr-10 hidden-xs">已认证·知名经销商</span> 
				 </c:if>
				<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
				<nav class="nav navbar-nav">
					<ul class="cl">
						<li class="dropDown dropDown_hover"><a href="javascript:;"
							class="dropDown_A">操作 <i
								class="Hui-iconfont">&#xe6d5;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li>
									<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="info_edit('<%=tagency.getNameString()%>经销商','<%=path%>/jxs/showjxs?tagency.idString=<%=tagency.getIdString() %>','<%=tagency.getNameString() %>','600','430')"><i class="Hui-iconfont">&#xe62d;</i><%=tagency.getNameString() %></a>
								</li>
								<li>
									<a style="text-decoration:none;cursor: pointer;" class="text-primary" onClick="change_password('修改密码','<%=path %>/hui-jxs/update-jxspwd.jsp','<%=tagency.getIdString() %>','400','270')" href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe60e;</i>修改密码</a>
								</li>
								<li>
									<a style="text-decoration:none;cursor: pointer;" class="text-primary" onClick="change_password('公司商标','<%=path%>/jxs/findmylogo?tagency.idString=<%=tagency.getIdString() %>','<%=tagency.getIdString() %>','400','270')" href="javascript:;" title="公司商标"><i class="Hui-iconfont">&#xe613;</i>查看商标</a>
								</li>
								<li>
									<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="info_edit('<%=tagency.getNameString()%>经销商','<%=path%>/jxs/updatejxs?tagency.idString=<%=tagency.getIdString() %>','<%=tagency.getNameString() %>','','530')"><i class="Hui-iconfont">&#xe62d;</i>修改资料</a>
								</li>
								<li>
								<a href="<%=path%>/lr/exit"><i class="Hui-iconfont">&#xe706;</i>退出</a></li>
							</ul></li>
					</ul>
				</nav>
				<nav id="Hui-userbar"
					class="nav navbar-nav navbar-userbar hidden-xs">
					<ul class="cl">
						<li>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" href="<%=path%>/facemain/articlelist">首页</a>
						</li>
						<li><%=tagency.getNameString() %></li>
						<li class="dropDown dropDown_hover">
							<a href="#" class="dropDown_A"><%=tagency.getPhoneString() %> <i class="Hui-iconfont">&#xe6d5;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li>
									<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="info_edit('<%=tagency.getNameString()%>经销商','<%=path%>/jxs/showjxs?tagency.idString=<%=tagency.getIdString() %>','<%=tagency.getNameString() %>','600','430')"><i class="Hui-iconfont">&#xe62d;</i><%=tagency.getNameString() %></a>
								</li>
								<li>
									<a style="text-decoration:none;cursor: pointer;" class="text-primary" onClick="change_password('修改密码','<%=path %>/hui-jxs/update-jxspwd.jsp','<%=tagency.getIdString() %>','400','270')" href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe60e;</i>修改密码</a>
								</li>
								<li>
									<a style="text-decoration:none;cursor: pointer;" class="text-primary" onClick="change_password('公司logo','<%=path%>/jxs/findmylogo?tagency.idString=<%=tagency.getIdString() %>','<%=tagency.getIdString() %>','400','270')" href="javascript:;" title="公司logo"><i class="Hui-iconfont">&#xe613;</i>查看商标</a>
								</li>
								<li>
									<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="info_edit('<%=tagency.getNameString()%>经销商','<%=path%>/jxs/updatejxs?tagency.idString=<%=tagency.getIdString() %>','<%=tagency.getNameString() %>','','530')"><i class="Hui-iconfont">&#xe62d;</i>修改资料</a>
								</li>
								<li>
								<a href="<%=path%>/lr/exit"><i class="Hui-iconfont">&#xe706;</i>退出</a></li>
							</ul>
						</li>
						<li id="Hui-msg"><a href="#" title="消息"><span
								class="badge badge-danger">1</span><i class="Hui-iconfont"
								style="font-size: 18px">&#xe68a;</i></a></li>
						<li id="Hui-skin" class="dropDown right dropDown_hover"><a
							href="javascript:;" class="dropDown_A" title="换肤"><i
								class="Hui-iconfont" style="font-size: 18px">&#xe62a;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;" data-val="default"
									title="默认（黑色）">默认（黑色）</a></li>
								<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
								<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
								<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
								<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
								<li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
								<li><a href="javascript:;" data-val="gray" title="灰色">灰色</a></li>
								<li><a href="javascript:;" data-val="pink" title="粉色">粉色</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<aside class="Hui-aside">
		<div class="menu_dropdown bk_2">
			<dl id="menu-system">
				<dt>
					<i class="icon Hui-iconfont">&#xe705;</i>个人中心<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a data-href="<%=path %>/jxs/inituplogo?tagency.idString=<%=tagency.getIdString() %>" data-title="修改商标" href="javascript:void(0)">修改商标</a></li>
						<li><a data-href="<%=path %>/jxs/updatejxs?tagency.idString=<%=tagency.getIdString() %>" data-title="编辑资料" href="javascript:void(0)">编辑资料</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-system">
				<dt>
					<i class="icon Hui-iconfont">&#xe693;</i>楼盘管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a data-href="<%=path %>/lp/pageloupan" data-title="楼盘列表" href="javascript:void(0)">楼盘列表</a></li>
						<li><a data-href="<%=path %>/ld/pageloudong" data-title="楼栋列表" href="javascript:void(0)">楼栋列表</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-system">
				<dt>
					<i class="Hui-iconfont">&#xe62d;</i>用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a data-href="<%=path %>/user/pageuser" data-title="用户列表" href="javascript:void(0)">用户列表</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-system">
				<dt>
					<i class="Hui-iconfont">&#xe622;</i>客户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a data-href="<%=path %>/customer/pagejxscustomer" data-title="客户列表" href="javascript:;">客户列表</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-system">
				<dt>
					<i class="Hui-iconfont">&#xe62e;</i>员工管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a data-href="<%=path %>/yg/pageemployee" data-title="员工列表" href="javascript:void(0)">员工列表</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont">&#xe616;</i> 资讯活动<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li>
							<a data-href="<%=path %>/wz/pagearticle" data-title="资讯列表" href="javascript:void(0)">我的资讯列表</a>
						</li>
						<li>
							<a data-href="<%=path %>/wz/allarticlelist" data-title="资讯管理" href="javascript:void(0)">平台资讯</a>
						</li>
						<li>
							<a data-href="<%=path %>/activity/pageactivity" data-title="活动管理" href="javascript:void(0)">活动列表</a>
						</li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-picture">
				<dt>
					<i class="Hui-iconfont">&#xe613;</i> 图片管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a data-href="<%=path %>/lpimg/pageloupanimg" data-title="楼盘图片" href="javascript:void(0)">楼盘图片</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-tongji">
				<dt>
					<i class="Hui-iconfont">&#xe61a;</i> 报表统计<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a data-href="<%=path %>/hui-jxs/history-baobiao.jsp" data-title="楼盘浏览图"
							href="javascript:void(0)">楼盘浏览图</a></li>
						<li><a data-href="<%=path %>/hui-jxs/sale-baobiao.jsp" data-title="楼盘销售图"
							href="javascript:void(0)">楼盘销售图</a></li>
						<li><a data-href="<%=path %>/hui-jxs/loupan-baobiao.jsp" data-title="楼盘价格图"
							href="javascript:void(0)">楼盘价格图</a></li>
						<li><a data-href="<%=path %>/hui-jxs/like-baobiao.jsp" data-title="楼盘点赞图"
							href="javascript:void(0)">楼盘点赞图</a></li>
					</ul>
				</dd>
			</dl>
		</div>
	</aside>
	<div class="dislpayArrow hidden-xs">
		<a class="pngfix" href="javascript:void(0);"
			onClick="displaynavbar(this)"></a>
	</div>
	<section class="Hui-article-box">
		<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
			<div class="Hui-tabNav-wp">
				<ul id="min_title_list" class="acrossTab cl">
					<li class="active"><span title="我的桌面" data-href="welcome.html">我的桌面</span>
						<em></em></li>
				</ul>
			</div>
			<div class="Hui-tabNav-more btn-group">
				<a id="js-tabNav-prev" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a
					id="js-tabNav-next" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
			</div>
		</div>
		<div id="iframe_box" class="Hui-article">
			<div class="show_iframe">
				<div style="display: none" class="loading"></div>
				<iframe scrolling="yes" frameborder="0" src="<%=path %>/hui-jxs/welcome.jsp"></iframe>
			</div>
		</div>
	</section>
	<div class="contextMenu" id="Huiadminmenu">
		<ul>
			<li id="closethis">关闭当前</li>
			<li id="closeall">关闭全部</li>
		</ul>
	</div>
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript" src="<%=path %>/js/hui.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.contextmenu/jquery.contextmenu.r2.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script>
	$(function(){
		$('#close_im').bind('click',function(){
			$('#main-im').css("height","0");
			$('#im_main').hide();
			$('#open_im').show();
		});
		$('#open_im').bind('click',function(e){
			$('#main-im').css("height","272");
			$('#im_main').show();
			$(this).hide();
		});
		$('.go-top').bind('click',function(){
			$(window).scrollTop(0);
		});
		$(".weixing-container").bind('mouseenter',function(){
			$('.weixing-show').show();
		})
		$(".weixing-container").bind('mouseleave',function(){        
			$('.weixing-show').hide();
		});
	});
</script>
	<script type="text/javascript">
		$(function() {
			/*$("#min_title_list li").contextMenu('Huiadminmenu', {
				bindings: {
					'closethis': function(t) {
						console.log(t);
						if(t.find("i")){
							t.find("i").trigger("click");
						}		
					},
					'closeall': function(t) {
						alert('Trigger was '+t.id+'\nAction was Email');
					},
				}
			});*/
		});
		/*个人信息*/
		function myselfinfo(title, url, w, h) {
			layer_show(title,url,w,h);
		}
		/*楼盘-编辑*/
		function info_edit(title, url, id, w, h) {
// 			var index = layer.open({
// 				type : 2,
// 				title : title,
// 				content : url
// 			});
// 			layer.full(index);
				layer_show(title,url,w,h);
		}
		function change_password(title,url,id,w,h){
			layer_show(title,url,w,h);	
		}
		/*资讯-添加*/
		function article_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*图片-添加*/
		function picture_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*产品-添加*/
		function product_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
	</script>

	<!--此乃百度统计代码，请自行删除-->
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
</body>
</html>