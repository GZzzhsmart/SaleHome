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
<title>公司商标</title>
</head>
<body>
<article class="page-container">
		<div class="row cl" style="margin-left:70px">
			<img src="<%=path%>/${tagency.logoString}" style="width:200px;height:200px;border-radius:100%"/>
		</div>
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
			$("#nameString").text("房号名称不能为空");
		}else{
			document.getElementById('nameString').style.display='none';
		}
	}
	function checktotal(name){
		if(name==''){
			document.getElementById('total').style.display='block';
			$("#total").text("房号层数不能为空");
		}else{
			document.getElementById('total').style.display='none';
		}
	}
	function checklift(name){
		if(name==''){
			document.getElementById('lift').style.display='block';
			$("#lift").text("房号电梯总数不能为空");
		}else{
			document.getElementById('lift').style.display='none';
		}
	}
	function checkfloor(name){
		if(name==''){
			document.getElementById('floor').style.display='block';
			$("#floor").text("房号电梯总数不能为空");
		}else{
			document.getElementById('floor').style.display='none';
		}
	}
	function checkvolid(){
		var volidvalue=false;
		if($("#room_nameString").val()==''){
			document.getElementById('nameString').style.display='block';
			$("#nameString").text("房号名称不能为空");
			volidvalue=false;
		}else if($("#room_nameString").val()!=''){
			document.getElementById('nameString').style.display='none';
			volidvalue=true;
		}
		if($("#room_totalFloorInt").val()==''){
			document.getElementById('total').style.display='block';
			$("#total").text("房号层数不能为空");
			volidvalue=false;
		}else if($("#room_totalFloorInt").val()!=''){
			document.getElementById('total').style.display='none';
			volidvalue=true;
		}
		if($("#room_totalLiftInt").val()==''){
			document.getElementById('lift').style.display='block';
			$("#lift").text("房号电梯总数不能为空");
			volidvalue=false;
		}else if($("#room_totalLiftInt").val()!=''){
			document.getElementById('lift').style.display='none';
			volidvalue=true;
		}
		if($("#room_floorRoomsInt").val()==''){
			document.getElementById('floor').style.display='block';
			$("#floor").text("房号电梯总数不能为空");
			volidvalue=false;
		}else if($("#room_floorRoomsInt").val()!=''){
			document.getElementById('floor').style.display='none';
			volidvalue=true;
		}
		if($("#room_buildingsId").val()=='-1'){
			layer.msg('请选择楼盘!', {
				icon : 5,
				time : 2000
			});
			volidvalue=false;
		}
		return volidvalue;
	}
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>