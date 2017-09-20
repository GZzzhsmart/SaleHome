<%@page import="com.ht.pojo.TAgency"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basepath = getServletContext().getRealPath("/");
	TAgency tagency = (TAgency)session.getAttribute("tagency");
%>
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
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/themes/gray/easyui.css">
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>楼盘新增</title>
<link href="lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
<style>
	.case{}
	.bMap{position: relative;}
	.bMap .map-warp{position: absolute;left:0;width:100%;height:400px;display: none;}
	.bMap input{width:100%;height:30px;line-height: 30px;border:1px solid #d7d7d7;}
	.tangram-suggestion-main{z-index: 9999}
</style>
<style type="text/css">
	* { -ms-word-wrap: break-word; word-wrap: break-word; }
	html { -webkit-text-size-adjust: none; text-size-adjust: none; }
	html, body {height:100%;width:100%; }
	html, body, h1, h2, h3, h4, h5, h6, div, ul, ol, li, dl, dt, dd, iframe, textarea, input, button, p, strong, b, i, a, span, del, pre, table, tr, th, td, form, fieldset, .pr, .pc { margin: 0; padding: 0; word-wrap: break-word; font-family: verdana,Microsoft YaHei,Tahoma,sans-serif; *font-family: Microsoft YaHei,verdana,Tahoma,sans-serif; }
	body, ul, ol, li, dl, dd, p, h1, h2, h3, h4, h5, h6, form, fieldset, .pr, .pc, em, del { font-style: normal; font-size: 100%; }
	ul, ol, dl { list-style: none; }
	._citys { width: 450px; display: inline-block; border: 2px solid #eee; padding: 5px; position: relative; }
	._citys span { color: #56b4f8; height: 15px; width: 15px; line-height: 15px; text-align: center; border-radius: 3px; position: absolute; right: 10px; top: 10px; border: 1px solid #56b4f8; cursor: pointer; }
	._citys0 { width: 100%; height: 34px; display: inline-block; border-bottom: 2px solid #56b4f8; padding: 0; margin: 0; }
	._citys0 li { display: inline-block; line-height: 34px; font-size: 15px; color: #888; width: 80px; text-align: center; cursor: pointer; }
	.citySel { background-color: #56b4f8; color: #fff !important; }
	._citys1 { width: 100%; display: inline-block; padding: 10px 0; }
	._citys1 a { width: 83px; height: 35px; display: inline-block; background-color: #f5f5f5; color: #666; margin-left: 6px; margin-top: 3px; line-height: 35px; text-align: center; cursor: pointer; font-size: 13px; overflow: hidden; }
	._citys1 a:hover { color: #fff; background-color: #56b4f8; }
	.AreaS { background-color: #56b4f8 !important; color: #fff !important; }
</style>
</head>
<body>
<div class="page-container">
	<form class="form form-horizontal" id="form-article-add" action="<%=path%>/lp/addloupan" onsubmit="return checkvalid();" method="post" enctype="multipart/form-data">
		<input type="hidden" name="loupan.addressString" id="addr" value=""/>
		<input type="hidden" name="loupan.longitudeDouble" id="jindu" value=""/>
		<input type="hidden" name="loupan.latitudeDouble" id="weidu" value=""/>
		<input type="hidden" name="loupan.statusInt" value="1"/>
		<input type="hidden" name="loupan.jxsidString" value="<%=tagency.getIdString()%>"/>
		<input type="hidden" name="loupan.createdTime" value="" id="createtime"/>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2">楼盘商标：</label>
			<div class="formControls col-xs-3 col-sm-4"> 
				<span class="btn-upload form-group">
					<input class="input-text  upload-url radius" type="text" name="" value="" readonly  style="width:17em">
					<a href="javascript:void();" class="btn btn-primary radius upload-btn"><i class="Hui-iconfont">&#xe642;</i> 浏览文件</a>
					<input type="file" name="fileupinfo.doc" id="loupan_logo" class="input-file" onblur="checkfile(this.value);">
				</span>
				<span style="display:block;color:#ff0033;align:center;font-size:4px;height:8px" id="filename" ></span>
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>楼盘名称：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" class="input-text" onblur="checkname(this.value);" value="" placeholder="请输入楼盘的名称" id="loupan_nameString" name="loupan.nameString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="nameString" >11</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-5 col-sm-2"><span class="c-red">*</span>地图地址：</label>
			<div class="formControls col-xs-8 col-sm-9 case">
				<div class="bMap " id='case3'></div>
				<div id="callback"></div>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>占地面积：</label>
			<div class="formControls col-xs-5 col-sm-4">
				<input type="number" style="width:25em" class="input-text" value="" onblur="checkfloor(this.value);" placeholder="请输入楼盘的占地面积" id="loupan_floorAreaString" name="loupan.floorAreaString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="floor" >11</span>
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>建筑面积：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="number" style="width:18.2em" class="input-text" value="" onblur="checkbuild(this.value);" placeholder="请输入楼盘的建筑面积" id="loupan_buildingAreaString" name="loupan.buildingAreaString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="build" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>房源类型：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<span class="select-box">
					<select name="loupan.houseTypeString" class="select">
						<option value="写字楼">全部房源类型（默认写字楼）</option>
						<option value="写字楼">写字楼</option>
						<option value="住宅">住宅</option>
						<option value="住宅">商业</option>
						<option value="工业">工业</option>
						<option value="其他">其他</option>
					</select>
				</span>
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="housetype" ></span>
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>建筑类型：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<span class="select-box">
					<select name="loupan.buildingTypeString" class="select">
						<option value="钟塔楼">全部建筑类型（默认钟塔楼）</option>
						<option value="钟塔楼">钟塔楼</option>
						<option value="板房">板房</option>
						<option value="欧美风格">欧美风格</option>
						<option value="其他">其他</option>
					</select>
				</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>所属区域：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="text" class="input-text" value="" onblur="checkarea(this.value);" placeholder="请输入楼盘的区域" id="city" name="loupan.areaString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="area" ></span>
			</div>
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>楼盘均价：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="number" style="width:18.3em" class="input-text" value="" onblur="checkavgprice(this.value);" onkeyup="checkavgprice1(this.value);" placeholder="请输入楼盘均价" id="loupan_avgPriceDouble" name="loupan.avgPriceDouble">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="price" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>开发公司：</label>
			<div class="formControls col-xs-2 col-sm-4">
				<input type="text" class="input-text" value="" placeholder="请输入楼盘的开发公司" id="loupan.companyString" name="loupan.companyString">
			</div>
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>开盘时间：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="date" style="width:18.3em" placeholder="请输入楼盘的开发时间"  id="openDate" name="loupan.openDate" class="input-text">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>总套数：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="number" style="width:25em" class="input-text" value="" placeholder="请输入楼盘的总套数" onblur="checktotal(this.value);" id="loupan_totalRoomsInt" name="loupan.totalRoomsInt">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="total" ></span>
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>接待地址：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" class="input-text" value="" placeholder="请输入楼盘客户接待地址" onblur="checkreception(this.value);" id="loupan_receptionAddressString" name="loupan.receptionAddressString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="reception" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>售楼热线：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="number" style="width:25em" class="input-text" value="" onblur="checktel(this.value);" placeholder="请输入楼盘的售楼联系方式" id="loupan_telString" name="loupan.telString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="tel" ></span>
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>绿化率：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<span class="select-box">
				<select name="loupan.greenRatioDouble" class="select">
					<option value="10">全部楼盘绿化率（默认10%）</option>
					<option value="10">10%</option>
					<option value="15">15%</option>
					<option value="20">20%</option>
					<option value="25">其他</option>
				</select>
				</span>
			</div>
		</div>
		<div class="row cl">
		<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>物业费用：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="text" class="input-text" value="" placeholder="请输入楼盘的物业费用" onblur="checkfee(this.value);" id="loupan_propertyFeeDouble" name="loupan.propertyFeeDouble">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="fee" ></span>
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>物业公司：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" class="input-text" value="" placeholder="请输入楼盘物业公司" onblur="checkcompany(this.value);" id="loupan_propertyCompany" name="loupan.propertyCompany">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="company" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>容积率：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="number" style="width:25em" class="input-text" value="" placeholder="请输入楼盘的容积率" id="loupan.plotRatioDouble" name="loupan.plotRatioDouble">
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>车位总数：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="number" style="width:18.3em" class="input-text" value="" placeholder="请输入楼盘的车位总数" onblur="checkcar(this.value);" id="loupan_carStationInt" name="loupan.carStationInt">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="car" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>交通状况：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="text" class="input-text" value="" placeholder="请输入楼盘的交通状况" onblur="checktraffic(this.value);" id="loupan_trafficString" name="loupan.trafficString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="traffic" ></span>
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>周边配套：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" class="input-text" value="" placeholder="请输入楼盘的周边配套" onblur="checkequipments(this.value);" id="loupan_equipmentsString" name="loupan.equipmentsString">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="equipments" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">楼盘简介：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="loupan.introString" id="loupan_introString" onblur="checkinfo(this.value);" cols="" rows="" class="textarea"  placeholder="楼盘简介...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="楼盘简介不能为空！" onKeyUp="checknum(this.value);"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length" id="num">0</em>/500</p>
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="info" ></span>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i> 保存并提交审核</button>
				<button onClick="article_save();" class="btn btn-secondary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 保存草稿</button>
				<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=EZPCgQ6zGu6hZSmXlRrUMTpr"></script>
<script type="text/javascript" src="<%=path %>/js/jquery.min1.js"></script>
<script type="text/javascript" src="<%=path %>/js/map.jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=path %>/css/locale/easyui-lang-zh_CN.js"></script>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="lib/webuploader/0.1.5/webuploader.min.js"></script> 
<!--请在下方写此页面业务相关的脚本-->
<!-- <script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.config.js"></script>  -->
<!-- <script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.all.min.js"> </script>  -->
<!-- <script type="text/javascript" src="lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script> -->
<script src="<%=path %>/js/Popt.js"></script>
<script src="<%=path %>/js/cityJson.js"></script>
<script src="<%=path %>/js/citySet.js"></script>
<script type="text/javascript">
$(function(){
	$("#city").click(function (e) {
		SelCity(this,e);
	});
})
</script>
<script type="text/javascript">
	function checknum(name){
		if(name.length<=500){
			$("#num").text(name.length);
		}else{
			layer.msg('最多500个字喔!', {
				icon : 2,
				time : 2000
			});
			$("#loupan_introString").val(name.substring(0,500));
			return false;
		}
	}
</script>
<script type="text/javascript">
function checkname(name){
	if(name==''){
		document.getElementById('nameString').style.display='block';
		$("#nameString").text("楼盘名称不能为空");
	}else if(name!=''){
		document.getElementById('nameString').style.display='none';
	}
}
function checkfile(name){
	if(name==''){
		document.getElementById('filename').style.display='block';
		$("#filename").text("楼盘logo不能为空");
	}else if(name!=''){
		document.getElementById('filename').style.display='none';
	}
}
function checkfloor(name){
	if(name==''){
		document.getElementById('floor').style.display='block';
		$("#floor").text("占地面积不能为空单位为（平米）");
	}else if(name!=''){
		document.getElementById('floor').style.display='none';
	}
}
function checkbuild(name){
	if(name==''){
		document.getElementById('build').style.display='block';
		$("#build").text("建筑面积不能为空");
	}else if(name!=''){
		document.getElementById('build').style.display='none';
	}
}
function checkarea(name){
	if(name==''){
		document.getElementById('area').style.display='block';
		$("#area").text("楼盘所属区域不能为空");
	}else if(name!=''){
		document.getElementById('area').style.display='none';
	}
}
function checkavgprice(name){
	if(name==''){
		document.getElementById('price').style.display='block';
		$("#price").text("楼盘均价不能为空");
	}else if(name!=''){
		document.getElementById('price').style.display='none';
	}
}
function checktel(name){
	if(name==''){
		document.getElementById('tel').style.display='block';
		$("#tel").text("楼盘售楼电话不能为空");
	}else if(name!=''){
		if(name.length!=11){
			document.getElementById('tel').style.display='block';
			$("#tel").text("请输入正确的售楼热线");
		}else{
			document.getElementById('tel').style.display='none';
		}
	}
}
function checkreception(name){
	if(name==''){
		document.getElementById('reception').style.display='block';
		$("#reception").text("楼盘接待客户地址不能为空");
	}else if(name!=''){
		document.getElementById('reception').style.display='none';
	}
}
function checkfee(name){
	if(name==''){
		document.getElementById('fee').style.display='block';
		$("#fee").text("楼盘物业费用不能为空");
	}else if(name!=''){
		document.getElementById('fee').style.display='none';
	}
}
function checkcompany(name){
	if(name==''){
		document.getElementById('company').style.display='block';
		$("#company").text("楼盘物业公司不能为空");
	}else if(name!=''){
		document.getElementById('company').style.display='none';
	}
}
function checkcar(name){
	if(name==''){
		document.getElementById('car').style.display='block';
		$("#car").text("楼盘车位总数不能为空");
	}else if(name!=''){
		document.getElementById('car').style.display='none';
	}
}
function checktraffic(name){
	if(name==''){
		document.getElementById('traffic').style.display='block';
		$("#traffic").text("楼盘周边交通不能为空");
	}else if(name!=''){
		document.getElementById('traffic').style.display='none';
	}
}
function checkequipments(name){
	if(name==''){
		document.getElementById('equipments').style.display='block';
		$("#equipments").text("楼盘周边配套不能为空");
	}else if(name!=''){
		document.getElementById('equipments').style.display='none';
	}
}
function checkinfo(name){
	if(name==''){
		document.getElementById('info').style.display='block';
		$("#info").text("楼盘简介不能为空");
	}else if(name!=''){
		document.getElementById('info').style.display='none';
	}
}
function checktotal(name){
	if(name==''){
		document.getElementById('total').style.display='block';
		$("#total").text("楼盘总套数不能为空（单位套）");
	}else if(name!=''){
		document.getElementById('total').style.display='none';
	}
}
function checkvalid(){
	var checkorder=false;
	if($("#loupan_logo").val()==''){
		document.getElementById('filename').style.display='block';
		$("#filename").text("楼盘logo不能为空");
		checkorder=false;
	}else if($("#loupan_logo").val()!=''){
		document.getElementById('filename').style.display='none';
	}
	if($("#loupan_nameString").val()==''){
		document.getElementById('nameString').style.display='block';
		$("#nameString").text("楼盘名称不能为空");
		checkorder=false;
	}else if($("#loupan_nameString").val()!=''){
		document.getElementById('nameString').style.display='none';
	}
	if($("#loupan_totalRoomsInt").val()==''){
		document.getElementById('total').style.display='block';
		$("#total").text("楼盘总套数不能为空（单位·套）");
		checkorder=false;
	}else if($("#loupan_totalRoomsInt").val()!=''){
		document.getElementById('total').style.display='none';
	}
	if($("#loupan_floorAreaString").val()==''){
		document.getElementById('floor').style.display='block';
		$("#floor").text("占地面积不能为空");
		checkorder=false;
	}else if($("#loupan_floorAreaString").val()!=''){
		document.getElementById('floor').style.display='none';
	}
	if($("#loupan_buildingAreaString").val()==''){
		document.getElementById('build').style.display='block';
		$("#build").text("建筑面积不能为空");
		checkorder=false;
	}else if($("#loupan_buildingAreaString").val()!=''){
		document.getElementById('build').style.display='none';
	}
	if($("#city").val()==''){
		document.getElementById('area').style.display='block';
		$("#area").text("楼盘所属区域不能为空");
		checkorder=false;
	}else if($("#city").val()!=''){
		document.getElementById('area').style.display='none';
	}
	if($("#loupan_avgPriceDouble").val()==''){
		document.getElementById('price').style.display='block';
		$("#price").text("楼盘均价不能为空");
		checkorder=false;
	}else if($("#loupan_avgPriceDouble").val()!=''){
		document.getElementById('price').style.display='none';
	}
	if($("#loupan_telString").val()==''){
		document.getElementById('tel').style.display='block';
		$("#tel").text("楼盘售楼电话不能为空");
		checkorder=false;
	}else if($("#loupan_telString").val()!=''){
		if($("#loupan_telString").val().length!=11){
			document.getElementById('tel').style.display='block';
			$("#tel").text("请输入正确的售楼电话");
			checkorder=false;
		}else{
			document.getElementById('tel').style.display='none';
		}
	}
	if($("#loupan_receptionAddressString").val()==''){
		document.getElementById('reception').style.display='block';
		$("#reception").text("楼盘接待客户地址不能为空");
		checkorder=false;
	}else if($("#loupan_receptionAddressString").val()!=''){
		document.getElementById('reception').style.display='none';
	}
	if($("#loupan_propertyFeeDouble").val()==''){
		document.getElementById('fee').style.display='block';
		$("#fee").text("楼盘物业费用不能为空");
		checkorder=false;
	}else if($("#loupan_propertyFeeDouble").val()!=''){
		document.getElementById('fee').style.display='none';
	}
	if($("#loupan_propertyCompany").val()==''){
		document.getElementById('company').style.display='block';
		$("#company").text("楼盘物业公司不能为空");
		checkorder=false;
	}else if($("#loupan_propertyCompany").val()!=''){
		document.getElementById('company').style.display='none';
	}
	if($("#loupan_carStationInt").val()==''){
		document.getElementById('car').style.display='block';
		$("#car").text("楼盘车位总数不能为空");
		checkorder=false;
	}else if($("#loupan_carStationInt").val()!=''){
		document.getElementById('car').style.display='none';
	}
	if($("#loupan_trafficString").val()==''){
		document.getElementById('traffic').style.display='block';
		$("#traffic").text("楼盘周边交通不能为空");
		checkorder=false;
	}else if($("#loupan_trafficString").val()!=''){
		document.getElementById('traffic').style.display='none';
	}
	if($("#loupan_equipmentsString").val()==''){
		document.getElementById('equipments').style.display='block';
		$("#equipments").text("楼盘周边配套不能为空");
		checkorder=false;
	}else if($("#loupan_equipmentsString").val()!=''){
		document.getElementById('equipments').style.display='none';
	}
	if($("#loupan_introString").val()==''){
		document.getElementById('info').style.display='block';
		$("#info").text("楼盘简介不能为空");
		checkorder=false;
	}else if($("#loupan_introString").val()!=''){
		document.getElementById('info').style.display='none';
		checkorder=true;
	}
	return checkorder;
}
</script>
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
	 		var jw = $("#Map_location_callback").val();
	 		$("#jindu").val(jw.substring(0,jw.indexOf(",")));
	 		$("#weidu").val(jw.substring((jw.indexOf(",")+1),jw.length));
			$("#createtime").val(str);
		}});
		$("#openDate").val(datetime);
	})
</script>
<script type="text/javascript">
function article_save(){
	alert("刷新父级的时候会自动关闭弹层。")
	window.parent.location.reload();
}
</script>
</body>
</html>