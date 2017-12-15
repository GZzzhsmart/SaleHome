<%@page import="com.ht.pojo.TAgency"%>
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
<title>${manager.nameString}详细信息</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#9966ff">
	<img class="avatar size-XL l" src="<%=path %>/${manager.headiconString}" style="border-radius:100%">
	<dl style="margin-left:80px; color:#fff">
		<dt>
			<span class="pl-10 f-12">姓名：<font color="red">${manager.nameString}</font></span>
			<span class="pl-10 f-12">账号：${manager.phoneString}</span>
			<c:if test="${manager.typeInt==0}">
				<span class="pl-10 f-12">类别：普通管理员</span>
			</c:if>
			<c:if test="${manager.typeInt==1}">
				<span class="pl-10 f-12">类别：超级管理员</span>
			</c:if>
		</dt>
		<dd class="pt-10 f-12" style="margin-left:0">注册时间：${manager.createTime}</dd>
	</dl>
</div>
<div class="pd-20">
	<table class="table">
		<tbody>
			<tr>
				<th class="text-r" width="80">姓名：</th>
				<td>${manager.nameString}</td>
			</tr>
			<tr>
				<th class="text-r" width="80">账号：</th>
				<td>${manager.phoneString}</td>
			</tr>
			<tr>
				<th class="text-r">审核状态：</th>
				<c:if test="${manager.typeInt==0}">
					<td>普通管理员</td>
				</c:if>
				<c:if test="${manager.typeInt!=0}">
					<td>超级管理员</td>
				</c:if>
			</tr>
			<tr>
				<th class="text-r" width="80">创建时间：</th>
				<td>${manager.createTime}</td>
			</tr>
		</tbody>
	</table>
	<div>&nbsp;&nbsp;&nbsp;</div>
	<div class="row cl">
		<div class="col-xs-5 col-sm-6">
			<button onClick="layer_close();" class="btn btn-primary radius" type="submit" onclick="">关闭窗口</button>
		</div>
	</div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui.admin/js/H-ui.admin.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.contextmenu/jquery.contextmenu.r2.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript">
function info_edit(title, url, id, w, h) {
//		var index = layer.open({
//			type : 2,
//			title : title,
//			content : url
//		});
//		layer.full(index);
		layer_show(title,url,w,h);
}
</script>
</body>
</html>