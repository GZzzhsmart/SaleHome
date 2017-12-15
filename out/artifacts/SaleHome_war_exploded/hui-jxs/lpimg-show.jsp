<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" type="text/css" href="<%=path%>/hui-jxs/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/hui-jxs/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/hui-jxs/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/hui-jxs/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=path%>/hui-jxs/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

<title>图片展示</title>
<link href="<%=path%>/hui-jxs/lib/lightbox2/2.8.1/css/lightbox.css" rel="stylesheet" type="text/css" >
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 图片管理 <span class="c-gray en">&gt;</span> 图片展示 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:void(0);" onclick="refresh();" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"> <a href="<%=path%>/lpimg/pageloupanimg" class="btn btn-primary radius">楼盘图片列表</a> <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> </span> <span class="r">共有数据：<strong>${num}</strong> 条</span> </div>
	<div class="portfolio-content">
		<ul class="cl portfolio-area">
			<c:forEach items="${loupanimglist}" var="l">
				<li class="item">
					<div class="portfoliobox">
						<input class="checkbox" name="id" type="checkbox" value="${l.idString}">
						<div class="picbox"><a href="<%=path %>/${l.imgPathString}" data-lightbox="gallery" data-title="${l.loupan.nameString}"><img src="<%=path %>/${l.imgPathString}" style="width:200px;height:100px"></a></div>
						<div class="textbox">${l.loupan.nameString}楼盘图片 </div>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>
<script type="text/javascript" src="<%=path%>/hui-jxs/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/hui-jxs/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=path%>/hui-jxs/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="<%=path%>/hui-jxs/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<%=path%>/hui-jxs/lib/lightbox2/2.8.1/js/lightbox.min.js"></script> 
<script type="text/javascript">
$(function(){
	$(".portfolio-area li").Huihover();
});
function datadel(){
	var arr=document.getElementsByName("id");
	var a=[];
	for(i=0;i<arr.length;i++){
		if(arr[i].checked){
			a[i] = arr[i].value;
		}
	}
	window.location.href='${pageContext.request.contextPath}/lpimg/deletemanyimg?id='+a;
	layer.msg('删除成功!', {
		icon : 1,
		time : 2000
	});
}
/*楼盘图片-刷新*/
function refresh(){
	window.location.href='${pageContext.request.contextPath}/lpimg/showloupanimg';
	layer.msg('刷新成功!', {
		icon : 1,
		time : 2000
	});
	
}
</script>
</body>
</html>