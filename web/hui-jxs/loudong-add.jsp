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
<title>新增楼栋</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" onsubmit="return checkvolid();" id="form-admin-add" action="<%=path%>/ld/addloudong" method="post">
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">所属楼盘：</label>
			<div class="formControls col-xs-8 col-sm-9"> 
				<span class="select-box">
					<select class="select" name="loupan.idString" id="loudong_buildingsId" size="1">
						<option value="-1">请选择楼盘</option>
						<c:forEach items="${loupanlist}" var="l">
							<option value="${l.idString}">${l.nameString}楼盘</option>
						</c:forEach>
					</select>
				</span> 
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="built" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">楼栋名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" onblur="checkname(this.value);" placeholder="请输入楼栋名称" id="loudong_nameString" name="loudong.nameString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="nameString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">楼栋总层：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" style="width:26.5em" autocomplete="off" value="" placeholder="请输入楼栋总层数" onblur="checktotal(this.value);" id="loudong_totalFloorInt" name="loudong.totalFloorInt">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="total" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">电梯总数：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" style="width:26.5em"  autocomplete="off"  onblur="checklift(this.value);" placeholder="请输入楼栋电梯总数" id="loudong_totalLiftInt" name="loudong.totalLiftInt">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="lift" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3">每层户数：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" style="width:26.5em"  value="" placeholder="请输入每层户数" onblur="checkfloor(this.value);" id="loudong_floorRoomsInt" name="loudong.floorRoomsInt">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="floor" ></span>
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
	function article_save(){
		alert("刷新父级的时候会自动关闭弹层。")
		window.parent.location.reload();
	} 
</script>
<script type="text/javascript">
	function checkname(name){
		if(name==''){
			document.getElementById('nameString').style.display='block';
			$("#nameString").text("楼栋名称不能为空");
		}else{
			document.getElementById('nameString').style.display='none';
		}
	}
	function checktotal(name){
		if(name==''){
			document.getElementById('total').style.display='block';
			$("#total").text("楼栋层数不能为空");
		}else{
			document.getElementById('total').style.display='none';
		}
	}
	function checklift(name){
		if(name==''){
			document.getElementById('lift').style.display='block';
			$("#lift").text("每层户数不能为空");
		}else{
			document.getElementById('lift').style.display='none';
		}
	}
	function checkfloor(name){
		if(name==''){
			document.getElementById('floor').style.display='block';
			$("#floor").text("每层户数不能为空");
		}else{
			document.getElementById('floor').style.display='none';
		}
	}
	function checkvolid(){
		var volidvalue=false;
		if($("#loudong_buildingsId").val()=='-1'){
			layer.msg('请选择楼盘!', {
				icon : 2,
				time : 2000
			});
			volidvalue=false;
		}
		if($("#loudong_nameString").val()==''){
			document.getElementById('nameString').style.display='block';
			$("#nameString").text("楼栋名称不能为空");
			volidvalue=false;
		}else if($("#loudong_nameString").val()!=''){
			document.getElementById('nameString').style.display='none';
		}
		if($("#loudong_totalFloorInt").val()==''){
			document.getElementById('total').style.display='block';
			$("#total").text("楼栋层数不能为空");
			volidvalue=false;
		}else if($("#loudong_totalFloorInt").val()!=''){
			document.getElementById('total').style.display='none';
		}
		if($("#loudong_totalLiftInt").val()==''){
			document.getElementById('lift').style.display='block';
			$("#lift").text("楼栋电梯总数不能为空");
			volidvalue=false;
		}else if($("#loudong_totalLiftInt").val()!=''){
			document.getElementById('lift').style.display='none';
		}
		if($("#loudong_floorRoomsInt").val()==''){
			document.getElementById('floor').style.display='block';
			$("#floor").text("楼栋电梯总数不能为空");
			volidvalue=false;
		}else if($("#loudong_floorRoomsInt").val()!=''){
			document.getElementById('floor').style.display='none';
			volidvalue=true;
		}
		return volidvalue;
	}
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>