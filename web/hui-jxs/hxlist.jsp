<%@page import="com.ht.pojo.TEmployee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basepath = getServletContext().getRealPath("/");
	TEmployee employee = (TEmployee)session.getAttribute("employee");

%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
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
<link rel="stylesheet" type="text/css" href="<%=path %>/css/page.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/page1.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/page2.css"><!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>户型列表</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		户型管理 <span class="c-gray en">&gt;</span> 户型列表 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:void(0);" onclick="refresh();" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<div class="text-c">
			<form action="<%=path%>/hx/pagehouse" method="post">
				<input type="hidden" name="tbuilding.idString" value="${tbuilding.idString}" />
				日期范围： <input type="date"
				id="datemin" class="input-text" name="startTime" style="width: 160px;height:2.4em">
				- <input type="date"
					id="datemax" class="input-text" name="endTime" style="width: 160px;height:2.4em">
				<button type="submit" class="btn btn-success" style="height:2.4em" id="" name="">
					<i class="Hui-iconfont">&#xe665;</i> 搜户型
				</button>
			</form>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l">
				<a href="javascript:;" onclick="datadel();" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除${l.tbuilding.idString}</a> 
				<c:if test="<%=employee==null %>">
					<a href="javascript:;" onclick="house_add('添加户型','<%=path%>/hx/lpldlist?tbuilding.idString=${tbuilding.idString}','800','500')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加户型</a>
				</c:if>
				<a href="javascript:;" onclick="loudong();" class="btn btn-primary radius">楼栋列表</a>
				<button onclick="removeIframe()" class="btn btn-primary radius">关闭当前页</button>
			</span> 
			<span class="r" id="info">共有数据：<strong>${pager.pagebarsum}</strong> 条</span>
		</div>
		<table
			class="table table-border table-bordered table-bg table-hover table-sort" id="datainfo">
			<thead>
				<tr>
					<th scope="col" colspan="9">户型列表</th>
				</tr>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th width="150">户型图片</th>
					<th width="90">户型名称</th>
					<th width="150">户型简介</th>
					<th>户型面积</th>
					<th width="130">户型单价</th>
					<th width="130">所属楼栋</th>
					<th width="100">状态</th>
					<th width="100">操作</th>
				</tr>
			</thead>
			<tbody id="pageBody">
				<s:iterator var="l" value="#request.houselist">
					<tr class="text-c">
						<td>
							<input type="checkbox" value="${l.idString}" name="id">
						</td>
						<td>
							<input type="image" src="<%=path %>/${l.logoString}" style="width:5em;height:2em">
						</td>
						<td>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="house_edit('${l.nameString}户型详情','<%=path%>/hx/showhouse?house.idString=${l.idString}','${l.nameString}','600','430')">${l.nameString}</a>
						</td>
						<td>${l.introString}</td>
						<td>${l.areaDouble}</td>
						<td>${l.unitPriceDouble}</td>
						<td>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="loupan_edit('${l.tbuilding.nameString}楼栋详情','<%=path%>/ld/showloudong?loudong.idString=${l.tbuilding.idString}','${l.tbuilding.nameString}','700','430')">${l.tbuilding.nameString}</a>
						</td>
						<c:if test="${l.statusInt==0}">
							<td class="td-status"><span class="label label-success radius">已开售</span></td>
							<c:if test="<%=employee==null %>">
								<td class="td-manage">
									<a style="text-decoration: none" onClick="house_stop(this,'${l.idString}')" href="javascript:;"	title="售罄"><i class="Hui-iconfont">&#xe631;</i></a> 
									<a title="编辑" href="javascript:;" onclick="house_edit('${l.nameString}户型的修改','<%=path%>/hx/updatehouse?house.idString=${l.idString}','${l.nameString}','600','500')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6df;</i></a> 
									<a style="text-decoration: none" onClick="house_stop(this,'${l.idString}')" href="javascript:;"	title="售罄"><i class="Hui-iconfont">&#xe631;</i></a> 
									<a title="房号列表" href="javascript:;" onclick="room_list(this,'${l.idString}')"	class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe687;</i></a>
								</td>
							</c:if>
							<c:if test="<%=employee!=null %>">
								<td class="td-manage">
									<a title="房号列表" href="javascript:;" onclick="room_list(this,'${l.idString}')"	class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe687;</i>房号列表</a>
								</td>
							</c:if>
						</c:if>
						<c:if test="${l.statusInt==1}">
							<td class="td-status"><span class="label label-default radius">已售罄</span></td>
							<c:if test="<%=employee==null %>">
								<td class="td-manage">
									<a style="text-decoration: none"	onClick="house_start(this,'${l.idString}')" href="javascript:;"	title="开售"><i class="Hui-iconfont">&#xe615;</i></a> 
									<a title="编辑" href="javascript:;"	onclick="house_edit('${l.nameString}户型的修改','<%=path%>/hx/updatehouse?house.idString=${l.idString}','${l.nameString}','600','500')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6df;</i></a> 
									<a title="删除户型" href="javascript:;" onclick="house_del(this,'${l.idString}')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
									<a title="房号列表" href="javascript:;" onclick="room_list(this,'${l.idString}')"	class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe687;</i></a>
								</td>
							</c:if>
							<c:if test="<%=employee!=null %>">
								<td class="td-manage">
									<a title="房号列表" href="javascript:;" onclick="room_list(this,'${l.idString}')"	class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe687;</i>房号列表</a>
								</td>
							</c:if>
						</c:if>
					</tr>
				</s:iterator>
			</tbody>
		</table>
		<div id="page">
			<div class="row-fluid">
				<div class="span6">
					<div class="dataTables_info" id="DataTables_Table_0_info">
						<label class="form-label col-xs-1 col-sm-6">显示第 ${pager.starlocal+1} 至 ${pager.starlocal+pager.pagebarsize}项记录，共${pager.pagebarsum}项，共${pager.sumpage}页</label>
						<select name="house.houseTypeString" class="select" style="width:80px;margin-top:0" onchange="checkpage(this.value);">
							<c:forEach var="n" begin="1" end="${pager.sumpage}" varStatus="status">
								<c:if test="${n==pager.currentpage}">
									<option value="${n}" selected="selected">第${n}页</option>
								</c:if>
								<c:if test="${n!=pager.currentpage}">
									<option value="${n}">第${n}页</option>
								</c:if>
							</c:forEach>
						</select>
						<label class="form-label col-xs-1 col-sm-2">跳转页数</label>
					</div>
				</div>
				<div class="span6">
					<div class="dataTables_paginate paging_bootstrap pagination">
						<ul>
							<li class="prev">
								<a href="<%=path%>/hx/pagehouse?currentpage=1&handle=firstpage&tbuilding.idString=${tbuilding.idString}">← 第一页</a>
							</li>
							<li class="prev">
								<a href="<%=path%>/hx/pagehouse?currentpage=${pager.currentpage}&handle=uppage&tbuilding.idString=${tbuilding.idString}">← 上一页</a>
							</li>
<!-- 							<li> -->
<%-- 								<a href="<%=path%>/lp/pagehouse?currentpage=${n}">${n}</a> --%>
<!-- 							</li> -->
							<li class="next">
								<a href="<%=path%>/hx/pagehouse?currentpage=${pager.currentpage}&handle=downpage&tbuilding.idString=${tbuilding.idString}">下一页 → </a>
							</li>
							<li class="next">
								<a href="<%=path%>/hx/pagehouse?currentpage=${pager.sumpage}&handle=lastpage&tbuilding.idString=${tbuilding.idString}">尾页 → </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
		/*
		 参数解释：
		 title	标题
		 url		请求的url
		 id		需要操作的数据id
		 w		弹出层宽度（缺省调默认值）
		 h		弹出层高度（缺省调默认值）
		 */
		/*户型-增加*/
		function checkpage(index){
			window.location.href='${pageContext.request.contextPath}/hx/pagehouse?currentpage='+index;
		}
		function loudong(){
			window.location.href='${pageContext.request.contextPath}/ld/pageloudong';
		}
		function room_list(obj, id){
			window.location.href='${pageContext.request.contextPath}/room/pageroom?huxing.idString='+id;
		}
		/*户型-刷新*/
		function refresh(){
			window.location.href='${pageContext.request.contextPath}/hx/pagehouse?tbuilding.idString=${tbuilding.idString}';
			layer.msg('刷新成功!', {
				icon : 1,
				time : 2000
			});
			
		}
		function datadel(){
			var a =[]; 
			$('input[name="id"]:checked').each(function(){ 
				a.push($(this).val()); 
			});
			if(a==""){
				layer.msg('删除失败，请勾选数据!', {
					icon : 2,
					time : 2000
				});
				return ;
			}
			window.location.href='${pageContext.request.contextPath}/hx/deletemanyhouse?id='+a+'&tbuilding.idString=${tbuilding.idString}';
			layer.msg('删除成功!', {
				icon : 1,
				time : 2000
			});
		}
		function house_add(title, url, w, h) {
			layer_show(title,url,w,h);
		}
		/*户型-删除*/
		function house_del(obj, id) {
			layer.confirm('确认要删除吗？',function(index) {
			$.ajax({
					type : 'POST',
					url : '${pageContext.request.contextPath}/hx/deletehouse?house.idString='+ id+'&tbuilding.idString=${tbuilding.idString}',
					dataType : 'text',
					success : function(data) {
						layer.msg('已删除!', {
							icon : 1,
							time : 1000
						});
						$(obj).parents("tr").remove();
					},
					error : function(data) {
						console.log(data.msg);
					},
				});
			});
		}
		/*楼盘-编辑*/
		function loupan_edit(title, url, id, w, h) {
// 			var index = layer.open({
// 				type : 2,
// 				title : title,
// 				content : url
// 			});
// 			layer.full(index);
				layer_show(title,url,w,h);
		}
		/*户型-编辑*/
		function house_edit(title, url, id, w, h) {
// 			var index = layer.open({
// 				type : 2,
// 				title : title,
// 				content : url
// 			});
// 			layer.full(index);
			layer_show(title,url,w,h);
		}
		function house_addimg(title,url,id,w,h){
			layer_show(title,url,w,h);
		}
		/*户型-停用*/
		function house_stop(obj, id) {
			layer.confirm('确认售罄吗？',function(index) {
				//此处请求后台程序，下方是成功后的前台处理……

				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="house_start(this,id)" href="javascript:;" title="开售" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已售罄</span>');
				$(obj).remove();
				layer.msg('已售罄!', {
					icon : 5,
					time : 1000
				});
				$.post(
					"${pageContext.request.contextPath}/hx/updatehxstatus",
					{
						"house.idString" : id,
						"house.statusInt" : 1
					},
					function(data) {
					}, 
					"json"
				);
			});
		}

		/*户型-启用*/
		function house_start(obj, id) {
			layer.confirm('确认要开售吗？',
			function(index) {
				//此处请求后台程序，下方是成功后的前台处理……
				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="house_stop(this,id)" href="javascript:;" title="售罄" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已开售</span>');
				$(obj).remove();
				layer.msg('已开售!', {
					icon : 6,
					time : 1000
				});
				$.post("${pageContext.request.contextPath}/hx/updatehxstatus",
				{
					"house.idString" : id,
					"house.statusInt" : 0
				}, function(data) {
				}, "json");
			});
		}
</script>
</body>
</html>