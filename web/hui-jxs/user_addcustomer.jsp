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
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,customer-scalable=no" />
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
<title>购房信息的填写</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" enctype="multipart/form-data" onsubmit="return checkvolid();" id="form-admin-add" action="<%=path%>/appointment/querenbuy" method="post">
		<input type="hidden" name="customer.addressString" id="addr"/>
		<input type="hidden" name="appointment.idString" value="${param.id}"/>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>地图地址：</label>
			<div class="formControls col-xs-8 col-sm-9 case">
				<div class="bMap " id='case3'></div>
				<div id="callback"></div>
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="address" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>身份证号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" value="" style="width:39.3em" onblur="checkeidentityIdString(this.value);" placeholder="请输入客户身份证号" id="customer_identityIdString" name="customer.identityIdString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="identityIdString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>共同购房人：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" onblur="checktogenameString(this.value);" placeholder="请输入真实姓名" id="customer_togenameString" name="customer.togetherString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="togenameString" ></span>
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
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
	var date = new Date();
	var y = date.getFullYear();  
	var m = date.getMonth()+1;  
	var d = date.getDate();  
	var h = date.getHours(); 
	var mm = date.getMinutes();
	var s = date.getSeconds();
	var datetime = y+'/'+(m<10?('0'+m):m)+'/'+(d<10?('0'+d):d);
	var str = y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d)+' '+(h<10?('0'+h):h)+':'+(mm<10?('0'+mm):mm)+':'+(s<10?('0'+s):s);  
	$(function(){
		$("#case1").bMap();
		$("#case3").bMap({name:"callback",callback:function(address,point){
	//  		$("#addr").val(JSON.stringify(address)+JSON.stringify(point))
	 		$("#addr").val($("#Map_input_callback").val());
		}});
	})
</script>
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
	function checkeidentityIdString(name){
		if(name==''){
			document.getElementById('identityIdString').style.display='block';
			$("#identityIdString").text("身份证号码不能为空");
		}else{
			document.getElementById('identityIdString').style.display='none';
		}
	}
	function checktogenameString(name){
		if(name==''){
			document.getElementById('togenameString').style.display='block';
			$("#togenameString").text("共同购房人不能为空");
		}else{
			document.getElementById('togenameString').style.display='none';
		}
	}
	function checkvolid(){
		var volidvalue=false;
		if($("#addr").val()==""){
			document.getElementById('address').style.display='block';
			$("#address").text("客户地址不能为空");
			volidvalue=false;
		}else if($("#addr").val()!=''){
			document.getElementById('address').style.display='none';
		}
		if($("#customer_identityIdString").val()==''){
			document.getElementById('identityIdString').style.display='block';
			$("#identityIdString").text("身份证号不能为空");
			volidvalue=false;
		}else if($("#customer_identityIdString").val()!=''){
			document.getElementById('identityIdString').style.display='none';
		}
		if($("#customer_togenameString").val()==''){
			document.getElementById('togenameString').style.display='block';
			$("#togenameString").text("共同购房人不能为空");
			volidvalue=false;
		}else if($("#customer_togenameString").val()!=''){
			document.getElementById('togenameString').style.display='none';
			volidvalue=true;
		}
		return volidvalue;
	}
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>