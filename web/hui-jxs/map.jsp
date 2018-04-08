<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
	<style>
		/* reset */
		html,body,h1,h2,h3,h4,h5,h6,div,dl,dt,dd,ul,ol,li,p,blockquote,pre,hr,figure,table,caption,th,td,form,fieldset,legend,input,button,textarea,menu{margin:0;padding:0;} 
		
		body{padding:100px;font-size: 14px;}
		h1{font-size: 26px;}
		p{font-size: 14px; margin-top: 10px;}
		pre{background:#eee;border:1px solid #ddd;border-left:4px solid #f60;padding:15px;margin-top: 15px;}
		h2{font-size: 20px;margin-top: 20px;}
		.case{margin-top: 15px;width:400px;}

		.bMap{position: relative;}
		.bMap .map-warp{position: absolute;left:0;width:100%;height:400px;top:34px;display: none;}
		.bMap input{width:100%;height:30px;line-height: 30px;border:1px solid #d7d7d7;}
		.tangram-suggestion-main{z-index: 9999}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=EZPCgQ6zGu6hZSmXlRrUMTpr"></script>
	<script type="text/javascript" src="<%=path %>/js/jquery.min1.js"></script>
	<script type="text/javascript" src="<%=path %>/js/map.jquery.min.js"></script>
</head>
<body>
<div class="case">
	<div class="bMap" id='case3'></div>
	 <div id="callback">
	 	
	 </div>

</div>
</body>
<script>
	$(function(){
		$("#case1").bMap();
		$("#case2").bMap({name:"address",address:"绵阳金家林软件园奥锐恩达教育科技有限公司"});
		$("#case3").bMap({name:"callback",callback:function(address,point){
			$("#callback").html("您选择的地址是:"+JSON.stringify(address)+"经纬度"+JSON.stringify(point))
		}});
		
	})
	
</script>
</html>