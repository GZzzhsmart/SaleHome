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
<title>${loudong.nameString}详情</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#9966ff">
	<img class="avatar size-XL l" src="<%=path %>/${loupan.logoString}" style="border-radius:100%">
	<dl style="margin-left:80px; color:#fff">
		<dt>
			<span class="f-18">${loupan.nameString}</span>
			<span class="pl-10 f-12">法人代表：<font color="red">${loudong.tagency.leaderString}</font></span>
			<span class="pl-10 f-12">所属区域：${loupan.areaString}</span>
		</dt>
		<dd class="pt-10 f-12" style="margin-left:0">详细地址：${loupan.addressString}</dd>
	</dl>
</div>
<div class="pd-20">
	<table class="table" border="1">
		<tbody>
			<tr  align="center" >
				<td colspan="4" style="font-size:18px;text-align:center"><b>${loupan.nameString}楼盘的${loudong.nameString}楼栋详情表</b></td>
			</tr>
			<tr>
				<th class="text-r" width="80">所属楼盘：</th>
				<td>${loupan.nameString}（平米）</td>
				<th class="text-r" width="80">楼栋地址：</th>
				<td>${loupan.addressString}</td>
			</tr>
			<tr>
				<th class="text-r" width="80">楼栋名称：</th>
				<td>${loudong.nameString}平米</td>
				<th class="text-r">楼栋总层：</th>
				<td>${loudong.totalFloorInt}（层）</td>
			</tr>
			<tr>
				<th class="text-r">电梯总数：</th>
				<td>${loudong.totalLiftInt}（个）</td>
				<th class="text-r">每层户数：</th>
				<td>${loudong.floorRoomsInt}（户）</td>
			</tr>
			<tr>
				<th class="text-r">楼栋总数：</th>
				<td>${loudong.floorRoomsInt*loudong.totalFloorInt}（层）</td>
				<th class="text-r">楼栋状态：</th>
				<c:if test="${loudong.statusInt==0}">
					<td>可售</td>
				</c:if>
				<c:if test="${loudong.statusInt==1}">
					<td>已售罄</td>
				</c:if>
			</tr>
			<tr>
				<th class="text-r">售楼热线：</th>
				<td>${loupan.telString}</td>
				<th class="text-r">楼栋总户：</th>
				<td>${loudong.floorRoomsInt*loudong.totalFloorInt}（户）</td>
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