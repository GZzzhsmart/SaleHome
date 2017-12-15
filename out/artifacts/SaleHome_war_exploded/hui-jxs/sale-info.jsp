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
<link rel="Bookmark" href="/favicon.ico">
<link rel="Shortcut Icon" href="/favicon.ico" />
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
<title>销售账单的详情</title>
</head>
<body>
<article class="page-container">
	<div class="row cl">
		<label class="form-label col-xs-2 col-sm-3">审核状态：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<c:if test="${sale.saleHomeStatus==0}">
				<input type="text" class="input-text" value="正在排队审核" readonly="readonly">
			</c:if>
			<c:if test="${sale.saleHomeStatus==1}">
				<input type="text" class="input-text" value="审核通过" readonly="readonly">
			</c:if>
			<c:if test="${sale.saleHomeStatus==2}">
				<input type="text" class="input-text" value="审核不通过" readonly="readonly">
			</c:if>
			<c:if test="${sale.saleHomeStatus==3}">
				<input type="text" class="input-text" value="审核驳回" readonly="readonly">
			</c:if>
		</div>
	</div>
	<div style="height:20px"></div>
	<div class="row cl">
		<label class="form-label col-xs-2 col-sm-3">审核备注：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<textarea cols="" id="house_introString" rows="" class="textarea"  placeholder="说点什么...100个字符以内" dragonfly="true" onKeyUp="$.Huitextarealength(this,100)" readonly="readonly">${sale.reason}</textarea>
		</div>
	</div>
	<div style="height:20px"></div>
	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-2 col-sm-offset-2">
			<c:if test="${sale.saleHomeStatus!=1}">
				<button  class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i> 重新提交</button>
			</c:if>
			<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
		</div>
	</div>
</article>
<!--_footer 作为公共模版分离出去--> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->
<!--请在下方写此页面业务相关的脚本-->
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
	function article_save(){
		alert("刷新父级的时候会自动关闭弹层。")
		window.parent.location.reload();
	} 
	function getld(name){
		$.post(
	 		"${pageContext.request.contextPath}/hx/getloudong",
	 		{
	 			"loupan.idString":name
	 		},
	 		function(data){
	 			var datainfo="<option value='-1'>请选择楼栋</option>";
				for(var i=0;i<data.length;i++){
					datainfo+="<option value='"+data[i].idString+"'>"+data[i].nameString+"</option>";
				}	
				$("#house_buildidString").html(datainfo);
	 		},	
	 		"json"	
	 	);		
	}
	$("#house_buildidString").change(function(){
		$("#buildid").val($("#house_buildidString").val());
	});
</script>
</body>
</html>