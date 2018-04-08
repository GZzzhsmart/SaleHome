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
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,customer-scalable=no" />
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
<title>${customer.nameString}客户详细信息</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#9966ff">
	<img class="avatar size-XL l" src="<%=path %>/${customer.headiconString}" style="border-radius:100%">
	<dl style="margin-left:80px; color:#fff">
		<dt>
			<span class="pl-10 f-12">真实姓名：<font color="red">${customer.nameString}</font></span>
			<span class="pl-10 f-12" style="margin-left:100px">联系方式：${customer.phoneString}</span>
		</dt>
		<dt>
			<span class="pl-10 f-12">性别：${customer.genderString}</span>
			<span class="pl-10 f-12" style="margin-left:100px">邮箱：${customer.emailString}</span>
		</dt>
		<dt>
			<span class="pl-10 f-12">地址：${customer.addressString}</span>
		</dt>
	</dl>
</div>
<div class="pd-20">
	<table class="table" border="1">
		<tbody>
			<tr align="center" >
				<td colspan="4" style="font-size:18px;text-align:center"><b>${customer.nameString}客户详情表</b></td>
			</tr>
			<tr>
				<th class="text-r" width="80">客户姓名：</th>
				<td>${customer.nameString}</td>
				<th class="text-r" width="80">客户邮箱：</th>
				<td>${customer.emailString}</td>
			</tr>
			<tr>
				<th class="text-r">客户性别：</th>
				<td>${customer.genderString}</td>
				<th class="text-r">身份证号：</th>
				<td>${customer.identityIdString}</td>
			</tr>
			<tr>
				<th class="text-r">客户类型：</th>
				<td>
					<c:if test="${customer.customerTypeInt==0}">
						预约客户
					</c:if>
					<c:if test="${customer.customerTypeInt==1}">
						预定客户
					</c:if>
					<c:if test="${customer.customerTypeInt==2}">
						全款购房客户
					</c:if>
					<c:if test="${customer.customerTypeInt==3}">
						分期付款购房客户
					</c:if>
				</td>
				<th class="text-r">接待员工：</th>
				<td>${customer.employee.nameString}</td>
			</tr>
			<tr>
				<th class="text-r">购房人：</th>
				<td>${customer.togetherString}</td>
				<th class="text-r">客户状态：</th>
				<td>
					<c:if test="${customer.statusInt==1}">
						激活状态
					</c:if>
					<c:if test="${customer.statusInt==0}">
						禁用状态
					</c:if>
				</td>
			</tr>
			<tr>
				<th class="text-r">客户生日：</th>
				<td colspan="3">${customer.birthday}</td>
			</tr>
			<tr>
				<th class="text-r">注册时间：</th>
				<td colspan="3">${customer.createdTime}</td>
			</tr>
			<tr>
				<th class="text-r">地址：</th>
				<td colspan="3">${customer.addressString}</td>
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