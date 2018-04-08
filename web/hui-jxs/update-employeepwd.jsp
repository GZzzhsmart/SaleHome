<%@page import="com.ht.pojo.TAgency"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContextPath();
    %>
<!--_meta 作为公共模版分离出去-->
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
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxs/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxsstatic/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxslib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxsstatic/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxsstatic/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->
<title>修改密码 </title>
</head>
<body>
<article class="page-container">
	<form action="<%=path %>/yg/updatepwd" method="post" class="form form-horizontal" id="form-change-password">
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-5"><span class="c-red">*</span>旧密码：</label>
			<div class="formControls col-xs-7 col-sm-8">
				<input type="password" class="input-text" onblur="checkpwd(this.value);" autocomplete="off" placeholder="不修改请留空，旧密码" name="an" id="new">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="pwd" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-5"><span class="c-red">*</span>新密码：</label>
			<div class="formControls col-xs-7 col-sm-8">
				<input type="password" class="input-text" onblur="checkonepwd(this.value);" autocomplete="off" placeholder="不修改请留空" name="newpassword" id="newpassword">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="pwd1" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-5"><span class="c-red">*</span>确认密码：</label>
			<div class="formControls col-xs-7 col-sm-8">
				<input type="password" class="input-text" onblur="checktwopwd(this.value);"  autocomplete="off" placeholder="不修改请留空" name="newpassword2" id="newpassword2">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="pwd2" ></span>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-2 col-sm-offset-2">
				<input class="btn btn-primary radius" type="button" onClick="closenow();" value="&nbsp;&nbsp;保存&nbsp;&nbsp;">
				<input class="btn btn-primary radius" type="button" onClick="layer_close();" value="&nbsp;&nbsp;取消&nbsp;&nbsp;">
				<input class="btn btn-primary radius" type="button" onClick="info();" value="快速改密">
			</div>
		</div>
	</form>
</article>
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript">
/*关闭窗口*/
function closenow(){
	var pwd1 = $("#newpassword").val();
	var pwd2 = $("#newpassword2").val();
	var newpwd = $("#new").val();
	if(newpwd==""){
		document.getElementById('pwd').style.display='block';
		$("#pwd").text("旧密码不能为空!");
		return;
	}else if(newpwd!=""){
		$.post(
			"${pageContext.request.contextPath}/yg/initpwd",
			{
			},
			function(data){
				if(data!=newpwd){
					document.getElementById('pwd').style.display='block';
					$("#pwd").text("旧密码输入错误！");
					return;
				}else if(data==newpwd){
					document.getElementById('pwd').style.display='none';
				}
			},
			"text"
		);
	}
	if(pwd1==""){
		document.getElementById('pwd1').style.display='block';
		$("#pwd1").text("新密码不能为空！");
		return;
	}else if(pwd1!=""){
		document.getElementById('pwd1').style.display='none';
	}
	if(pwd2==""){
		document.getElementById('pwd2').style.display='block';
		$("#pwd2").text("确认密码不能为空！");
		return;
	}else if(pwd2!=""){
		document.getElementById('pwd2').style.display='none';
	}
	if(pwd1!=pwd2){
		document.getElementById('pwd2').style.display='block';
		$("#pwd2").text("两次密码输入不一致！");
		return;
	}else if(pwd1==pwd2){
		document.getElementById('pwd2').style.display='none';
	}
	$.post(
		"${pageContext.request.contextPath}/yg/updatepwd",
		{
			"newpassword":$("#newpassword").val(),
			"newpassword2":$("#newpassword2").val()
		},
		function(data){
			if(data=='修改成功'){
				layer.msg('密码修改成功!', {
			 		icon : 6,
			 		time : 2000
			 	});
				setTimeout(function(){
			 		var index = parent.layer.getFrameIndex(window.name);
			 		parent.$('.btn-refresh').click();
			 		parent.layer.close(index);
			 	}, 2000);
			}else{
				layer.msg('密码修改失败!', {
			 		icon : 5,
			 		time : 2000
			 	});
			}
		},
		"text"
	);
// 	layer.msg('密码修改成功!', {
// 		icon : 6,
// 		time : 2000
// 	});
// 	setTimeout(function(){
// 		var index = parent.layer.getFrameIndex(window.name);
// 		parent.$('.btn-refresh').click();
// 		parent.layer.close(index);
// 	}, 2000);
}

</script>
<script type="text/javascript">
function checkpwd(name){
	if(name==""){
		document.getElementById('pwd').style.display='block';
		$("#pwd").text("旧密码不能为空！");
		
	}else if(name!=""){
		$.post(
			"${pageContext.request.contextPath}/yg/initpwd",
			{
			},
			function(data){
				if(name!=data){
					document.getElementById('pwd').style.display='block';
					$("#pwd").text("旧密码输入错误！");
					
				}else if(data==name){
					document.getElementById('pwd').style.display='none';
				}
			},
			"text"
		);
	}
}
function checkonepwd(name){
	if(name==""){
		document.getElementById('pwd1').style.display='block';
		$("#pwd1").text("新密码不能为空！");
	}else{
		document.getElementById('pwd1').style.display='none';
	}
	
}
function checktwopwd(name){
	if(name==""){
		document.getElementById('pwd2').style.display='block';
		$("#pwd2").text("确认密码不能为空！");
	}else{
		document.getElementById('pwd2').style.display='none';
	}
	
}
</script>
<script type="text/javascript">
	function info(){
		alert("快速修改密码:编辑短信内容'新密码'发送到:17607975702即可快速改密");
	}

</script>
</body>
</html>