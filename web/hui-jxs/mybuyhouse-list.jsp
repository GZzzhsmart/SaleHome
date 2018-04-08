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
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,customer-scalable=no" />
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
<title>我的购房列表</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		客户管理 <span class="c-gray en">&gt;</span> 客户列表 <a
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
				placeholder="输入客户名称" id="" name="">
			<button type="submit" class="btn btn-success" style="height:2.4em" id="" name="">
				<i class="Hui-iconfont">&#xe665;</i> 搜客户
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
					<th scope="col" colspan="9">客户列表</th>
				</tr>
				<tr class="text-c">
					<th width="80">客户头像</th>
					<th width="80">购房合同</th>
					<th width="60">客户姓名</th>
					<th width="60">性别</th>
					<th width="100">购房详情</th>
					<th width="90">联系方式</th>
					<th width="90">邮箱</th>
					<th width="60">客户类型</th>
					<th width="60">客户状态</th>
				</tr>
			</thead>
			<tbody id="pageBody">
				<s:iterator var="l" value="#request.customerlist">
					<tr class="text-c">
						<td>
							<input type="image" src="<%=path %>/${l.headiconString}" style="width:4em;height:4em;border-radius:100%">
						</td>
						<td>
							<c:if test="${l.contractString==null}">
								暂无
							</c:if>
							<c:if test="${l.contractString!=null}">
								<input type="image" src="<%=path %>/${l.contractString}" style="width:4em;height:4em;border-radius:100%">
							</c:if>
						</td>
						<td>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="customer_edit('${l.nameString}客户详情','<%=path%>/customer/showcustomer?customer.idString=${l.idString}','${l.nameString}','800','500')">${l.nameString}</a>
						</td>
						<td>${l.genderString}</td>
						<td>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="customer_edit('${l.nameString}客户购房详情','<%=path%>/customer/mybuyhouseinfo?customer.idString=${l.idString}','${l.nameString}','800','500')">购房详情</a>
						</td>
						<td>${l.phoneString}</td>
						<td>${l.emailString}</td>
						<td>
							<c:if test="${l.customerTypeInt==0}">
								预约客户
							</c:if>
							<c:if test="${l.customerTypeInt==1}">
								预定客户
							</c:if>
							<c:if test="${l.customerTypeInt==2}">
								购房客户
							</c:if>
						</td>
						<c:if test="${l.statusInt==0}">
							<td class="td-status"><span class="label label-success radius">已启用</span></td>
						</c:if>
						<c:if test="${l.statusInt==1}">
							<td class="td-status"><span class="label label-default radius">已禁用</span></td>
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
						<select name="customer.houseTypeString" class="select" style="width:80px;margin-top:0" onchange="checkpage(this.value);">
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
								<a href="<%=path%>/customer/mybuyhouse?currentpage=1&handle=firstpage">← 第一页</a>
							</li>
							<li class="prev">
								<a href="<%=path%>/customer/mybuyhouse?currentpage=${pager.currentpage}&handle=uppage">← 上一页</a>
							</li>
<!-- 							<li> -->
<%-- 								<a href="<%=path%>/lp/pagecustomer?currentpage=${n}">${n}</a> --%>
<!-- 							</li> -->
							<li class="next">
								<a href="<%=path%>/customer/mybuyhouse?currentpage=${pager.currentpage}&handle=downpage">下一页 → </a>
							</li>
							<li class="next">
								<a href="<%=path%>/customer/mybuyhouse?currentpage=${pager.sumpage}&handle=lastpage">尾页 → </a>
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
		/*客户-增加*/
		function checkpage(index){
			window.location.href='${pageContext.request.contextPath}/customer/mybuyhouse?currentpage='+index;
		}
		/*客户-刷新*/
		function refresh(){
			window.location.href='${pageContext.request.contextPath}/customer/mybuyhouse';
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
			window.location.href='${pageContext.request.contextPath}/customer/deletemanycustomer?id='+a;
			layer.msg('删除成功!', {
				icon : 1,
				time : 2000
			});
		}
		function customer_add(title, url, w, h) {
			layer_show(title,url,w,h);
		}
		/*客户-删除*/
		function customer_del(obj, id) {
			layer.confirm('确认要删除吗？',function(index) {
			$.ajax({
					type : 'POST',
					url : '${pageContext.request.contextPath}/customer/deletecustomer?customer.idString='+ id,
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
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
			// 	layer_show(title,url,w,h);
		}
		/*客户-编辑*/
		function customer_edit(title, url, id, w, h) {
// 			var index = layer.open({
// 				type : 2,
// 				title : title,
// 				content : url
// 			});
// 			layer.full(index);
			layer_show(title,url,w,h);
		}
		function customer_addimg(title,url,id,w,h){
			layer_show(title,url,w,h);
		}
		/*楼栋-停用*/
		function customer_stop(obj, id) {
			layer.confirm('确认禁用吗？',function(index) {
				//此处请求后台程序，下方是成功后的前台处理……

				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="customer_start(this,id)" href="javascript:;" title="启用" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
				$(obj).remove();
				layer.msg('已禁用!', {
					icon : 5,
					time : 1000
				});
				$.post(
					"${pageContext.request.contextPath}/customer/updatecustomerstatus",
					{
						"customer.idString" : id,
						"customer.statusInt" : 1
					},
					function(data) {
					}, 
					"json"
				);
			});
		}

		/*楼栋-启用*/
		function customer_start(obj, id) {
			layer.confirm('确认要启用吗？',
			function(index) {
				//此处请求后台程序，下方是成功后的前台处理……
				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="customer_stop(this,id)" href="javascript:;" title="禁用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
				$(obj).remove();
				layer.msg('已启用!', {
					icon : 6,
					time : 1000
				});
				$.post("${pageContext.request.contextPath}/customer/updatecustomerstatus",
				{
					"customer.idString" : id,
					"customer.statusInt" : 0
				}, function(data) {
				}, "json");
			});
		}

</script>
</body>
</html>