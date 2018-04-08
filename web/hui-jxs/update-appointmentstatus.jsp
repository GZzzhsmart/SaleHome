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
<link rel="stylesheet" type="text/css" href="<%=path %>/css/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/themes/gray/easyui.css">

<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>经销商审核</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" onsubmit="return checkvolid();" id="form-admin-add" action="<%=path%>/appointment/updateappointment" method="post">
		<input type="hidden" name="appointment.idString" value="${param.idString}" id="idString"/>
		<input type="hidden" name="appointment.empIdString" value="${param.name}" id="idString"/><!-- 员工姓名 -->
		<input type="hidden" name="appointment.userIdString" value="${param.email}" id="idString"/><!-- 用户邮箱 -->
		<input type="hidden" name="appointment.houseIdString" value="${param.house}" id="idString"/><!-- 楼盘信息 -->
		<input type="hidden" name="username" value="${param.username}" id="idString"/><!-- 楼盘信息 -->
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">审核操作：</label>
			<div class="formControls col-xs-4 col-sm-4"> 
				<span class="select-box">
					<select class="select" name="appointment.appStatusInt" onchange="getld(this.value);" id="appointment_appStatusInt" size="1">
						<option value="0">请选择操作(默认忽略)</option>
						<option value="0">已经预约</option>
						<option value="1">未看房</option>
						<option value="2">确认看房</option>
						<option value="3">成功购房</option>
						<option value="4">看房不购房</option>
					</select>
				</span> 
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="built" ></span>
			</div>
		</div>
		<div class="row cl" id="time">
			<label class="form-label col-xs-2 col-sm-3">看房时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" style="width:368px" placeholder="请输入看房时间"   id="openDate" name="appointment.arriveTime" class="input-text  easyui-datetimebox">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">操作备注：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="appointment.reasonString" cols="" id="appointment_reasonString" rows="" class="textarea"  placeholder="说点什么...200个字符以内" dragonfly="true" onKeyUp="checknum(this.value);"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length" id="num">0</em>/150</p>
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="floor" ></span>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit"  id="clkick"><i class="Hui-iconfont">&#xe632;</i> 提交预约并发送通知</button>
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
<script type="text/javascript" src="<%=path %>/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=path %>/css/locale/easyui-lang-zh_CN.js"></script>

<!--请在下方写此页面业务相关的脚本-->
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
	function checknum(name){
		if(name.length<=150){
			$("#num").text(name.length);
		}else{
			layer.msg('最多150个字喔!', {
				icon : 2,
				time : 2000
			});
			$("#appointment_reasonString").val(name.substring(0,150));
			return false;
		}
	}
</script>
<script type="text/javascript">
	function article_save(){
		alert("刷新父级的时候会自动关闭弹层。")
		window.parent.location.reload();
	} 
</script>
<script type="text/javascript">
	$(function(){
		var date = new Date();
		var y = date.getFullYear();  
		var m = date.getMonth()+1;  
		var d = date.getDate();  
		var h = date.getHours(); 
		var mm = date.getMinutes();
		var s = date.getSeconds();
		var str = y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d)+' '+(h<10?('0'+h):h)+':'+(mm<10?('0'+mm):mm)+':'+(s<10?('0'+s):s);  
		$("#openDate").datetimebox({
			value:str,
			required:true,
			showSeconds:true
		});
	});
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>