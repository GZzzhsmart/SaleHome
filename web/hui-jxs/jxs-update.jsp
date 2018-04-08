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
<title>${tagency.leaderString}经销商资料的修改</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" id="form-admin-add" action="<%=path%>/jxs/addtagency" method="post">
		<input type="hidden" name="tagency.addressString" id="addr" value="${tagency.addressString}"/>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>经销商昵称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${tagency.nameString}" placeholder="请输入经销商名称" id="tagency_nameString" name="tagency.nameString">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>邮箱地址：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off" value="${tagency.emailString}" placeholder="请输入经销商的email" id="tagency_emailString" name="tagency.emailString">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>手机号码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off" value="${tagency.phoneString}"  placeholder="请输入经销商的手机联系方式" id="tagency_phoneString" name="tagency.phoneString">
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
			<label class="form-label col-xs-4 col-sm-3">经销商简介：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="tagency.introString" cols="" id="tagency_introString" rows="" class="textarea"  placeholder="说点什么...500个字符以内" dragonfly="true" onKeyUp="$.Huitextarealength(this,500)">${tagency.introString}</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i> 确认修改</button>
			</div>
		</div>
	</form>
</article>
<!--_footer 作为公共模版分离出去--> 
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