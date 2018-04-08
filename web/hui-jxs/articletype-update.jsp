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
	<title>文章类别的修改</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" onsubmit="return checkvolid();" id="form-admin-add" action="<%=path%>/wztype/updatearticletype" method="post">
		<input type="hidden" name="tArticleType.idString"  value="${tArticleType.idString}"/>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>文章类别名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" onblur="checkname(this.value);" value="${tArticleType.nameString}" placeholder="请输入文章类别名称" id="tArticleType_nameString" name="tArticleType.nameString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="nameString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>文章类别描述：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" onblur="checkedesString(this.value);" value="${tArticleType.desString}" placeholder="请输入文章类别描述" maxlength="20" id="tArticleType_desString" name="tArticleType.desString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="desString" ></span>
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
			if(name==''){
				document.getElementById('nameString').style.display='block';
				$("#nameString").text("文章类别名称不能为空");
				document.getElementById('nameString').focus();
			}else{
				document.getElementById('nameString').style.display='none';
			}
		}
		function checkedesString(name){
			if(name==''){
				document.getElementById('desString').style.display='block';
				$("#desString").text("文章类别名称不能为空");
				document.getElementById('desString').focus();
			}else{
				document.getElementById('desString').style.display='none';
			}
			
		}
		function checkvolid(){
			var isok = false;
			if($("#tArticleType_nameString").val()==""){
				document.getElementById('nameString').style.display='block';
				$("#nameString").text("文章类别名称不能为空");
				document.getElementById('nameString').focus();
				isok = false;
			}else if($("#tArticleType_nameString").val()!=""){
				document.getElementById('nameString').style.display='none';
				isok = true;
			}
			if($("#tArticleType_desString").val()==""){
				document.getElementById('desString').style.display='block';
				$("#desString").text("文章类别名称不能为空");
				document.getElementById('desString').focus();
				isok = false;
			}else if($("#tArticleType_nameString").val()!=""){
				document.getElementById('desString').style.display='none';
				isok = true;
			}
			return isok;
		}
	</script>
</body>
</html>