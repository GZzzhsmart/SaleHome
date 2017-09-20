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
<title>客户领奖列表</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		客户领奖管理 <span class="c-gray en">&gt;</span> 客户领奖列表 <a
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
				placeholder="输入客户领奖名称" id="" name="">
			<button type="submit" class="btn btn-success" style="height:2.4em" id="" name="">
				<i class="Hui-iconfont">&#xe665;</i> 搜客户领奖
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l">
				<button onclick="removeIframe()" class="btn btn-primary radius">关闭当前页</button>
			</span> 
			<span class="r" id="info">共有数据：<strong>${pager.pagebarsum}</strong> 条</span>
		</div>
		<table
			class="table table-border table-bordered table-bg table-hover table-sort" id="datainfo">
			<thead>
				<tr>
					<th scope="col" colspan="5">客户领奖列表</th>
				</tr>
				<tr class="text-c">
					<th width="150">中奖对象</th>
					<th width="150">中奖内容</th>
					<th width="150">中奖时间</th>
					<th width="150">领奖状态</th>
					<th width="100">操作</th>
				</tr>
			</thead>
			<tbody id="pageBody">
				<s:iterator var="l" value="#request.getprizelist">
					<tr class="text-c">
						<td>${l.useridString}</td>
						<td>${l.prizenameString}</td>
						<td>${l.createdTime}</td>
						<c:if test="${l.prizetypeInt==0}">
							<td class="td-status"><span class="label label-success radius">已领取</span></td>
							<td class="td-manage">
								<a style="text-decoration: none" onClick="getprize_stop(this,'${l.idString}')" href="javascript:;"	title="未领取"><i class="Hui-iconfont">&#xe631;</i></a> 
								<a title="删除客户领奖" href="javascript:;" onclick="getprize_del(this,'${l.idString}')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
							</td>
						</c:if>
						<c:if test="${l.prizetypeInt==1}">
							<td class="td-status"><span class="label label-default radius">已未领取</span></td>
								<td class="td-manage">
									<a style="text-decoration: none"	onClick="getprize_start(this,'${l.idString}')" href="javascript:;"	title="领取"><i class="Hui-iconfont">&#xe615;</i></a> 
									<a title="删除客户领奖" href="javascript:;" onclick="getprize_del(this,'${l.idString}')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
								</td>
						</c:if>
					</tr>
				</s:iterator>
			</tbody>
		</table>
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
		/*客户领奖-增加*/
		function checkpage(index){
			window.location.href='${pageContext.request.contextPath}/getprize/pagecustomerprize?currentpage='+index;
		}
		/*客户领奖-刷新*/
		function refresh(){
			window.location.href='${pageContext.request.contextPath}/getprize/pagecustomerprize?tbuilding.idString=${tbuilding.idString}';
			layer.msg('刷新成功!', {
				icon : 1,
				time : 2000
			});
			
		}
		
		/*客户领奖-删除*/
		function getprize_del(obj, id) {
			layer.confirm('确认要删除吗？',function(index) {
			$.ajax({
					type : 'POST',
					url : '${pageContext.request.contextPath}/getprize/deletegetprize?Prize.idString='+ id,
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

		/*客户领奖-停用*/
		function getprize_stop(obj, id) {
			layer.confirm('确认未领取吗？',function(index) {
				//此处请求后台程序，下方是成功后的前台处理……

				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="getprize_start(this,id)" href="javascript:;" title="领取" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已未领取</span>');
				$(obj).remove();
				layer.msg('已未领取!', {
					icon : 5,
					time : 1000
				});
				$.post(
					"${pageContext.request.contextPath}/getprize/updategetprizestatus",
					{
						"prize.idString":id,
						"prize.prizetypeInt":1
					},
					function(data) {
					}, 
					"json"
				);
			});
		}

		/*客户领奖-启用*/
		function getprize_start(obj, id) {
			layer.confirm('确认要领取吗？',
			function(index) {
				//此处请求后台程序，下方是成功后的前台处理……
				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="getprize_stop(this,id)" href="javascript:;" title="未领取" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已领取</span>');
				$(obj).remove();
				layer.msg('已领取!', {
					icon : 6,
					time : 1000
				});
				$.post("${pageContext.request.contextPath}/getprize/updategetprizestatus",
				{
					"prize.idString":id,
					"prize.prizetypeInt":0
				}, function(data) {
				}, "json");
			});
		}
</script>
</body>
</html>