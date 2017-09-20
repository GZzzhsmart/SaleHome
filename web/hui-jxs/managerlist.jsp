<%@page import="com.ht.pojo.TManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basepath = getServletContext().getRealPath("/");
	TManager manager =(TManager)session.getAttribute("manager");
			
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
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
<link rel="stylesheet" type="text/css" href="<%=path %>/css/page2.css">
<title>管理员列表</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		经销商管理 <span class="c-gray en">&gt;</span> 管理员列表 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:void(0);" onclick="refresh();" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<div class="text-c">
			日期范围： 
			<input type="date" id="datemin" class="input-text Wdate" style="width: 160px;height:2.5em">
			- <input type="date" id="datemax" class="input-text Wdate" style="width: 160px;height:2.5em">
			<input type="text" class="input-text" style="width: 250px;height:2.5em"
				placeholder="输入楼盘名称" id="" name="">
			<button type="submit" style="height:2.5em;margin-top:0" class="btn btn-success" id="" name="">
				<i class="Hui-iconfont">&#xe665;</i> 搜用户
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l">
				<a href="javascript:;" onclick="datadel();" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>批量删除</a> 
				<a href="javascript:;" onClick="manager_add('添加管理员','<%=path%>/hui-jxs/manager-add.jsp','800','')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加管理员</a>
				<button onclick="removeIframe()" class="btn btn-primary radius">关闭当前页</button>
			</span> 
			<span class="r" id="info">共有数据：<strong>${pager.pagebarsum}</strong> 条</span>
		</div>
		<table class="table table-border table-bordered table-bg table-hover table-sort" id="datainfo">
			<thead>
				<tr>
					<th scope="col" colspan="9">管理员列表</th>
				</tr>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th width="100">姓名</th>
					<th width="100">账号</th>
					<th width="90">性别</th>
					<th width="130">审核状态</th>
					<th width="100">所处状态</th>
					<th width="100">操作</th>
				</tr>
			</thead>
			<tbody id="pageBody">
				<s:iterator var="l" value="#request.managerlist">
					<tr class="text-c">
						<td><input type="checkbox" value="${l.idString}" name="id"></td>
						<td><a style="cursor: pointer" class="text-primary" onclick="manager_edit('${l.nameString}管理员详情','<%=path%>/manager/showmanager?manager.idString=${l.idString}','${l.nameString}','800','430')">${l.nameString}</a></td>
						<td>${l.phoneString}</td>
						<td>
							<c:if test="${l.sexInt==0}">
								男
							</c:if>
							<c:if test="${l.sexInt==1}">
								女
							</c:if>
						</td>
						<td>
							<c:if test="${l.checkedStatusInt==0}">
								<span class="label label-default radius">请求审核</span>
							</c:if>
							<c:if test="${l.checkedStatusInt==1}">
								<span class="label label-default radius">未审核</span>
							</c:if>
							<c:if test="${l.checkedStatusInt==2}">
								<span class="label label-success radius">审核通过</span>
							</c:if>
							<c:if test="${l.checkedStatusInt==3}">
								<span class="label label-default radius">审核不通过</span>
							</c:if>
							<c:if test="${l.checkedStatusInt==4}">
								<span class="label label-default radius">审核驳回</span>
							</c:if>
						</td>
						<c:if test="${l.statusInt==0}">
							<td class="td-status"><span class="label label-success radius">已激活</span></td>
							<td class="td-manage">
								<a style="text-decoration: none" onClick="manager_stop(this,'${l.idString}')" href="javascript:;" title="已禁用"><i class="Hui-iconfont">&#xe631;</i></a>
								<a style="text-decoration:none" onclick="manager_shenhe('${l.nameString}审核详情','<%=path%>/hui-jxs/manager-shenhe.jsp?idString=${l.idString}&typeInt=${l.typeInt}','${l.nameString}','600','330')" href="javascript:;" title="审核">审核</a>
								<a title="删除记录" href="javascript:;" onclick="manager_del(this,'${l.idString}')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
							</td>
						</c:if>
						<c:if test="${l.statusInt==1}">
							<td class="td-status"><span class="label label-default radius">已禁用</span></td>
							<td class="td-manage">
								<a style="text-decoration: none" onClick="manager_start(this,'${l.idString}')" href="javascript:;" title="已激活"><i class="Hui-iconfont">&#xe615;</i></a> 
								<a style="text-decoration:none" onclick="manager_shenhe('${l.nameString}审核详情','<%=path%>/hui-jxs/manager-shenhe.jsp?idString=${l.idString}&typeInt=${l.typeInt}','${l.nameString}','600','330')" href="javascript:;" title="审核">审核</a>
								<a title="删除记录" href="javascript:;" onclick="manager_del(this,'${l.idString}')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
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
						<select name="manager.houseTypeString" class="select" style="width:80px;margin-top:0" onchange="checkpage(this.value);">
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
								<a href="<%=path%>/manager/pagemanager?currentpage=1&handle=firstpage">← 第一页</a>
							</li>
							<li class="prev">
								<a href="<%=path%>/manager/pagemanager?currentpage=${pager.currentpage}&handle=uppage">← 上一页</a>
							</li>
<!-- 							<li> -->
<%-- 								<a href="<%=path%>/manager/managerlist?currentpage=${n}">${n}</a> --%>
<!-- 							</li> -->
							<li class="next">
								<a href="<%=path%>/manager/pagemanager?currentpage=${pager.currentpage}&handle=downpage">下一页 → </a>
							</li>
							<li class="next">
								<a href="<%=path%>/manager/pagemanager?currentpage=${pager.sumpage}&handle=lastpage">尾页 → </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

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
		/*
		 参数解释：
		 title	标题
		 url		请求的url
		 id		需要操作的数据id
		 w		弹出层宽度（缺省调默认值）
		 h		弹出层高度（缺省调默认值）
		 */
		/*楼盘-增加*/
		function checkpage(index){
			window.location.href='${pageContext.request.contextPath}/manager/pagemanager?currentpage='+index;
		}
		function refresh(){
			window.location.href='${pageContext.request.contextPath}/manager/pagemanager';
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
			window.location.href='${pageContext.request.contextPath}/manager/deletemanymanager?id='+a;
			layer.msg('删除成功!', {
				icon : 1,
				time : 2000
			});
		}
		function manager_add(title, url, id, w, h) {
// 			var index = layer.open({
// 				type : 2,
// 				title : title,
// 				content : url
// 			});
// 			layer.full(index);
			layer_show(title,url,w,h);
		}
		/*楼盘-删除*/
		function manager_del(obj, id) {
			layer.confirm('确认要删除吗？',function(index) {
			$.ajax({
					type : 'POST',
					url : '${pageContext.request.contextPath}/manager/deletemanager?manager.idString='+ id,
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
		function manager_edit(title, url, id, w, h) {
// 			var index = layer.open({
// 				type : 2,
// 				title : title,
// 				content : url
// 			});
// 			layer.full(index);
				layer_show(title,url,w,h);
		}
		function manager_shenhe(title, url, id, w, h) {
// 			var index = layer.open({
// 				type : 2,
// 				title : title,
// 				content : url
// 			});
// 			layer.full(index);
			layer_show(title,url,w,h);
		}
		function manager_addimg(title,url,id,w,h){
			layer_show(title,url,w,h);
		}
		/*楼盘-停用*/
		function manager_stop(obj, id) {
			layer.confirm('确认禁用吗？',function(index) {
				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="manager_start(this,id)" href="javascript:;" title="已激活" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
				$(obj).remove();
				layer.msg('已禁用!', {
					icon : 5,
					time : 1000
				});
				$.post(
					"${pageContext.request.contextPath}/manager/updatemanagerstatus",
					{
						"manager.idString" : id,
						"manager.statusInt" : 1
					},
					function(data) {
					}, 
					"json"
				);
			});
		}

		/*楼盘-启用*/
		function manager_start(obj, id) {
			layer.confirm('确认要已激活吗？',
			function(index) {
				//此处请求后台程序，下方是成功后的前台处理……
				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="manager_stop(this,id)" href="javascript:;" title="已禁用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已激活</span>');
				$(obj).remove();
				layer.msg('已激活!', {
					icon : 6,
					time : 1000
				});
				$.post("${pageContext.request.contextPath}/manager/updatemanagerstatus",
				{
					"manager.idString" : id,
					"manager.statusInt" : 0
				}, function(data) {
				}, "json");
			});
		}
	</script>
</body>
</html>