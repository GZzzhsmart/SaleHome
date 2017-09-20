<%@page import="com.ht.pojo.TUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxs/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxs/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxs/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxs/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxs/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<style>
	.case{}
	.bMap{position: relative;}
	.bMap .map-warp{position: absolute;left:0;width:100%;height:400px;display: none;}
	.bMap input{width:100%;height:30px;line-height: 30px;border:1px solid #d7d7d7;}
	.tangram-suggestion-main{z-index: 9999}
</style>
<title>用户入驻平台成为经销商审核进度</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" enctype="multipart/form-data" id="form-admin-add" action="<%=path%>/user/shenqingjxs" method="post">
		<input name="tagency.addressString" id="addr" type="hidden" value=""/>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">公司商标：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<img src="<%=path %>/${tagency.logoString}" style="width:100px;height:100px;border-radius:100%">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">审核进度：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<c:if test="${tagency.checkedStatusInt==0}">
					<label class="form-label col-xs-4 col-sm-3">已发送审核请求。。。</label>
				</c:if>
				<c:if test="${tagency.checkedStatusInt==1}">
					<label class="form-label col-xs-4 col-sm-3">未审核。。。</label>
				</c:if>
				<c:if test="${tagency.checkedStatusInt==2}">
					<label class="form-label col-xs-4 col-sm-3">审核通过。。。</label>
				</c:if>
				<c:if test="${tagency.checkedStatusInt==3}">
					<label class="form-label col-xs-4 col-sm-3">审核不通过。。。</label>
				</c:if>
				<c:if test="${tagency.checkedStatusInt==4}">
					<label class="form-label col-xs-4 col-sm-3">审核被驳回。。。</label>
				</c:if>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">审核备注：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="tagency.introString" cols=""  rows="" class="textarea"  placeholder="说点什么...500个字符以内" dragonfly="true" onKeyUp="$.Huitextarealength(this,500)">${tagency.reasonString}</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>经销商昵称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${tagency.nameString}" placeholder="请输入经销商名称" id="tagency_nameString" name="tagency.nameString">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>负责人姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${tagency.leaderString}" placeholder="请输入经销商负责人" id="tagency_leaderString" name="tagency.leaderString">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>邮箱地址：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${tagency.emailString}" placeholder="请输入经销商的邮箱" id="tagency_emailString" name="tagency.emailString">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>联系方式：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${tagency.phoneString}" placeholder="请输入经销商的tel" id="tagency_phoneString" name="tagency.phoneString">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>固定电话：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${tagency.telString}" placeholder="请输入经销商的固定电话" id="tagency_telString" name="tagency.telString">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>地图地址：</label>
			<div class="formControls col-xs-8 col-sm-9 case">
				<div class="bMap " id='case3'></div>
				<div id="callback"></div>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>创建时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${tagency.createdTime}" placeholder="请输入经销商的创建时间" id="tagency_createdTime" name="tagency.createdTime">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">经销商简介：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="tagency.introString" cols="" id="tagency_introString" rows="" class="textarea"  placeholder="说点什么...500个字符以内" dragonfly="true" onKeyUp="$.Huitextarealength(this,500)">${tagency.introString}</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<c:if test="${tagency.checkedStatusInt==0}">
					<button class="btn btn-primary radius" type="button" onclick="cuichu();"><i class="Hui-iconfont">&#xe632;</i> 催促处理</button>
				</c:if>
				<c:if test="${tagency.checkedStatusInt==1}">
					<button class="btn btn-primary radius" type="button" onclick="cuichu();"><i class="Hui-iconfont">&#xe632;</i> 催促审核</button>
				</c:if>
				<c:if test="${tagency.checkedStatusInt==2}">
					<button class="btn btn-primary radius" type="button" onclick="shenfen();"><i class="Hui-iconfont">&#xe632;</i> 切换身份</button>
				</c:if>
				<c:if test="${tagency.checkedStatusInt==3}">
					<button class="btn btn-primary radius"   ><i class="Hui-iconfont">&#xe632;</i> <a href="<%=path%>/hui-jxs/usertojxs.jsp">再次入驻</a></button>
				</c:if>
				<c:if test="${tagency.checkedStatusInt==4}">
					<button class="btn btn-primary radius" type="button" onclick="alert('审核被驳回可以拨打客服热线：17607975702');"><i class="Hui-iconfont">&#xe632;</i> 联系客服</button>
				</c:if>
			</div>
		</div>
	</form>
</article>
<!--_footer 作为公共模版分离出去--> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=EZPCgQ6zGu6hZSmXlRrUMTpr"></script>
<script type="text/javascript" src="<%=path %>/js/jquery.min1.js"></script>
<script type="text/javascript" src="<%=path %>/js/map.jquery.min.js"></script>
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript">
	function article_save(){
		alert("刷新父级的时候会自动关闭弹层。")
		window.parent.location.reload();
	} 
</script>
<script type="text/javascript">
	function cuichu(){
		layer.msg('已加速处理!', {
			icon : 6,
			time : 1000
		});
	} 
	function shenfen(){
		
		localtion.href="${pageContext.request.contextPath}/lr/exit";
	}
	function ruzhu(){
		window.localtion.href="${pageContext.request.contextPath}/hui-jxs/usertojxs.jsp";
	}	
</script>
<script type="text/javascript">
	$(function(){
		$("#case3").bMap({name:"address",address:"${tagency.addressString}"});
		$("#case3").bMap({name:"callback",callback:function(address,point){
	//  		$("#addr").val(JSON.stringify(address)+JSON.stringify(point))
	 		$("#addr").val($("#Map_input_callback").val());
		}});
	})
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>