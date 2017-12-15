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
<title>用户查看</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#cc66ff">
	<img class="avatar size-XL l" src="<%=path %>/${loupan.logoString}" style="border-radius:100%">
	<dl style="margin-left:80px; color:#fff">
		<dt>
			<span class="f-18">${loupan.nameString}</span>
			<span class="pl-10 f-12">楼盘法人代表：<font color="#ccffff">${tagency.leaderString}</font></span>
			<span class="pl-10 f-12">所属区域：${loupan.areaString}</span>
			<span class="pl-10 f-12">创建时间：${loupan.createdTime}</span>
		</dt>
		<dd class="pt-10 f-12" style="margin-left:0">详细地址：${loupan.addressString}</dd>
	</dl>
</div>
<div class="pd-20">
	<table class="table" border="1"> 
		<tbody>
			<tr>
				<td colspan="8" style="font-size:18px;text-align:center"><b>${loupan.nameString}楼盘详情表</b></td>
			</tr>
			<tr>
				<th class="text-r" width="80">占地面积：</th>
				<td>${loupan.floorAreaString}平米</td>
				<th class="text-r" width="80">建筑面积：</th>
				<td>${loupan.buildingAreaString}平米</td>
				<th class="text-r">房源类型：</th>
				<td>${loupan.houseTypeString}</td>
				<th class="text-r">建筑类型：</th>
				<td>${loupan.buildingTypeString}</td>
			</tr>
			<tr>
				<th class="text-r">经纬度：</th>
				<td>(${loupan.longitudeDouble},${loupan.latitudeDouble})</td>
				<th class="text-r">楼盘均价：</th>
				<td>${loupan.avgPriceDouble}</td>
				<th class="text-r">开发公司：</th>
				<td>${loupan.companyString}</td>
				<th class="text-r">状态：</th>
				<c:if test="${loupan.statusInt==0}">
					<td>可售</td>
				</c:if>
				<c:if test="${loupan.statusInt==1}">
					<td>已售罄</td>
				</c:if>
			</tr>
			<tr>
				<th class="text-r">总套数：</th>
				<td>${loupan.totalRoomsInt}</td>
				<th class="text-r">接待地址：</th>
				<td>${loupan.receptionAddressString}</td>
				<th class="text-r">售楼TEL：</th>
				<td>${loupan.telString}</td>
				<th class="text-r">绿化率：</th>
				<td>${loupan.greenRatioDouble}%</td>
			</tr>
			<tr>
				<th class="text-r">周边配套：</th>
				<td>${loupan.equipmentsString}</td>
				<th class="text-r">容积率：</th>
				<td>${loupan.plotRatioDouble}%</td>
				<th class="text-r">物业费用：</th>
				<td>${loupan.propertyFeeDouble}</td>
				<th class="text-r">车位数量：</th>
				<td>${loupan.carStationInt}个</td>
			</tr>
			<tr>
				<th class="text-r">物业公司：</th>
				<td    colspan="3">${loupan.propertyCompany}</td>
				<th class="text-r">开盘时间：</th>
				<td  colspan="3">${loupan.openDate}</td>
			</tr>
			<tr>
				<th class="text-r">交通状况：</th>
				<td  colspan="7">${loupan.trafficString}</td>
			</tr>
			<tr>
				<th class="text-r">楼盘简介：</th>
				<td  colspan="7">${loupan.introString}</td>
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