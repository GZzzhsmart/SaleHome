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
	<title>销售账单的审核操作</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal"  onsubmit="return checkvolid();" id="form-admin-add" action="<%=path%>/sale/updatesale" method="post">
		<input type="hidden" name="sale.idString" value="${sale.idString}"/>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>审核操作：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					<select name="sale.saleHomeStatus" class="select">
						<option value="-1">请选择审核操作</option>
						<option value="0">请求审核</option>
						<option value="1">审核通过</option>
						<option value="2">审核不通过</option>
						<option value="3">审核驳回</option>
					</select>
				</span>
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="housetype" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售客户：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${sale.customer.nameString}" readonly="readonly">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售房号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${sale.room.huxing.tbuilding.buildings.nameString}楼盘${sale.room.huxing.tbuilding.nameString}楼栋${sale.room.huxing.nameString}户型${sale.room.nameString}" readonly="readonly">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${sale.saleTimeString}" readonly="readonly">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售单价：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${sale.unitPriceDouble}" readonly="readonly">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售折扣：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${10-sale.discountDouble}（折）" readonly="readonly">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售总价：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${sale.totalCostDouble/10000}（万元）" readonly="readonly">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">审核备注：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="sale.reason" cols="" id="sale_reason" rows="" class="textarea"  placeholder="说点什么...100个字符以内" dragonfly="true" onKeyUp="$.Huitextarealength(this,100)"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/100</p>
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="floor" ></span>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-2 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i>确认审核</button>
				<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</article>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="<%=path %>/js/jquery.min1.js"></script>
	<script type="text/javascript" src="<%=path %>/hui-jxs/lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui/js/H-ui.min.js"></script> 
	<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->
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
	</script>
</body>
</html>