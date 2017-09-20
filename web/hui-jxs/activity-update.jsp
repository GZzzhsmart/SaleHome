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
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="<%=path%>/hui-jxs/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/hui-jxs/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/hui-jxs/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/hui-jxs/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=path%>/hui-jxs/static/h-ui.admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/themes/gray/easyui.css">

<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->
<style>
	.case{}
	.bMap{position: relative;}
	.bMap .map-warp{position: absolute;left:0;width:100%;height:400px;display: none;}
	.bMap input{width:100%;height:30px;line-height: 30px;border:1px solid #d7d7d7;}
	.tangram-suggestion-main{z-index: 9999}
</style>
<title>活动修改</title>
</head>
<body>
<activity class="page-container">
	<form class="form form-horizontal" onsubmit="return check();" enctype="multipart/form-data" id="form-activity-add" method="post" action="<%=path%>/activity/updatesaveactivity">
		<input type="text" name="activity.addressString" id="addr" value="${activity.addressString}"/>
		<input name="activity.logoString" type="hidden" value="${activity.logoString}" />
		<input name="activity.idString" type="hidden" value="${activity.idString}" />
		<input name="activity.urlString" type="hidden" value="${activity.urlString}" />
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">原封面：</label>
			<div class="formControls col-xs-8 col-sm-9"> 
				<span class="btn-upload form-group">
					<img src="<%=path %>/${activity.logoString}" style="width:100px;height:40px">
				</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">活动封面：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="btn-upload form-group">
				<input class="input-text upload-url" type="text" name="uploadfile" id="uploadfile"  style="width:200px">
				<a href="javascript:void();" class="btn btn-primary radius upload-btn"><i class="Hui-iconfont">&#xe642;</i> 浏览文件</a>
				<input type="file" multiple name="fileupinfo.doc" class="input-file" >
				</span> 
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-5 col-sm-2"><span class="c-red">*</span>活动地址：</label>
			<div class="formControls col-xs-8 col-sm-9 case">
				<div class="bMap " id='case3'></div>
				<div id="callback"></div>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">活动楼盘：</label>
			<div class="formControls col-xs-8 col-sm-9"> 
				<span class="select-box">
					<select class="select" name="activity.buildingsIdString" onblur="checkloupan(this.value);" id="activity_buildingsIdString" size="1">
						<option value="-1">请选择活动楼盘</option>
						<c:forEach items="${loupanlist}" var="l">
							<c:if test="${activity.buildingsIdString==l.idString}">
								<option value="${l.idString}" selected="selected">${l.nameString}</option>
							</c:if>
							<c:if test="${activity.buildingsIdString!=l.idString}">
								<option value="${l.idString}">${l.nameString}</option>
							</c:if>
						</c:forEach>
					</select>
				</span> 
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="built" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>活动标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${activity.titleString}" placeholder="请输入活动标题" id="activity_titleString" name="activity.titleString">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>开始时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text  easyui-datetimebox" value="${activity.startTime}" placeholder="请输入活动开始时间" id="activity_startTime" name="activity.startTime">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>结束时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text  easyui-datetimebox" value="${activity.endTime}" placeholder="请输入活动结束时间" id="activity_endTime" name="activity.endTime">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">活动内容：</label>
			<div class="formControls col-xs-8 col-sm-9"> 
				<textarea name="activity.contentString" id="editor" style="width:100%;height:400px;">${activity.contentString}</textarea>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="activity_save_submit();" class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存并提交审核</button>
				<button onClick="getContent();" class="btn btn-secondary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 保存草稿</button>
				<button onClick="removeIframe();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</activity>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=EZPCgQ6zGu6hZSmXlRrUMTpr"></script>
<script type="text/javascript" src="<%=path %>/js/jquery.min1.js"></script>
<script type="text/javascript" src="<%=path %>/js/map.jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=path %>/css/locale/easyui-lang-zh_CN.js"></script>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<%=path%>/hui-jxs/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=path%>/hui-jxs/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="<%=path%>/hui-jxs/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer /作为公共模版分离出去-->
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=path%>/hui-jxs/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="<%=path%>/hui-jxs/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="<%=path%>/hui-jxs/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=path%>/hui-jxs/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript" src="<%=path%>/hui-jxs/lib/webuploader/0.1.5/webuploader.min.js"></script> 
<script type="text/javascript" charset="utf-8" src="<%=path%>/hui-jxs/lib/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path%>/hui-jxs/lib/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path%>/hui-jxs/lib/ueditor/ueditor.all.min.js">
</script>
<script type="text/javascript">

	var ue = UE.getEditor('editor');
	function getContent() {
		var arr = [];
		arr.push("使用editor.getContent()方法可以获得编辑器的内容");
		arr.push("内容为：");
		arr.push(UE.getEditor('editor').getContent());
		alert(arr.join("\n"));
	}
</script>
<script type="text/javascript">
	$(function(){
		$("#case3").bMap({name:"address",address:"${activity.addressString}"});
		$("#case3").bMap({name:"callback",callback:function(address,point){
	 		$("#addr").val($("#Map_input_callback").val());
		}});
	})
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>