<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContentType();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>HUI 用户注册界面</title>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/hui.css" />
</head>
<body style="background:#F4F5F6;">
<header class="hui-header">
	<div id="hui-back"></div>
	<h1>HUI 用户注册界面</h1>
</header>
<div class="hui-wrap">
	<div class="hui-center-title" style="margin-top:35px;"><h1 style="border:0px;">注册成为新用户</h1></div>
	<div style="margin:28px; margin-bottom:15px;" class="hui-form" id="form1">
		<div class="hui-form-items">
			<input type="text" class="hui-input hui-input-clear" placeholder="用户名" checkType="string" checkData="5,20" checkMsg="用户名应为5-20个字符" />
		</div>
		<div class="hui-form-items">
			<input type="password" class="hui-input hui-pwd-eye" placeholder="登录密码" checkType="string" id="pwd" checkData="6,20" checkMsg="密码应为6-20个字符" />
		</div>
		<div class="hui-form-items">
			<input type="password" class="hui-input hui-pwd-eye" placeholder="确认密码" checkType="sameWithId" checkData="pwd" checkMsg="两次密码不一致"  />
		</div>
	</div>
	<div style="padding:28px; padding-top:0px;">
		<button type="button" class="hui-button hui-button-large hui-primary" id="submit">立即注册</button>
	</div>
</div>
<script type="text/javascript" src="<%=path %>/js/hui.js" charset="UTF-8"></script>
<script src="<%=path %>/js/hui-form.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
hui('#submit').click(function(){
	//验证
	var res = huiFormCheck('#form1');
	//提交
	if(res){hui.iconToast('验证通过！');}
});
</script>
</body>
</html>