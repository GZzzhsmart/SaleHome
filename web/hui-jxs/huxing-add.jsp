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
<title>新增户型</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" onsubmit="return checkvolid();" enctype="multipart/form-data" id="form-admin-add" action="<%=path%>/hx/addhouse" method="post">
		<input type="hidden" name="tbuilding.idString" value="" id="buildid"/>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">户型图片：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="btn-upload form-group">
				<input class="input-text upload-url" type="text" name="uploadfile" id="uploadfile" readonly nullmsg="请添加附件！" style="width:200px">
				<a href="javascript:void();" class="btn btn-primary radius upload-btn"><i class="Hui-iconfont">&#xe642;</i> 浏览文件</a>
				<input type="file" multiple name="file" class="input-file">
				</span> 
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">楼盘楼栋：</label>
			<div class="formControls col-xs-4 col-sm-4"> 
				<span class="select-box">
					<select class="select" name="loupan.idString" onchange="getld(this.value);" id="house_buildingsId" size="1">
						<option value="-1">请选择楼盘</option>
						<c:forEach items="${loupanlist}" var="l">
							<option value="${l.idString}">${l.nameString}楼盘</option>
						</c:forEach>
					</select>
				</span> 
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="built" ></span>
			</div>
			<div class="formControls col-xs-4 col-sm-4"> 
				<span class="select-box">
					<select class="select" name="house.buildidString" id="house_buildidString" size="1">
						<option value="-1">请选择楼栋</option>
					</select>
				</span> 
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">户型名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" onblur="checkname(this.value);" placeholder="请输入户型名称" id="house_nameString" name="house.nameString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="nameString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">户型面积：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" style="width:40.3em" autocomplete="off" value="" placeholder="请输入户型面积" onblur="checktotal(this.value);" id="house_areaDouble" name="house.areaDouble">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="total" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">参考价：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" style="width:40.3em"   autocomplete="off"  onblur="checklift(this.value);" placeholder="请输入户型的参考价" id="house_unitPriceDouble" name="house.unitPriceDouble">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="lift" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">户型简介：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="house.introString" cols="" onblur="checkintroString(this.name);" id="house_introString" rows="" class="textarea"  placeholder="说点什么...100个字符以内" dragonfly="true" onKeyUp="checkinfo(this.value)"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length" id="num">0</em>/300</p>
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="introString" ></span>
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
	function checkinfo(name){
		if(name.length<=300){
			$("#num").text(name.length);
		}else{
			layer.msg('最多300个字喔!', {
				icon : 2,
				time : 2000
			});
			$("#house_introString").val(name.substring(0,300));
			return false;
		}
	}

</script>
<script type="text/javascript">
	function article_save(){
		alert("刷新父级的时候会自动关闭弹层。")
		window.parent.location.reload();
	} 
	function getld(name){
		$.post(
	 		"${pageContext.request.contextPath}/hx/getloudong",
	 		{
	 			"loupan.idString":name
	 		},
	 		function(data){
	 			var datainfo="<option value='-1'>请选择楼栋</option>";
				for(var i=0;i<data.length;i++){
					datainfo+="<option value='"+data[i].idString+"'>"+data[i].nameString+"</option>";
				}	
				$("#house_buildidString").html(datainfo);
	 		},	
	 		"json"	
	 	);		
	}
	$("#house_buildidString").change(function(){
		$("#buildid").val($("#house_buildidString").val());
	});
</script>
<script type="text/javascript">
	function checkname(name){
		if(name==''){
			document.getElementById('nameString').style.display='block';
			$("#nameString").text("户型名称不能为空");
		}else{
			document.getElementById('nameString').style.display='none';
		}
	}
	function checktotal(name){
		if(name==''){
			document.getElementById('total').style.display='block';
			$("#total").text("户型层数不能为空");
		}else{
			document.getElementById('total').style.display='none';
		}
	}
	function checklift(name){
		if(name==''){
			document.getElementById('lift').style.display='block';
			$("#lift").text("户型参考价不能为空");
		}else{
			document.getElementById('lift').style.display='none';
		}
	}
	function checkintroString(name){
		if(name==''){
			document.getElementById('introString').style.display='block';
			$("#introString").text("户型简介不能为空");
		}else{
			document.getElementById('introString').style.display='none';
		}
	}
	function checkvolid(){
		var volidvalue=false;
		if($("#house_buildingsId").val()=='-1'){
			layer.msg('请选择楼盘!', {
				icon : 5,
				time : 2000
			});
			volidvalue=false;
		}
		if($("#house_buildingsId").val()==-1){
			document.getElementById('built').style.display='block';
			$("#built").text("请选择楼盘楼栋");
			volidvalue=false;
		}else{
			document.getElementById('built').style.display='none';
		}
		if($("#house_buildidString").val()==-1){
			document.getElementById('built').style.display='block';
			$("#built").text("请选择楼盘楼栋");
			volidvalue=false;
		}else{
			document.getElementById('built').style.display='none';
		}
		if($("#house_nameString").val()==''){
			document.getElementById('nameString').style.display='block';
			$("#nameString").text("户型名称不能为空");
			volidvalue=false;
		}else if($("#house_nameString").val()!=''){
			document.getElementById('nameString').style.display='none';
		}
		if($("#house_areaDouble").val()==''){
			document.getElementById('total').style.display='block';
			$("#total").text("户型面积不能为空");
			volidvalue=false;
		}else if($("#house_areaDouble").val()!=''){
			document.getElementById('total').style.display='none';
		}
		if($("#house_unitPriceDouble").val()==''){
			document.getElementById('lift').style.display='block';
			$("#lift").text("户型参考价不能为空");
			volidvalue=false;
		}else if($("#house_unitPriceDouble").val()!=''){
			document.getElementById('lift').style.display='none';
		}
		if($("#house_introString").val()==''){
			document.getElementById('introString').style.display='block';
			$("#introString").text("户型简介不能为空");
			volidvalue=false;
		}else if($("#house_introString").val()!=''){
			document.getElementById('introString').style.display='none';
			volidvalue=true;
		}
		alert(volidvalue);
		volidvalue=false;
		return volidvalue;
	}
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>