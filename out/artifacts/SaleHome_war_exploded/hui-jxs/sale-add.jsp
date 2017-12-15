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
	<title>员工资料的新增</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal"  onsubmit="return checkvolid();" id="form-admin-add" action="<%=path%>/sale/saveaddsale" method="post">
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售客户：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					<select name="sale.customerIdString" id="sale_customerIdString" onblur="checkcustomerIdString(this.value);" class="select">
						<option value="-1">请选择销售客户</option>
						<c:forEach items="${customerlist}" var="l">
							<option value="${l.idString}">${l.nameString}</option>
						</c:forEach>
					</select>
				</span>
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="customerIdString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售房号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					<select name="sale.roomIdString" id="sale_roomIdString" onblur="checkroomIdString(this.value);" class="select">
						<option value="-1">请选择销售房号</option>
						<c:forEach items="${roomlist}" var="l">
							<option value="${l.idString}">${l.huxing.tbuilding.buildings.nameString}楼盘${l.huxing.tbuilding.nameString}楼栋${l.huxing.nameString}户型${l.nameString}</option>
						</c:forEach>
					</select>
				</span>
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="roomIdString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="date" class="input-text" onblur="checksaleTimeString(this.value);" placeholder="请输入销售时间" id="sale_saleTimeString" name="sale.saleTimeString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="saleTimeString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售单价：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" onblur="checkunitPriceDouble(this.value);" placeholder="请输入销售单价" id="sale_unitPriceDouble" name="sale.unitPriceDouble" style="width:26.6em">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="unitPriceDouble" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售折扣：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" onblur="checkdiscountDouble(this.value);" placeholder="请输入销售折扣" id="sale_discountDouble" name="sale.discountDouble" style="width:26.6em">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="discountDouble" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>销售总价：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" onblur="checktotalCostDouble(this.value);" placeholder="请输入销售总价" id="sale_totalCostDouble" name="sale.totalCostDouble" style="width:26.6em">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="totalCostDouble" ></span>
			</div>
		</div>
		<div style="height:30px"></div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-2 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i>确认新增并提交审核</button>
				<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</article>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="<%=path %>/js/jquery.min1.js"></script>
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
		function article_save(){
			alert("刷新父级的时候会自动关闭弹层。")
			window.parent.location.reload();
		} 
	</script>
	<script type="text/javascript">
		function checkcustomerIdString(name){
			if(name==-1){
				document.getElementById('customerIdString').style.display='block';
				$("#customerIdString").text("请选择销售客户");
			}else{
				document.getElementById('customerIdString').style.display='none';
			}
		}
		function checkroomIdString(name){
			if(name==-1){
				document.getElementById('roomIdString').style.display='block';
				$("#roomIdString").text("请选择销售房号");
			}else{
				document.getElementById('roomIdString').style.display='none';
			}
		}
		function checksaleTimeString(name){
			if(name==""){
				document.getElementById('saleTimeString').style.display='block';
				$("#saleTimeString").text("销售时间不能为空");
			}else{
				document.getElementById('saleTimeString').style.display='none';
			}
			
		}
		function checkunitPriceDouble(name){
			if(name==""){
				document.getElementById('unitPriceDouble').style.display='block';
				$("#unitPriceDouble").text("销售单价不能为空");
			}else{
				if(name<0){
					document.getElementById('unitPriceDouble').style.display='block';
					$("#unitPriceDouble").text("请输入正确的销售价格不能为空");
				}else{
					document.getElementById('unitPriceDouble').style.display='none';
				}
			}
		}
		function checkdiscountDouble(name){
			if(name==""){
				document.getElementById('discountDouble').style.display='block';
				$("#discountDouble").text("销售折扣不能为空");
			}else{
				if(name<0){
					document.getElementById('discountDouble').style.display='block';
					$("#discountDouble").text("销售折扣不能小于0");
				}else{
					document.getElementById('discountDouble').style.display='none';
				}
			}
		}
		function checktotalCostDouble(name){
			if(name==""){
				document.getElementById('totalCostDouble').style.display='block';
				$("#totalCostDouble").text("销售总价不能为空");
			}else{
				document.getElementById('totalCostDouble').style.display='none';
			}
			
		}
		function checkvolid(){
			var isok=false;
			if($("#sale_customerIdString").val()==-1){
				document.getElementById('customerIdString').style.display='block';
				$("#customerIdString").text("请选择销售客户");
				isok=false;
			}else if($("#sale_customerIdString").val()!=-1){
				document.getElementById('customerIdString').style.display='none';
			}
			if($("#sale_roomIdString").val()==-1){
				document.getElementById('roomIdString').style.display='block';
				$("#roomIdString").text("请选择销售房号");
				isok=false;
			}else if($("#sale_roomIdString").val()!=-1){
				document.getElementById('roomIdString').style.display='none';
			}
			if($("#sale_saleTimeString").val()==""){
				document.getElementById('saleTimeString').style.display='block';
				$("#saleTimeString").text("销售时间不能为空");
				isok=false;
			}else if($("#sale_saleTimeString").val()!=""){
				document.getElementById('saleTimeString').style.display='none';
			}
			if($("#sale_unitPriceDouble").val()==""){
				document.getElementById('unitPriceDouble').style.display='block';
				$("#unitPriceDouble").text("销售单价不能为空");
				isok=false;
			}else if($("#sale_unitPriceDouble").val()!=""){
				if(name<0){
					document.getElementById('unitPriceDouble').style.display='block';
					$("#unitPriceDouble").text("请输入正确的销售价格不能为空");
					isok=false;
				}else{
					document.getElementById('unitPriceDouble').style.display='none';
				}
			}
			if($("#sale_discountDouble").val()==""){
				document.getElementById('discountDouble').style.display='block';
				$("#discountDouble").text("销售折扣不能为空");
				isok=false;
			}else if($("#sale_discountDouble").val()!=""){
				if(name<0){
					document.getElementById('discountDouble').style.display='block';
					$("#discountDouble").text("销售折扣不能小于0");
					isok=false;
				}else{
					document.getElementById('discountDouble').style.display='none';
				}
			}
			if($("#sale_discountDouble").val()==""){
				document.getElementById('discountDouble').style.display='block';
				$("#discountDouble").text("销售折扣不能为空");
				isok=false;
			}else if($("#sale_discountDouble").val()!=""){
				document.getElementById('discountDouble').style.display='none';
			}
			if($("#sale_totalCostDouble").val()==""){
				document.getElementById('totalCostDouble').style.display='block';
				$("#totalCostDouble").text("销售总价不能为空");
				isok=false;
			}else if($("#sale_totalCostDouble").val()!=""){
				document.getElementById('totalCostDouble').style.display='none';
				isok=true;
			}
			return isok;
		}
	
	</script>
</body>
</html>