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
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,employee-scalable=no" />
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
<title>${employee.nameString}用户详细信息</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#9966ff">
	<img class="avatar size-XL l" src="<%=path %>/${employee.headiconString}" style="border-radius:100%">
	<dl style="margin-left:80px; color:#fff">
		<dt>
			<span class="pl-10 f-12">真实姓名：<font color="red">${employee.nameString}</font></span>
			<span class="pl-10 f-12">联系方式：${employee.phoneString}</span>
		</dt>
		<dt>
			<span class="pl-10 f-12"><i class="icon Hui-iconfont">&#xe694;</i>微信：${employee.wechatString}</span>
			<span class="pl-10 f-12"><i class="icon Hui-iconfont">&#xe67b;</i>QQ：${employee.qqString}</span>
		</dt>
		<dt>
			<span class="pl-10 f-12">地址：${employee.addressString}</span>
		</dt>
	</dl>
</div>
<div class="pd-20">
	<table class="table" border="1">
		<tbody>
			<tr align="center" >
				<td colspan="4" style="font-size:18px;text-align:center"><b>${employee.nameString}员工详情表</b></td>
			</tr>
			<tr>
				<th class="text-r" width="80">用户昵称：</th>
				<td>${employee.nameString}</td>
				<th class="text-r" width="80">用户邮箱：</th>
				<td>${employee.emailString}</td>
			</tr>
			<tr>
				<th class="text-r">用户微信：</th>
				<td><i class="icon Hui-iconfont">&#xe694;</i>:${employee.wechatString}</td>
				<th class="text-r">用户Q Q：</th>
				<td><i class="icon Hui-iconfont">&#xe67b;</i>:${employee.qqString}</td>
			</tr>
			<tr>
				<th class="text-r">用户性别：</th>
				<td >${employee.genderString}</td>
				<th class="text-r">基本工资：</th>
				<td >${employee.basicSalaryDouble}</td>
			</tr>
			<tr>
				<th class="text-r">经销商：</th>
				<td >${employee.tagency.leaderString}</td>
				<th class="text-r">所属楼盘：</th>
				<td >${employee.loupan.nameString}</td>
			</tr>
			<tr>
				<th class="text-r">注册时间：</th>
				<td >${employee.createdTime}</td>
				<th class="text-r">公司职务：</th>
				<td >
					<c:if test="${employee.typeInt==0}">
						总经理
					</c:if>
					<c:if test="${employee.typeInt==1}">
						普通员工
					</c:if>
					<c:if test="${employee.typeInt==2}">
						财务部
					</c:if>
				</td>
			</tr>
			<tr>
				<td>员工简介</td>
				<td colspan="3">${employee.introString}</td>
			</tr>
			<tr>
				<td>工作经验</td>
				<td colspan="3">${employee.expString}</td>
			</tr>
			<tr>
				<td>个人说明</td>
				<td colspan="3">${employee.desString}</td>
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