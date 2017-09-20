<%@page import="com.ht.dao.LouDongDAO"%>
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
<title>${user.nameString}用户详细信息</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#9966ff">
	<img class="avatar size-XL l" src="<%=path %>/${user.headiconString}" style="border-radius:100%">
	<dl style="margin-left:80px; color:#fff">
		<dt>
			<span class="pl-10 f-12">真实姓名：<font color="red">${user.nameString}</font></span>
			<span class="pl-10 f-12">联系方式：${user.phoneString}</span>
		</dt>
		<dt>
			<span class="pl-10 f-12"><i class="icon Hui-iconfont">&#xe694;</i>微信：${user.wechatString}</span>
			<span class="pl-10 f-12"><i class="icon Hui-iconfont">&#xe67b;</i>QQ：${user.qqString}</span>
		</dt>
		<dt>
			<span class="pl-10 f-12">注册时间：${user.createTime}</span>
		</dt>
	</dl>
</div>
<div class="pd-20">
	<table class="table" border="1">
		<tbody>
			<tr align="center" >
				<td colspan="4" style="font-size:18px;text-align:center"><b>${user.nameString}用户详情表</b></td>
			</tr>
			<tr>
				<th class="text-r" width="80">用户昵称：</th>
				<td>${user.nicknameString}</td>
			</tr>
			<tr>
				<th class="text-r" width="80">用户邮箱：</th>
				<td>${user.emailString}</td>
			</tr>
			<tr>
				<th class="text-r">用户微信：</th>
				<td><i class="icon Hui-iconfont">&#xe694;</i>:${user.wechatString}</td>
			</tr>
			<tr>
				<th class="text-r">用户Q Q：</th>
				<td><i class="icon Hui-iconfont">&#xe67b;</i>:${user.qqString}</td>
			</tr>
			<tr>
				<th class="text-r">用户性别：</th>
				<td colspan="3">${user.genderString}</td>
			</tr>
			<tr>
				<th class="text-r">注册时间：</th>
				<td colspan="3">${user.createTime}</td>
			</tr>
		</tbody>
	</table>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui.admin/js/H-ui.admin.js"></script> 
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
</body>
</html>