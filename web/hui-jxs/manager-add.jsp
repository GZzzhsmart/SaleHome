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
<title>新增管理员</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" enctype="multipart/form-data" onsubmit="return checkvalid();" id="form-admin-add" action="<%=path%>/manager/addmanager" method="post">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">管理员头像：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="btn-upload form-group">
				<input class="input-text upload-url" type="text" name="uploadfile" id="uploadfile" readonly nullmsg="请添加附件！" style="width:200px">
				<a href="javascript:void();" class="btn btn-primary radius upload-btn"><i class="Hui-iconfont">&#xe642;</i> 浏览文件</a>
				<input type="file" multiple name="file" class="input-file">
				</span> 
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>管理员账号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" style="width:40em" onblur="checkphoneString(this.value);" placeholder="请输入管理员账号" id="manager_phoneString" name="manager.phoneString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="phoneString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>登录密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" onblur="checkpasswordString(this.value);" placeholder="请输入管理员密码" id="manager_passwordString" name="manager.passwordString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="passwordString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>管理员姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" onblur="checkname(this.value);" placeholder="请输入真实姓名" id="manager_nameString" name="manager.nameString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="nameString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>管理员性别：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<div class="radio-box">
					<input name="manager.sexInt" type="radio" value="0" id="sex-1" checked>
					<label for="sex-1">男</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-2" value="1" name="manager.sexInt">
					<label for="sex-2">女</label>
				</div>
			</div>
		</div>
		<div style="height:40px"></div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i> 确认新增</button>
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
	function checkphoneString(name){
		if(name==''){
			document.getElementById('phoneString').style.display='block';
			$("#phoneString").text("管理员账号不能为空");
		}else{
			if(name.length!=11){
				document.getElementById('phoneString').style.display='block';
				$("#phoneString").text("管理员账号格式不正确");	
			}else{
				document.getElementById('phoneString').style.display='none';
			}
		}
	}
	function checkpasswordString(name){
		if(name==''){
			document.getElementById('passwordString').style.display='block';
			$("#passwordString").text("登录密码不能为空");
		}else{
			if(name.length<6){
				document.getElementById('passwordString').style.display='block';
				$("#passwordString").text("登录密码至少为六位");	
			}else{
				document.getElementById('passwordString').style.display='none';
			}
		}
	}
	function checkname(name){
		if(name==''){
			document.getElementById('nameString').style.display='block';
			$("#nameString").text("管理员姓名不能为空");
		}else{
			document.getElementById('nameString').style.display='none';
		}
	}
	function checkvalid(){
		var volidvalue=false;
		if($("#manager_phoneString").val()==''){
			document.getElementById('phoneString').style.display='block';
			$("#phoneString").text("管理员账号不能为空");
			volidvalue=false;
		}else if($("#manager_phoneString").val()!=''){
			if($("#manager_phoneString").val().length!=11){
				document.getElementById('phoneString').style.display='block';
				$("#phoneString").text("管理员账号格式不正确");
				volidvalue=false;
			}else{
				document.getElementById('phoneString').style.display='none';
			}
		}
		if($("#manager_passwordString").val()==''){
			document.getElementById('passwordString').style.display='block';
			$("#passwordString").text("登录密码不能为空");
			volidvalue=false;
		}else if($("#manager_passwordString").val()!=''){
			if($("#manager_phoneString").val().length<6){
				document.getElementById('passwordString').style.display='block';
				$("#passwordString").text("管理员密码至少为六位数");
				volidvalue=false;
			}else{
				document.getElementById('passwordString').style.display='none';
			}
		}
		if($("#manager_nameString").val()==''){
			document.getElementById('nameString').style.display='block';
			$("#nameString").text("姓名不能为空");
			volidvalue=false;
		}else if($("#manager_nameString").val()!=''){
			document.getElementById('nameString').style.display='none';
			volidvalue=true;
		}
		return volidvalue;
	}
</script>
<script type="text/javascript">

</script>
</body>
</html>