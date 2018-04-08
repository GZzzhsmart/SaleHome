<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basepath = getServletContext().getRealPath("/");
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
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxs/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxs/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxs/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxs/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=path %>/hui-jxs/static/h-ui.admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/themes/gray/easyui.css">
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>楼盘修改</title>
<link href="<%=path %>/hui-jxs/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
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
	<form class="form form-horizontal" id="form-article-add" action="<%=path%>/lp/addloupan" method="post" enctype="multipart/form-data">
		<input type="hidden" name="loupan.addressString" id="addr" value="${loupan.addressString}"/>
		<input type="hidden" name="loupan.longitudeDouble" id="jindu" value="${loupan.longitudeDouble}"/>
		<input type="hidden" name="loupan.latitudeDouble" id="weidu" value="${loupan.latitudeDouble}"/>
		<input type="hidden" name="loupan.statusInt" value="${loupan.statusInt}"/>
		<input type="hidden" name="loupan.createdTime" value="${loupan.createdTime}" id="createtime"/>
		<input type="hidden" name="loupan.idString" value="${loupan.idString}" id="idString"/>
		<input type="hidden" name="loupan.logoString" value="${loupan.logoString}" id="logoString"/>
		<input type="hidden" name="loupan.jxsidString" value="${loupan.jxsidString}" id="logoString"/>		
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2">原楼盘商标：</label>
			<div class="formControls"> 
				<img src="<%=path %>/${loupan.logoString}" style="width:60px;hegiht:60px;border-radius:100%">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2">楼盘商标：</label>
			<div class="formControls col-xs-3 col-sm-4"> <span class="btn-upload form-group">
				<input class="input-text" type="text" value="${loupan.logoString}" name="" readonly  style="width:200px">
				<a href="javascript:void();" class="btn btn-primary radius upload-btn"><i class="Hui-iconfont">&#xe642;</i> 浏览文件</a>
				<input type="file" name="fileupinfo.doc" class="input-file">
				</span> 
			</div>
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>楼盘名称：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" class="input-text"  value="${loupan.nameString}" placeholder="请输入楼盘的名称" id="loupan.nameString" name="loupan.nameString">
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
			<div class="formControls col-xs-3 col-sm-4">
				<input type="text" class="input-text" value="${loupan.floorAreaString}" placeholder="请输入楼盘的占地面积" id="loupan.floorAreaString" name="loupan.floorAreaString">
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>建筑面积：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" class="input-text" value="${loupan.buildingAreaString}" placeholder="请输入楼盘的建筑面积" id="loupan.buildingAreaString" name="loupan.buildingAreaString">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>房源类型：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<span class="select-box">
				<select name="loupan.houseTypeString" class="select">
					<c:if test="${loupan.houseTypeString=='写字楼'}">
						<option value="0">全部房源类型</option>
						<option value="写字楼"  selected="selected">写字楼</option>
						<option value="住宅">住宅</option>
						<option value="商业">商业</option>
						<option value="工业">工业</option>
						<option value="其他">其他</option>
					</c:if>
					<c:if test="${loupan.houseTypeString=='住宅'}">
						<option value="0">全部房源类型</option>
						<option value="写字楼">写字楼</option>
						<option value="住宅"   selected="selected">住宅</option>
						<option value="商业">商业</option>
						<option value="工业">工业</option>
						<option value="其他">其他</option>
					</c:if>
					<c:if test="${loupan.houseTypeString=='商业'}">
						<option value="0">全部房源类型</option>
						<option value="写字楼">写字楼</option>
						<option value="住宅">住宅</option>
						<option value="商业"   selected="selected">商业</option>
						<option value="工业">工业</option>
						<option value="其他">其他</option>
					</c:if>
					<c:if test="${loupan.houseTypeString=='工业'}">
						<option value="0">全部房源类型</option>
						<option value="写字楼">写字楼</option>
						<option value="住宅">住宅</option>
						<option value="商业">商业</option>
						<option value="工业"  selected="selected">工业</option>
						<option value="其他">其他</option>
					</c:if>
					<c:if test="${loupan.houseTypeString=='其他'}">
						<option value="0">全部房源类型</option>
						<option value="写字楼">写字楼</option>
						<option value="住宅">住宅</option>
						<option value="商业">商业</option>
						<option value="工业">工业</option>
						<option value="其他"  selected="selected">其他</option>
					</c:if>
				</select>
				</span>
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>建筑类型：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<span class="select-box">
				<select name="loupan.buildingTypeString" class="select">
					<c:if test="${loupan.buildingTypeString=='别墅'}">
						<option value="0">全部建筑类型</option>
						<option value="别墅" selected="selected">别墅</option>
						<option value="钟塔楼">钟塔楼</option>
						<option value="板房">板房</option>
						<option value="欧美风格">欧美风格</option>
						<option value="写字楼">写字楼</option>
						<option value="其他">其他</option>
					</c:if>
					<c:if test="${loupan.buildingTypeString=='钟塔楼'}">
						<option value="0">全部建筑类型</option>
						<option value="别墅">别墅</option>
						<option value="钟塔楼"  selected="selected">钟塔楼</option>
						<option value="板房">板房</option>
						<option value="欧美风格">欧美风格</option>
						<option value="写字楼">写字楼</option>
						<option value="其他">其他</option>
					</c:if>
					<c:if test="${loupan.buildingTypeString=='板房'}">
						<option value="0">全部建筑类型</option>
						<option value="别墅">别墅</option>
						<option value="钟塔楼">钟塔楼</option>
						<option value="板房"  selected="selected">板房</option>
						<option value="欧美风格">欧美风格</option>
						<option value="写字楼">写字楼</option>
						<option value="其他">其他</option>
					</c:if>
					<c:if test="${loupan.buildingTypeString=='欧美风格'}">
						<option value="0">全部建筑类型</option>
						<option value="别墅">别墅</option>
						<option value="钟塔楼">钟塔楼</option>
						<option value="板房">板房</option>
						<option value="欧美风格"  selected="selected">欧美风格</option>
						<option value="写字楼">写字楼</option>
						<option value="其他">其他</option>
					</c:if>
					<c:if test="${loupan.buildingTypeString=='写字楼'}">
						<option value="0">全部建筑类型</option>
						<option value="别墅">别墅</option>
						<option value="钟塔楼">钟塔楼</option>
						<option value="板房">板房</option>
						<option value="欧美风格">欧美风格</option>
						<option value="写字楼" selected="selected">写字楼</option>
						<option value="其他"  >其他</option>
					</c:if>
					<c:if test="${loupan.buildingTypeString=='其他'}">
						<option value="0">全部建筑类型</option>
						<option value="别墅">别墅</option>
						<option value="钟塔楼">钟塔楼</option>
						<option value="板房">板房</option>
						<option value="欧美风格">欧美风格</option>
						<option value="写字楼">写字楼</option>
						<option value="其他"  selected="selected">其他</option>
					</c:if>
				</select>
				</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>所属区域：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="text" class="input-text" value="${loupan.areaString}" placeholder="请输入楼盘的区域" id="city" name="loupan.areaString">
			</div>
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>楼盘均价：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" class="input-text" value="${loupan.avgPriceDouble}" placeholder="请输入楼盘均价" id="loupan.avgPriceDouble" name="loupan.avgPriceDouble"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>开发公司：</label>
			<div class="formControls col-xs-2 col-sm-4">
				<input type="text" class="input-text" value="${loupan.companyString}" placeholder="请输入楼盘的开发公司" id="loupan.companyString" name="loupan.companyString">
			</div>
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>开盘时间：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" style="width:258px" placeholder="请输入楼盘的开发时间"  value="${loupan.openDate}" id="loupan.openDate" name="loupan.openDate" class="input-text easyui-datetimebox">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>总套数：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="text" class="input-text" value="${loupan.totalRoomsInt}" placeholder="请输入楼盘的总套数" id="loupan.totalRoomsInt" name="loupan.totalRoomsInt">
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>接待地址：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" class="input-text" value="${loupan.receptionAddressString}" placeholder="请输入楼盘客户接待地址" id="loupan.receptionAddressString" name="loupan.receptionAddressString">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>售楼TEL：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="text" class="input-text"  value="${loupan.telString}" placeholder="请输入楼盘的售楼联系方式" id="loupan.telString" name="loupan.telString">
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>绿化率：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<span class="select-box">
				<select name="loupan.greenRatioDouble" class="select">
						<option value="0">全部楼盘绿化率</option>
						<option value="10"  selected="selected">10%</option>
						<option value="15">15%</option>
						<option value="20">20%</option>
						<option value="其他">其他</option>
				</select>
				</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>容积率：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="text" class="input-text" value="${loupan.plotRatioDouble}" placeholder="请输入楼盘的容积率" id="loupan.plotRatioDouble" name="loupan.plotRatioDouble">
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>物业公司：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" class="input-text" value="${loupan.propertyCompany}" placeholder="请输入楼盘物业公司" id="loupan.propertyCompany" name="loupan.propertyCompany">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>物业费用：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="text" class="input-text" value="${loupan.propertyFeeDouble}" placeholder="请输入楼盘的物业费用" id="loupan.propertyFeeDouble" name="loupan.propertyFeeDouble">
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>车位总数：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" class="input-text" value="${loupan.carStationInt}" placeholder="请输入楼盘的车位总数" id="loupan.carStationInt" name="loupan.carStationInt">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-3 col-sm-2"><span class="c-red">*</span>交通状况：</label>
			<div class="formControls col-xs-3 col-sm-4">
				<input type="text" class="input-text" value="${loupan.trafficString}" placeholder="请输入楼盘的交通状况" id="loupan.trafficString" name="loupan.trafficString">
			</div>
			<label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>周边配套：</label>
			<div class="formControls col-xs-3 col-sm-3">
				<input type="text" class="input-text" value="${loupan.equipmentsString}" placeholder="请输入楼盘的周边配套" id="loupan.equipmentsString" name="loupan.equipmentsString">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">楼盘简介：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="loupan.introString" id="loupan.introString" cols="" rows="" class="textarea"  placeholder="楼盘简介...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="楼盘简介不能为空！" onKeyUp="$.Huitextarealength(this,200)">${loupan.introString}</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
		</div>
<!-- 		<div class="row cl"> -->
<!-- 			<label class="form-label col-xs-4 col-sm-2">图片上传：</label> -->
<!-- 			<div class="formControls col-xs-8 col-sm-9"> -->
<!-- 				<div class="uploader-list-container">  -->
<!-- 					<div class="queueList"> -->
<!-- 						<div id="dndArea" class="placeholder"> -->
<!-- 							<div id="filePicker-2"></div> -->
<!-- 							<p>或将照片拖到这里，单次最多可选300张</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="statusBar" style="display:none;"> -->
<!-- 						<div class="progress"> <span class="text">0%</span> <span class="percentage"></span> </div> -->
<!-- 						<div class="info"></div> -->
<!-- 						<div class="btns"> -->
<!-- 							<div id="filePicker2"></div> -->
<!-- 							<div class="uploadBtn">开始上传</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 确认修改楼盘</button>
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
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/webuploader/0.1.5/webuploader.min.js"></script> 
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
$(function(){
	$("#case3").bMap({name:"address",address:"${loupan.addressString}"});
	$("#case3").bMap({name:"callback",callback:function(address,point){
//  		$("#addr").val(JSON.stringify(address)+JSON.stringify(point))
 		$("#addr").val($("#Map_input_callback").val());
 		var jw = $("#Map_location_callback").val();
 		$("#jindu").val(jw.substring(0,jw.indexOf(",")));
 		$("#weidu").val(jw.substring((jw.indexOf(",")+1),jw.length));
 		var time = new Date();
		var y = "" + time.getYear()+1900;
		var mm = "" + time.getMonth();
		var d = "" + time.getDate();
		var h = "" + time.getHours();
		var m = "" + time.getMinutes();
		var s = "" + time.getSeconds();
		var str = y+"-"+mm+"-"+d+"  "+h + ":" + m + ":" + s;
	}});
	
})
</script>
<script type="text/javascript">
function article_save(){
	alert("刷新父级的时候会自动关闭弹层。")
	window.parent.location.reload();
}

$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$list = $("#fileList"),
	$btn = $("#btn-star"),
	state = "pending",
	uploader;

	var uploader = WebUploader.create({
		auto: true,
		swf: 'lib/webuploader/0.1.5/Uploader.swf',
	
		// 文件接收服务端。
		server: '${pageContext.request.contextPath}/lp/fileUpload',
	
		// 选择文件的按钮。可选。
		// 内部根据当前运行是创建，可能是input元素，也可能是flash.
		pick: '#filePicker',
	
		// 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
		resize: false,
		// 只允许选择图片文件。
		accept: {
			title: 'Images',
			extensions: 'gif,jpg,jpeg,bmp,png',
			mimeTypes: 'image/*'
		}
	});
	uploader.on( 'fileQueued', function( file ) {
		var $li = $(
			'<div id="' + file.id + '" class="item">' +
				'<div class="pic-box"><img></div>'+
				'<div class="info">' + file.name + '</div>' +
				'<p class="state">等待上传...</p>'+
			'</div>'
		),
		$img = $li.find('img');
		$list.append( $li );
	
		// 创建缩略图
		// 如果为非图片文件，可以不用调用此方法。
		// thumbnailWidth x thumbnailHeight 为 100 x 100
		uploader.makeThumb( file, function( error, src ) {
			if ( error ) {
				$img.replaceWith('<span>不能预览</span>');
				return;
			}
	
			$img.attr( 'src', src );
		}, thumbnailWidth, thumbnailHeight );
	});
	// 文件上传过程中创建进度条实时显示。
	uploader.on( 'uploadProgress', function( file, percentage ) {
		var $li = $( '#'+file.id ),
			$percent = $li.find('.progress-box .sr-only');
	
		// 避免重复创建
		if ( !$percent.length ) {
			$percent = $('<div class="progress-box"><span class="progress-bar radius"><span class="sr-only" style="width:0%"></span></span></div>').appendTo( $li ).find('.sr-only');
		}
		$li.find(".state").text("上传中");
		$percent.css( 'width', percentage * 100 + '%' );
	});
	
	// 文件上传成功，给item添加成功class, 用样式标记上传成功。
	uploader.on( 'uploadSuccess', function( file,res ) {
		$( '#'+file.id ).addClass('upload-state-success').find(".state").text("上传成功");
	});
	
	// 文件上传失败，显示上传出错。
	uploader.on( 'uploadError', function( file) {
		$( '#'+file.id ).addClass('upload-state-error').find(".state").text("上传出错");
	});
	
	// 完成上传完了，成功或者失败，先删除进度条。
	uploader.on( 'uploadComplete', function( file ) {
		$( '#'+file.id ).find('.progress-box').fadeOut();
	});
	uploader.on('all', function (type) {
        if (type === 'startUpload') {
            state = 'uploading';
        } else if (type === 'stopUpload') {
            state = 'paused';
        } else if (type === 'uploadFinished') {
            state = 'done';
        }

        if (state === 'uploading') {
            $btn.text('暂停上传');
        } else {
            $btn.text('开始上传');
        }
    });

    $btn.on('click', function () {
        if (state === 'uploading') {
            uploader.stop();
        } else {
            uploader.upload();
        }
    });

});

(function( $ ){
    // 当domReady的时候开始初始化
    $(function() {
        var $wrap = $('.uploader-list-container'),

            // 图片容器
            $queue = $( '<ul class="filelist"></ul>' )
                .appendTo( $wrap.find( '.queueList' ) ),

            // 状态栏，包括进度和控制按钮
            $statusBar = $wrap.find( '.statusBar' ),

            // 文件总体选择信息。
            $info = $statusBar.find( '.info' ),

            // 上传按钮
            $upload = $wrap.find( '.uploadBtn' ),

            // 没选择文件之前的内容。
            $placeHolder = $wrap.find( '.placeholder' ),

            $progress = $statusBar.find( '.progress' ).hide(),

            // 添加的文件数量
            fileCount = 0,

            // 添加的文件总大小
            fileSize = 0,

            // 优化retina, 在retina下这个值是2
            ratio = window.devicePixelRatio || 1,

            // 缩略图大小
            thumbnailWidth = 110 * ratio,
            thumbnailHeight = 110 * ratio,

            // 可能有pedding, ready, uploading, confirm, done.
            state = 'pedding',

            // 所有文件的进度信息，key为file id
            percentages = {},
            // 判断浏览器是否支持图片的base64
            isSupportBase64 = ( function() {
                var data = new Image();
                var support = true;
                data.onload = data.onerror = function() {
                    if( this.width != 1 || this.height != 1 ) {
                        support = false;
                    }
                }
                data.src = "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==";
                return support;
            } )(),

            // 检测是否已经安装flash，检测flash的版本
            flashVersion = ( function() {
                var version;

                try {
                    version = navigator.plugins[ 'Shockwave Flash' ];
                    version = version.description;
                } catch ( ex ) {
                    try {
                        version = new ActiveXObject('ShockwaveFlash.ShockwaveFlash')
                                .GetVariable('$version');
                    } catch ( ex2 ) {
                        version = '0.0';
                    }
                }
                version = version.match( /\d+/g );
                return parseFloat( version[ 0 ] + '.' + version[ 1 ], 10 );
            } )(),

            supportTransition = (function(){
                var s = document.createElement('p').style,
                    r = 'transition' in s ||
                            'WebkitTransition' in s ||
                            'MozTransition' in s ||
                            'msTransition' in s ||
                            'OTransition' in s;
                s = null;
                return r;
            })(),

            // WebUploader实例
            uploader;

        if ( !WebUploader.Uploader.support('flash') && WebUploader.browser.ie ) {

            // flash 安装了但是版本过低。
            if (flashVersion) {
                (function(container) {
                    window['expressinstallcallback'] = function( state ) {
                        switch(state) {
                            case 'Download.Cancelled':
                                alert('您取消了更新！')
                                break;

                            case 'Download.Failed':
                                alert('安装失败')
                                break;

                            default:
                                alert('安装已成功，请刷新！');
                                break;
                        }
                        delete window['expressinstallcallback'];
                    };

                    var swf = 'expressInstall.swf';
                    // insert flash object
                    var html = '<object type="application/' +
                            'x-shockwave-flash" data="' +  swf + '" ';

                    if (WebUploader.browser.ie) {
                        html += 'classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" ';
                    }

                    html += 'width="100%" height="100%" style="outline:0">'  +
                        '<param name="movie" value="' + swf + '" />' +
                        '<param name="wmode" value="transparent" />' +
                        '<param name="allowscriptaccess" value="always" />' +
                    '</object>';

                    container.html(html);

                })($wrap);

            // 压根就没有安转。
            } else {
                $wrap.html('<a href="http://www.adobe.com/go/getflashplayer" target="_blank" border="0"><img alt="get flash player" src="http://www.adobe.com/macromedia/style_guide/images/160x41_Get_Flash_Player.jpg" /></a>');
            }

            return;
        } else if (!WebUploader.Uploader.support()) {
            alert( 'Web Uploader 不支持您的浏览器！');
            return;
        }

        // 实例化
        uploader = WebUploader.create({
            pick: {
                id: '#filePicker-2',
                label: '点击选择图片'
            },
            formData: {
                uid: 123
            },
            dnd: '#dndArea',
            paste: '#uploader',
            swf: 'lib/webuploader/0.1.5/Uploader.swf',
            chunked: false,
            chunkSize: 512 * 1024,
            server: '${pageContext.request.contextPath}/lp/fileUpload',
            // runtimeOrder: 'flash',

            // accept: {
            //     title: 'Images',
            //     extensions: 'gif,jpg,jpeg,bmp,png',
            //     mimeTypes: 'image/*'
            // },

            // 禁掉全局的拖拽功能。这样不会出现图片拖进页面的时候，把图片打开。
            disableGlobalDnd: true,
            fileNumLimit: 300,
            fileSizeLimit: 200 * 1024 * 1024,    // 200 M
            fileSingleSizeLimit: 50 * 1024 * 1024    // 50 M
        });

        // 拖拽时不接受 js, txt 文件。
        uploader.on( 'dndAccept', function( items ) {
            var denied = false,
                len = items.length,
                i = 0,
                // 修改js类型
                unAllowed = 'text/plain;application/javascript ';

            for ( ; i < len; i++ ) {
                // 如果在列表里面
                if ( ~unAllowed.indexOf( items[ i ].type ) ) {
                    denied = true;
                    break;
                }
            }

            return !denied;
        });

        uploader.on('dialogOpen', function() {
            console.log('here');
        });

        // uploader.on('filesQueued', function() {
        //     uploader.sort(function( a, b ) {
        //         if ( a.name < b.name )
        //           return -1;
        //         if ( a.name > b.name )
        //           return 1;
        //         return 0;
        //     });
        // });

        // 添加“添加文件”的按钮，
        uploader.addButton({
            id: '#filePicker2',
            label: '继续添加'
        });

        uploader.on('ready', function() {
            window.uploader = uploader;
        });

        // 当有文件添加进来时执行，负责view的创建
        function addFile( file ) {
            var $li = $( '<li id="' + file.id + '">' +
                    '<p class="title">' + file.name + '</p>' +
                    '<p class="imgWrap"></p>'+
                    '<p class="progress"><span></span></p>' +
                    '</li>' ),

                $btns = $('<div class="file-panel">' +
                    '<span class="cancel">删除</span>' +
                    '<span class="rotateRight">向右旋转</span>' +
                    '<span class="rotateLeft">向左旋转</span></div>').appendTo( $li ),
                $prgress = $li.find('p.progress span'),
                $wrap = $li.find( 'p.imgWrap' ),
                $info = $('<p class="error"></p>'),

                showError = function( code ) {
                    switch( code ) {
                        case 'exceed_size':
                            text = '文件大小超出';
                            break;

                        case 'interrupt':
                            text = '上传暂停';
                            break;

                        default:
                            text = '上传失败，请重试';
                            break;
                    }

                    $info.text( text ).appendTo( $li );
                };

            if ( file.getStatus() === 'invalid' ) {
                showError( file.statusText );
            } else {
                // @todo lazyload
                $wrap.text( '预览中' );
                uploader.makeThumb( file, function( error, src ) {
                    var img;
                    if ( error ) {
                        $wrap.text( '不能预览' );
                        return;
                    }
                    if( isSupportBase64 ) {
                        img = $('<img src="'+src+'">');
                        $wrap.empty().append( img );
                    	alert(file.name);
                    } else {
                        $.ajax('${pageContext.request.contextPath}/lp/fileUpload', {
                            method: 'POST',
                            data: src,
                            dataType:'json'
                        }).done(function( response ) {
                            if (response.result) {
                                img = $('<img src="'+response.result+'">');
                                $wrap.empty().append( img );
                            } else {
                                $wrap.text("预览出错");
                            }
                        });
                    }
                }, thumbnailWidth, thumbnailHeight );

                percentages[ file.id ] = [ file.size, 0 ];
                file.rotation = 0;
            }

            file.on('statuschange', function( cur, prev ) {
                if ( prev === 'progress' ) {
                    $prgress.hide().width(0);
                } else if ( prev === 'queued' ) {
                    $li.off( 'mouseenter mouseleave' );
                    $btns.remove();
                }

                // 成功
                if ( cur === 'error' || cur === 'invalid' ) {
                    console.log( file.statusText );
                    showError( file.statusText );
                    percentages[ file.id ][ 1 ] = 1;
                } else if ( cur === 'interrupt' ) {
                    showError( 'interrupt' );
                } else if ( cur === 'queued' ) {
                    percentages[ file.id ][ 1 ] = 0;
                } else if ( cur === 'progress' ) {
                    $info.remove();
                    $prgress.css('display', 'block');
                } else if ( cur === 'complete' ) {
                    $li.append( '<span class="success"></span>' );
                }

                $li.removeClass( 'state-' + prev ).addClass( 'state-' + cur );
            });

            $li.on( 'mouseenter', function() {
                $btns.stop().animate({height: 30});
            });

            $li.on( 'mouseleave', function() {
                $btns.stop().animate({height: 0});
            });

            $btns.on( 'click', 'span', function() {
                var index = $(this).index(),
                    deg;

                switch ( index ) {
                    case 0:
                        uploader.removeFile( file );
                        return;

                    case 1:
                        file.rotation += 90;
                        break;

                    case 2:
                        file.rotation -= 90;
                        break;
                }

                if ( supportTransition ) {
                    deg = 'rotate(' + file.rotation + 'deg)';
                    $wrap.css({
                        '-webkit-transform': deg,
                        '-mos-transform': deg,
                        '-o-transform': deg,
                        'transform': deg
                    });
                } else {
                    $wrap.css( 'filter', 'progid:DXImageTransform.Microsoft.BasicImage(rotation='+ (~~((file.rotation/90)%4 + 4)%4) +')');

                }


            });

            $li.appendTo( $queue );
        }

        // 负责view的销毁
        function removeFile( file ) {
            var $li = $('#'+file.id);

            delete percentages[ file.id ];
            updateTotalProgress();
            $li.off().find('.file-panel').off().end().remove();
        }

        function updateTotalProgress() {
            var loaded = 0,
                total = 0,
                spans = $progress.children(),
                percent;

            $.each( percentages, function( k, v ) {
                total += v[ 0 ];
                loaded += v[ 0 ] * v[ 1 ];
            } );

            percent = total ? loaded / total : 0;


            spans.eq( 0 ).text( Math.round( percent * 100 ) + '%' );
            spans.eq( 1 ).css( 'width', Math.round( percent * 100 ) + '%' );
            updateStatus();
        }

        function updateStatus() {
            var text = '', stats;

            if ( state === 'ready' ) {
                text = '选中' + fileCount + '张图片，共' +
                        WebUploader.formatSize( fileSize ) + '。';
            } else if ( state === 'confirm' ) {
                stats = uploader.getStats();
                if ( stats.uploadFailNum ) {
                    text = '已成功上传' + stats.successNum+ '张照片至XX相册，'+
                        stats.uploadFailNum + '张照片上传失败，<a class="retry" href="#">重新上传</a>失败图片或<a class="ignore" href="#">忽略</a>'
                }

            } else {
                stats = uploader.getStats();
                text = '共' + fileCount + '张（' +
                        WebUploader.formatSize( fileSize )  +
                        '），已上传' + stats.successNum + '张';

                if ( stats.uploadFailNum ) {
                    text += '，失败' + stats.uploadFailNum + '张';
                }
            }

            $info.html( text );
        }

        function setState( val ) {
            var file, stats;

            if ( val === state ) {
                return;
            }

            $upload.removeClass( 'state-' + state );
            $upload.addClass( 'state-' + val );
            state = val;

            switch ( state ) {
                case 'pedding':
                    $placeHolder.removeClass( 'element-invisible' );
                    $queue.hide();
                    $statusBar.addClass( 'element-invisible' );
                    uploader.refresh();
                    break;

                case 'ready':
                    $placeHolder.addClass( 'element-invisible' );
                    $( '#filePicker2' ).removeClass( 'element-invisible');
                    $queue.show();
                    $statusBar.removeClass('element-invisible');
                    uploader.refresh();
                    break;

                case 'uploading':
                    $( '#filePicker2' ).addClass( 'element-invisible' );
                    $progress.show();
                    $upload.text( '暂停上传' );
                    break;

                case 'paused':
                    $progress.show();
                    $upload.text( '继续上传' );
                    break;

                case 'confirm':
                    $progress.hide();
                    $( '#filePicker2' ).removeClass( 'element-invisible' );
                    $upload.text( '开始上传' );

                    stats = uploader.getStats();
                    if ( stats.successNum && !stats.uploadFailNum ) {
                        setState( 'finish' );
                        return;
                    }
                    break;
                case 'finish':
                    stats = uploader.getStats();
                    if ( stats.successNum ) {
                        alert( '上传成功');
                    } else {
                        // 没有成功的图片，重设
                        state = 'done';
                        location.reload();
                    }
                    break;
            }

            updateStatus();
        }

        uploader.onUploadProgress = function( file, percentage ) {
            var $li = $('#'+file.id),
                $percent = $li.find('.progress span');

            $percent.css( 'width', percentage * 100 + '%' );
            percentages[ file.id ][ 1 ] = percentage;
            updateTotalProgress();
        };

        uploader.onFileQueued = function( file ) {
            fileCount++;
            fileSize += file.size;

            if ( fileCount === 1 ) {
                $placeHolder.addClass( 'element-invisible' );
                $statusBar.show();
            }

            addFile( file );
            setState( 'ready' );
            updateTotalProgress();
        };

        uploader.onFileDequeued = function( file ) {
            fileCount--;
            fileSize -= file.size;

            if ( !fileCount ) {
                setState( 'pedding' );
            }

            removeFile( file );
            updateTotalProgress();

        };

        uploader.on( 'all', function( type ) {
            var stats;
            switch( type ) {
                case 'uploadFinished':
                    setState( 'confirm' );
                    break;

                case 'startUpload':
                    setState( 'uploading' );
                    break;

                case 'stopUpload':
                    setState( 'paused' );
                    break;

            }
        });

        uploader.onError = function( code ) {
            alert( 'Eroor: ' + code );
        };

        $upload.on('click', function() {
            if ( $(this).hasClass( 'disabled' ) ) {
                return false;
            }

            if ( state === 'ready' ) {
                uploader.upload();
            } else if ( state === 'paused' ) {
                uploader.upload();
            } else if ( state === 'uploading' ) {
                uploader.stop();
            }
        });

        $info.on( 'click', '.retry', function() {
            uploader.retry();
        } );

        $info.on( 'click', '.ignore', function() {
            alert( 'todo' );
        } );

        $upload.addClass( 'state-' + state );
        updateTotalProgress();
    });

})( jQuery );
</script>
</body>
</html>