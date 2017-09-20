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
<title>用户修改</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" enctype="multipart/form-data" onsubmit="return checkvolid();" id="form-admin-add" action="<%=path%>/user/saveuserinfo" method="post">
		<input type="hidden" name="user.idString" value="${user.idString}"/>
		<input type="hidden" name="user.headiconString" value="${user.headiconString}"/>
		<input type="hidden" name="user.birthday" value="${user.birthday}"/>
		<input type="hidden" name="user.statusInt" value="${user.statusInt}"/>
		<input type="hidden" name="user.reasonString" value="${user.reasonString}"/>
		<input type="hidden" name="user.usertypeInt" value="${user.usertypeInt}"/>
		<input type="hidden" name="user.createTime" value="${user.createTime}"/>
		<input type="hidden" name="user.pwdString" value="${user.pwdString}"/>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">原头像：</label>
			<img src="<%=path %>/${user.headiconString}"  style="height:100px;width:100px;border-radius:100%" >
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">更换头像：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="btn-upload form-group">
				<input class="input-text upload-url" type="text" value="${user.headiconString}" name="uploadfile" id="uploadfile" readonly nullmsg="请添加附件！" style="width:200px">
				<a href="javascript:void();" class="btn btn-primary radius upload-btn"><i class="Hui-iconfont">&#xe642;</i> 浏览文件</a>
				<input type="file" multiple name="file" class="input-file" >
				</span> 
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>真实姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${user.nameString}" onblur="checkname(this.value);" placeholder="请输入真实姓名" id="user_nameString" name="user.nameString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="nameString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>用户昵称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${user.nicknameString}" onblur="checknickname(this.value);" placeholder="请输入用户昵称" id="user_nicknameString" name="user.nicknameString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="nicknameString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>用户邮箱：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="email" class="input-text" value="${user.emailString}" onblur="checkemail(this.value);" placeholder="请输入用户邮箱" id="user_emailString" name="user.emailString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="emailString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>联系方式：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" value="${user.phoneString}" onblur="checkphoneString(this.value);" placeholder="请输入用户手机号码" id="user_phoneString" style="width:59em" name="user.phoneString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="phoneString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>用户微信：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${user.wechatString}" onblur="checkwechatString(this.value);" placeholder="请输入用户微信" id="user_wechatString" name="user.wechatString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="wechatString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>用户Q Q：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" value="${user.qqString}" onblur="checkqqString(this.value);" maxlength="10"  placeholder="请输入用户手机号码" id="user_qqString" name="user.qqString" style="width:59em">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="qqString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户性别：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<c:if test="${user.genderString=='男'}">	
					<div class="radio-box">
						<input name="user.genderString"  value="男" type="radio" id="sex-1" checked>
						<label for="sex-1">男</label>
					</div>
					<div class="radio-box">
						<input type="radio" id="sex-2" value="女"  name="user.genderString">
						<label for="sex-2">女</label>
					</div>
				</c:if>
				<c:if test="${user.genderString=='女'}">	
					<div class="radio-box">
						<input name="user.genderString" value="男" type="radio" id="sex-1">
						<label for="sex-1">男</label>
					</div>
					<div class="radio-box">
						<input type="radio" id="sex-2" value="女" name="user.genderString"  checked>
						<label for="sex-2">女</label>
					</div>
				</c:if>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i> 确认修改</button>
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
	function gethuxing(name){
		alert(name);
		$("#buildid").val(name);
		$.post(
	 		"${pageContext.request.contextPath}/room/gethouselist",
	 		{
	 			"loudong.idString":name
	 		},
	 		function(data){
	 			var datainfo="<option value='-1'>请选择户型</option>";
				for(var i=0;i<data.length;i++){
					datainfo+="<option value='"+data[i].idString+"'>"+data[i].nameString+"</option>";
				}	
				alert(datainfo);
				$("#room_buildidString").html(datainfo);
	 		},	
	 		"json"	
	 	);		
	}
	$("#room_buildidString").change(function(){
		$("#huxingid").val($("#room_buildidString").val());
	});
</script>
<script type="text/javascript">
	function checkname(name){
		if(name==''){
			document.getElementById('nameString').style.display='block';
			$("#nameString").text("真实姓名不能为空");
		}else{
			document.getElementById('nameString').style.display='none';
		}
	}
	function checknickname(name){
		if(name==''){
			document.getElementById('nicknameString').style.display='block';
			$("#nicknameString").text("用户昵称不能为空");
		}else{
			document.getElementById('nicknameString').style.display='none';
		}
	}
	function checkemail(name){
		if(name==''){
			document.getElementById('emailString').style.display='block';
			$("#emailString").text("用户邮箱不能为空");
		}else{
			document.getElementById('emailString').style.display='none';
		}
	}
	function checkphoneString(name){
		if(name==''){
			document.getElementById('phoneString').style.display='block';
			$("#phoneString").text("联系方式不能为空");
		}else{
			document.getElementById('phoneString').style.display='none';
		}
	}
	function checkwechatString(name){
		if(name==''){
			document.getElementById('wechatString').style.display='block';
			$("#wechatString").text("用户微信不能为空");
		}else{
			document.getElementById('wechatString').style.display='none';
		}
	}
	function checkqqString(name){
		if(name==''){
			document.getElementById('qqString').style.display='block';
			$("#qqString").text("用户qq不能为空");
		}else{
			if(name.length<6 || name.length>10){
				$("#qqString").text("qq为6-10位之间的数字不能为空");
				document.getElementById('qqString').style.display='block';
			}else{
				document.getElementById('qqString').style.display='none';
			}
		}
	}
	function checkvolid(){
		var volidvalue=false;
		if($("#user_nameString").val()==''){
			document.getElementById('nameString').style.display='block';
			$("#nameString").text("真实姓名不能为空");
			volidvalue=false;
		}else if($("#user_nameString").val()!=''){
			document.getElementById('nameString').style.display='none';
			volidvalue=true;
		}
		if($("#user_nicknameString").val()==''){
			document.getElementById('nicknameString').style.display='block';
			$("#nicknameString").text("用户昵称不能为空");
			volidvalue=false;
		}else if($("#user_nicknameString").val()!=''){
			document.getElementById('nicknameString').style.display='none';
			volidvalue=true;
		}
		if($("#user_emailString").val()==''){
			document.getElementById('emailString').style.display='block';
			$("#emailString").text("用户邮箱不能为空");
			volidvalue=false;
		}else if($("#user_emailString").val()!=''){
			document.getElementById('emailString').style.display='none';
			volidvalue=true;
		}
		if($("#user_phoneString").val()==''){
			document.getElementById('phoneString').style.display='block';
			$("#phoneString").text("联系方式不能为空");
			volidvalue=false;
		}else if($("#user_phoneString").val()!=''){
			document.getElementById('phoneString').style.display='none';
			volidvalue=true;
		}
		if($("#user_wechatString").val()==''){
			document.getElementById('wechatString').style.display='block';
			$("#wechatString").text("用户微信不能为空");
			volidvalue=false;
		}else if($("#user_wechatString").val()!=''){
			document.getElementById('wechatString').style.display='none';
			volidvalue=true;
		}
		if($("#user_qqString").val()==''){
			document.getElementById('qqString').style.display='block';
			$("#qqString").text("用户QQ能为空");
			volidvalue=false;
		}else if($("#user_qqString").val()!=''){
			if($("#user_qqString").val().length<6 || $("#user_qqString").val().length>10){
				$("#qqString").text("qq为6-10位之间的数字不能为空");
				document.getElementById('qqString').style.display='block';
			}else{
				document.getElementById('qqString').style.display='none';
				volidvalue=true;
			}
		}
		return volidvalue;
	}
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>