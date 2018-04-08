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
	<style>
		.case{}
		.bMap{position: relative;}
		.bMap .map-warp{position: absolute;left:0;width:100%;height:400px;display: none;}
		.bMap input{width:100%;height:30px;line-height: 30px;border:1px solid #d7d7d7;}
		.tangram-suggestion-main{z-index: 9999}
	</style>
	<title>员工资料的新增</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" enctype="multipart/form-data" onsubmit="return checkvalid();" id="form-admin-add" action="<%=path%>/yg/addemployee" method="post">
		<input type="hidden" name="employee.addressString"  id="addr"/>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">更换头像：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="btn-upload form-group">
				<input class="input-text upload-url" type="text" name="uploadfile" id="uploadfile" readonly nullmsg="请添加附件！" style="width:200px">
				<a href="javascript:void();" class="btn btn-primary radius upload-btn"><i class="Hui-iconfont">&#xe642;</i> 浏览文件</a>
				<input type="file" multiple name="file" class="input-file" >
				</span> 
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>请选择楼盘：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					<select name="employee.buildingIdString" onblur="checkname(this.value);" id="loupanname" class="select">
						<option value="-1">旗下的全部楼盘</option>
						<c:forEach items="${loupanlist}" var="l">
							<option value="${l.idString}">${l.nameString}</option>
						</c:forEach>
					</select>
				</span>
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="name" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>真实姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" onblur="checknameString(this.value);" placeholder="请输入正实姓名" id="employee_nameString" name="employee.nameString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="nameString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>用户邮箱：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="email" class="input-text" onblur="checkemailString(this.value);" placeholder="请输入用户邮箱" id="employee_emailString" name="employee.emailString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="emailString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>联系方式：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" onblur="checkphoneString(this.value);" placeholder="请输入用户手机号码" id="employee_phoneString" name="employee.phoneString" style="width:39.3em">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="phoneString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>基本工资：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" value="" onblur="checksalary(this.value);" placeholder="请输入员工基本工资" id="employee_basicSalaryDouble" name="employee.basicSalaryDouble" style="width:39.3em">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="salary" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>用户微信：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" onblur="checkwechatString(this.value);" placeholder="请输入用户微信账号" id="employee_wechatString" name="employee.wechatString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="wechatString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>用户Q Q：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" onblur="checkqqString(this.value);" placeholder="请输入用户QQ号码" id="employee_qqString" name="employee.qqString"  style="width:39.3em">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="qqString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户性别：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<div class="radio-box">
					<input name="employee.genderString"  value="男" type="radio" id="sex-1" checked>
					<label for="sex-1">男</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-2" value="女"  name="employee.genderString">
					<label for="sex-2">女</label>
				</div>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>员工职务：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<div class="radio-box">
					<input name="employee.typeInt"  value="0" type="radio" id="sex-1">
					<label for="sex-1">总经理</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-2" value="1"  name="employee.typeInt"  checked>
					<label for="sex-2">普通员工</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-3" value="2"  name="employee.typeInt">
					<label for="sex-3">财政部</label>
				</div>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>家庭地址：</label>
			<div class="formControls col-xs-8 col-sm-9 case">
				<div class="bMap " id='case3'></div>
				<div id="callback"></div>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">个人说明：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="employee.desString" id="employee.desString" cols="" rows="" class="textarea"  placeholder="个人简介...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="楼盘简介不能为空！" onKeyUp="$.Huitextarealength(this,200)"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">工作经验：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="employee.expString" id="employee.expString" cols="" rows="" class="textarea"  placeholder="工作经验简介...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="楼盘简介不能为空！" onKeyUp="$.Huitextarealength(this,200)"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">个人简介：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="employee.introString" id="employee.introString" cols="" rows="" class="textarea"  placeholder="工作经验简介...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="楼盘简介不能为空！" onKeyUp="$.Huitextarealength(this,200)"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i> 确认新增</button>
				<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</article>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=EZPCgQ6zGu6hZSmXlRrUMTpr"></script>
	<script type="text/javascript" src="<%=path %>/js/jquery.min1.js"></script>
	<script type="text/javascript" src="<%=path %>/js/map.jquery.min.js"></script>
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
	$(function(){
		$("#case3").bMap({name:"callback",callback:function(address,point){
	 		$("#addr").val($("#Map_input_callback").val());
		}});
	})
	</script>
	<script type="text/javascript">
		function article_save(){
			alert("刷新父级的时候会自动关闭弹层。")
			window.parent.location.reload();
		} 
	</script>
	<script type="text/javascript">
		function checkname(name){
			if(name==-1){
				document.getElementById('name').style.display='block';
				$("#name").text("楼盘名称不能为空");
			}else if(name!=''){
				document.getElementById('name').style.display='none';
			}
		}
		function checknameString(name){
			if(name==""){
				document.getElementById('nameString').style.display='block';
				$("#nameString").text("员工姓名不能为空");
			}else if(name!=''){
				document.getElementById('nameString').style.display='none';
			}
		}
		function checkemailString(name){
			if(name==''){
				document.getElementById('emailString').style.display='block';
				$("#emailString").text("员工邮箱不能为空");
			}else if(name!=''){
				document.getElementById('emailString').style.display='none';
			}
		}
		function checksalary(name){
			if(name==''){
				document.getElementById('salary').style.display='block';
				$("#salary").text("员工基本工资不能为空");
			}else{
				document.getElementById('salary').style.display='none';
			}
		}
		function checkphoneString(name){
			if(name==''){
				document.getElementById('phoneString').style.display='block';
				$("#phoneString").text("员工联系方式不能为空");
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
				$("#qqString").text("用户QQ不能为空");
			}else{
				document.getElementById('qqString').style.display='none';
			}
		}
		function checkvalid(){
			var checkorder=false;
			if($("#loupanname").val()==-1){
				document.getElementById('name').style.display='block';
				$("#name").text("楼盘名称不能为空");
				checkorder=false;
			}else if($("#loupanname").val()!=-1){
				document.getElementById('name').style.display='none';
				checkorder=true;
			}
			if($("#employee_nameString").val()==''){
				document.getElementById('nameString').style.display='block';
				$("#nameString").text("真实姓名不能为空");
				checkorder=false;
			}else if($("#employee_nameString").val()!=''){
				document.getElementById('nameString').style.display='none';
				checkorder=true;
			}
			if($("#employee_phoneString").val()==''){
				document.getElementById('phoneString').style.display='block';
				$("#phoneString").text("员工联系方式不能为空");
				checkorder=false;
			}else if($("#employee_phoneString").val()!=''){
				document.getElementById('phoneString').style.display='none';
				checkorder=true;
			}
			if($("#employee_basicSalaryDouble").val()==''){
				document.getElementById('salary').style.display='block';
				$("#salary").text("员工基本工资不能为空");
				checkorder=false;
			}else if($("#employee_basicSalaryDouble").val()!=''){
				document.getElementById('salary').style.display='none';
				checkorder=true;
			}
			if($("#employee_phoneString").val()==''){
				document.getElementById('emailString').style.display='block';
				$("#emailString").text("员工邮箱不能为空");
				checkorder=false;
			}else if($("#employee_emailString").val()!=''){
				document.getElementById('emailString').style.display='none';
				checkorder=true;
			}
			if($("#employee_wechatString").val()==''){
				document.getElementById('wechatString').style.display='block';
				$("#wechatString").text("用户微信不能为空");
				checkorder=false;
			}else if($("#employee_wechatString").val()!=''){
				document.getElementById('wechatString').style.display='none';
				checkorder=true;
			}
			if($("#employee_qqString").val()==''){
				document.getElementById('qqString').style.display='block';
				$("#qqString").text("用户QQ不能为空");
				checkorder=false;
			}else if($("#employee_qqString").val()!=''){
				document.getElementById('qqString').style.display='none';
				checkorder=true;
			}
			return checkorder;
		}
	</script>
</body>
</html>