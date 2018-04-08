<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>客户预约列表</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		客户预约管理 <span class="c-gray en">&gt;</span> 客户预约列表 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:void(0);" onclick="refresh();" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<div class="text-c">
			日期范围： <input type="date"
				id="datemin" class="input-text" style="width: 160px;height:2.4em">
			- <input type="date"
				id="datemax" class="input-text" style="width: 160px;height:2.4em">
			<input type="text" class="input-text" style="width: 250px;height:2.4em"
				placeholder="输入客户预约名称" id="" name="">
			<button type="submit" class="btn btn-success" style="height:2.4em" id="" name="">
				<i class="Hui-iconfont">&#xe665;</i> 搜客户预约
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l">
				<a href="javascript:;" onclick="datadel();" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> 
				<button onclick="removeIframe()" class="btn btn-primary radius">关闭当前页</button>
			</span> 
			<span class="r" id="info">共有数据：<strong>${pager.pagebarsum}</strong> 条</span>
		</div>
		<table
			class="table table-border table-bordered table-bg table-hover table-sort" id="datainfo">
			<thead>
				<tr>
					<th scope="col" colspan="11">客户预约列表</th>
				</tr>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th width="60">客户头像</th>
					<th width="60">客户名称</th>
					<th width="60">客户员工</th>
					<th width="60">心仪户型</th>
					<th width="130">预约时间</th>
					<th width="130">看房时间</th>
					<th width="60">预约状态</th>
					<th width="50">查看问卷</th>
					<th width="50">状态</th>
					<th width="130">操作</th>
				</tr>
			</thead>
			<tbody id="pageBody">
				<s:iterator var="l" value="#request.appointmentlist">
					<tr class="text-c">
						<td>
							<input type="checkbox" value="${l.idString}" name="id">
						</td>
						<td>
							<input type="image" src="<%=path %>/${l.user.headiconString}" style="width:4em;height:4em;border-radius:100%">
						</td>
						<td>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="user_edit('${l.user.nameString}客户预约详情','<%=path%>/user/showuser?user.idString=${l.user.idString}','${l.user.nameString}','','530')">${l.user.nameString}</a>
						</td>
						<td>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="user_edit('${l.employee.nameString}员工详情','<%=path%>/yg/showemployee?employee.idString=${l.employee.idString}','${l.employee.nameString}','','530')">${l.employee.nameString}</a>
						</td>
						<td>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="user_edit('${l.house.nameString}户型详情','<%=path%>/hx/showhouse?house.idString=${l.house.idString}','${l.house.nameString}','600','430')">${l.house.nameString}</a>
						</td>
						<td>${l.appArriveTime}</td>
						<c:if test="${l.arriveTime!=null}">
							<td>${l.arriveTime}</td>
						</c:if>
						<c:if test="${l.arriveTime==null}">
							<td>暂无看房</td>
						</c:if>
						<td>
							<c:if test="${l.appStatusInt==0}">
								已经预约
							</c:if>
							<c:if test="${l.appStatusInt==1}">
								未看房
							</c:if>
							<c:if test="${l.appStatusInt==2}">
								确认看房
							</c:if>
							<c:if test="${l.appStatusInt==3}">
								成功（全款）购房
							</c:if>
							<c:if test="${l.appStatusInt==4}">
								成功（分期）购房
							</c:if>
							<c:if test="${l.appStatusInt==5}">
								看房完成但不够房
							</c:if>
						</td>
						<td>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="page_show('${l.user.idString}客户购房问卷详情','<%=path%>/page/showpage?page.useridString=${l.user.idString}','${l.user.nameString}','','530')">${l.user.nameString}</a>
						</td>
						<c:if test="${l.status==0}">
							<td class="td-status"><span class="label label-success radius">已激活</span></td>
							<td class="td-manage">
								<a style="text-decoration: none"	onClick="appointment_stop(this,'${l.idString}')" href="javascript:;"	title="禁用"><i class="Hui-iconfont">&#xe631;</i></a> 
								<a title="编辑" href="javascript:;"	onclick="appointment_edit('${l.user.nameString}客户的修改','<%=path%>/hui-jxs/update-appointmentstatus.jsp?idString=${l.idString}&name=${l.employee.nameString}&email=${l.user.emailString}&house=${l.house.tbuilding.buildings.nameString}楼盘${l.house.tbuilding.nameString}楼栋的${l.house.nameString}户型&username=${l.user.nameString}','${l.user.nameString}','600','400')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6df;</i></a> 
								<a title="删除客户" href="javascript:;" onclick="appointment_del(this,'${l.idString}')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
							</td>
						</c:if>
						<c:if test="${l.status==1}">
							<td class="td-status"><span class="label label-default radius">已禁用</span></td>
							<td class="td-manage">
								<a style="text-decoration: none"	onClick="appointment_start(this,'${l.idString}')" href="javascript:;"	title="激活"><i class="Hui-iconfont">&#xe615;</i></a> 
								<a title="编辑" href="javascript:;"	onclick="appointment_edit('${l.user.nameString}客户的修改','<%=path%>/hui-jxs/update-appointmentstatus.jsp?idString=${l.idString}&name=${l.employee.nameString}&email=${l.user.emailString}&house=${l.house.tbuilding.buildings.nameString}楼盘${l.house.tbuilding.nameString}楼栋的${l.house.nameString}户型&username=${l.user.nameString}','${l.user.nameString}','600','400')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6df;</i></a> 
								<a title="删除客户" href="javascript:;" onclick="appointment_del(this,'${l.idString}')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
							</td>
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
						<select name="user.appointmentTypeString" class="select" style="width:80px;margin-top:0" onchange="checkpage(this.value);">
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
								<a href="<%=path%>/appointment/pageappointment?currentpage=1&handle=firstpage">← 第一页</a>
							</li>
							<li class="prev">
								<a href="<%=path%>/appointment/pageappointment?currentpage=${pager.currentpage}&handle=uppage">← 上一页</a>
							</li>
<!-- 							<li> -->
<%-- 								<a href="<%=path%>/lp/pageuser?currentpage=${n}">${n}</a> --%>
<!-- 							</li> -->
							<li class="next">
								<a href="<%=path%>/appointment/pageappointment?currentpage=${pager.currentpage}&handle=downpage">下一页 → </a>
							</li>
							<li class="next">
								<a href="<%=path%>/appointment/pageappointment?currentpage=${pager.sumpage}&handle=lastpage">尾页 → </a>
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
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=path %>/hui-jxs/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
		/*客户预约-增加*/
		function checkpage(index){
			window.location.href='${pageContext.request.contextPath}/appointment/pageappointment?currentpage='+index;
		}
		/*客户预约-刷新*/
		function refresh(){
			window.location.href='${pageContext.request.contextPath}/appointment/pageappointment';
			layer.msg('刷新成功!', {
				icon : 1,
				time : 2000
			});
			
		}
		/*楼盘-编辑*/
		function page_show(title, url, id, w, h) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
			// 	layer_show(title,url,w,h);
		}
		/*客户预约-编辑*/
		function user_edit(title, url, id, w, h) {
// 			var index = layer.open({
// 				type : 2,
// 				title : title,
// 				content : url
// 			});
// 			layer.full(index);
			layer_show(title,url,w,h);
		}
		function appointment_edit(title,url,id,w,h){
			layer_show(title,url,w,h);
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
			window.location.href='${pageContext.request.contextPath}/appointment/deletemanyappointment?id='+a;
			layer.msg('删除成功!', {
				icon : 1,
				time : 2000
			});
		}
		function appointment_add(title, url, w, h) {
			layer_show(title,url,w,h);
		}
		/*客户-删除*/
		function appointment_del(obj, id) {
			layer.confirm('确认要删除吗？',function(index) {
			$.ajax({
					type : 'POST',
					url : '${pageContext.request.contextPath}/appointment/deleteappointment?appointment.idString='+ id,
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
		function appointment_stop(obj, id) {
			layer.confirm('确认禁用吗？',function(index) {
				//此处请求后台程序，下方是成功后的前台处理……

				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="appointment_start(this,id)" href="javascript:;" title="激活" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
				$(obj).remove();
				layer.msg('已禁用!', {
					icon : 5,
					time : 1000
				});
				$.post(
					"${pageContext.request.contextPath}/appointment/updateappointmentstatus",
					{
						"appointment.idString" : id,
						"appointment.appStatusInt" : 1
					},
					function(data) {
					}, 
					"json"
				);
			});
		}

		/*客户-启用*/
		function appointment_start(obj, id) {
			layer.confirm('确认要激活吗？',
			function(index) {
				//此处请求后台程序，下方是成功后的前台处理……
				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="appointment_stop(this,id)" href="javascript:;" title="禁用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已激活</span>');
				$(obj).remove();
				layer.msg('已激活!', {
					icon : 6,
					time : 1000
				});
				$.post("${pageContext.request.contextPath}/appointment/updateappointmentstatus",
				{
					"appointment.idString" : id,
					"appointment.appStatusInt" : 0
				}, function(data) {
				}, "json");
			});
		}
</script>
</body>
</html>