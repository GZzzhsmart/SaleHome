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
	<title>账单审核详情</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal"  onsubmit="return checkvolid();" id="form-admin-add" action="<%=path%>/customer/addcomment" method="post">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>购房详情：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					${sale.room.huxing.tbuilding.buildings.nameString}楼盘${sale.room.huxing.tbuilding.nameString}楼栋${sale.room.huxing.nameString}户型
				</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>购买时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					${sale.createdTime}
				</span>			
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>销售单价：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					${sale.unitPriceDouble}
				</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>销售折扣：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					${10-sale.discountDouble}折
				</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>销售总价：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					${sale.totalCostDouble}折
				</span>
			</div>
		</div>
		<c:if test="${requestScope.num==0}">
			<input type="hidden" name="comment.buildingsIdString" value="${sale.room.huxing.tbuilding.buildings.idString}"/>
			<div class="row cl">
				<label class="form-label col-xs-2 col-sm-3">我要评价：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<textarea name="comment.contentString" id="comment.contentString" cols="" rows="" class="textarea"  placeholder="个人简介...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="楼盘简介不能为空！" onKeyUp="$.Huitextarealength(this,200)"></textarea>
					<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
				</div>
			</div>
			<div class="row cl">
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
					<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i>评价</button>
					<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
				</div>
			</div>
		</c:if>
		<c:if test="${requestScope.num!=0}">
			<div style="height:20px"></div>
			<div class="row cl">
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
					<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i>你已经评价过了喔！</button>
					<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;关闭页面&nbsp;&nbsp;</button>
				</div>
			</div>
		</c:if>
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