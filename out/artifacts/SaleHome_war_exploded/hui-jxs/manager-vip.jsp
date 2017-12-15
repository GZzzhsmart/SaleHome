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
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,manager-scalable=no" />
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
<title>${manager.nameString}管理员申请超级管理员进度</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" enctype="multipart/form-data" onsubmit="return checkvolid();" id="form-admin-add" action="<%=path%>/manager/updatesavemanager" method="post">
		<input type="hidden" name="manager.idString" value="${manager.idString}" id="id"/>
		<input type="hidden" name="manager.headiconString" value="${manager.headiconString}"/>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>审核状态：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<c:if test="${manager.checkedStatusInt==0}">
					<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>请求提交成功</label>
				</c:if>
				<c:if test="${manager.checkedStatusInt==1}">
					<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>未审核</label>
				</c:if>
				<c:if test="${manager.checkedStatusInt==2}">
					<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>审核通过</label>
				</c:if>
				<c:if test="${manager.checkedStatusInt==3}">
					<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>审核不通过</label>
				</c:if>
				<c:if test="${manager.checkedStatusInt==4}">
					<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>审核被拒绝</label>
				</c:if>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">审核备注：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="house.introString" cols="" id="house_introString" rows="" readonly="readonly" class="textarea"  placeholder="审核进度备注，不可编辑" dragonfly="true" onKeyUp="$.Huitextarealength(this,100)">${manager.reasonString}</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/100</p>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">原头像：</label>
			<img src="<%=path %>/${manager.headiconString}"  style="height:100px;width:100px;border-radius:100%" >
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">更换头像：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="btn-upload form-group">
				<input class="input-text upload-url" type="text" value="${manager.headiconString}" name="uploadfile" id="uploadfile" readonly nullmsg="请添加附件！" style="width:200px">
				<a href="javascript:void();" class="btn btn-primary radius upload-btn"><i class="Hui-iconfont">&#xe642;</i> 浏览文件</a>
				<input type="file" multiple name="file" class="input-file" >
				</span> 
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${manager.nameString}" onblur="checkname(this.value);" placeholder="请输入正实姓名" id="manager_nameString" name="manager.nameString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="nameString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户性别：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<c:if test="${manager.sexInt==0}">	
					<div class="radio-box">
						<input name="manager.sexInt"  value="0" type="radio" id="sex-1" checked>
						<label for="sex-1">男</label>
					</div>
					<div class="radio-box">
						<input type="radio" id="sex-2" value="1"  name="manager.sexInt">
						<label for="sex-2">女</label>
					</div>
				</c:if>
				<c:if test="${manager.sexInt==1}">	
					<div class="radio-box">
						<input name="manager.sexInt" value="男" type="radio" id="sex-1">
						<label for="sex-1">男</label>
					</div>
					<div class="radio-box">
						<input type="radio" id="sex-2" value="女" name="manager.sexInt"  checked>
						<label for="sex-2">女</label>
					</div>
				</c:if>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i> 确认修改</button>
				<c:if test="${manager.statusInt==0}">
					<button  class="btn btn-primary radius" type="button" onclick="alert('我们会加快处理你的请求，谢谢！');"><i class="Hui-iconfont">&#xe632;</i>催促处理</button>
				</c:if>
				<c:if test="${manager.statusInt==1}">
					<button  class="btn btn-primary radius" type="button" onclick="alert('我们会加快处理你的请求，谢谢！');"><i class="Hui-iconfont">&#xe632;</i>催促处理</button>
				</c:if>
				<c:if test="${manager.statusInt!=2}">
					<button  class="btn btn-primary radius" type="button" onclick="changevip();"><i class="Hui-iconfont">&#xe632;</i>重新申请</button>
				</c:if>
				<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
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
</script>
<script type="text/javascript">
	function changevip(){
		$.post(
			"${pageContext.request.contextPath}/manager/changevip",
			{
				"manager.idString":$("#id").val()
			},
			function(data){
				layer.msg('请求成功,可以在左侧菜单查看申请进度!', {
					icon : 6,
					time : 2000
				});
			},
			"text"
		);
		
	}
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>