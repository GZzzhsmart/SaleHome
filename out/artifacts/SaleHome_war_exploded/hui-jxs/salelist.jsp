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
<title>销售记录列表</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		销售记录管理 <span class="c-gray en">&gt;</span> 销售记录列表 <a
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
				placeholder="输入销售记录名称" id="" name="">
			<button type="submit" class="btn btn-success" style="height:2.4em" id="" name="">
				<i class="Hui-iconfont">&#xe665;</i> 搜销售记录
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l">
				<a href="javascript:;" onclick="datadel();" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> 
				<a href="javascript:;" onclick="sale_add('添加销售记录','<%=path%>/sale/initaddsale','600','600')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加销售账单</a>
				<button onclick="removeIframe()" class="btn btn-primary radius">关闭当前页</button>
			</span> 
			<span class="r" id="info">共有数据：<strong>${pager.pagebarsum}</strong> 条</span>
		</div>
		<table
			class="table table-border table-bordered table-bg table-hover table-sort" id="datainfo">
			<thead>
				<tr>
					<th scope="col" colspan="10">销售记录列表</th>
				</tr>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th width="80">销售客户</th>
					<th width="60">销售单价</th>
					<th width="60">房屋编号</th>
					<th width="80">折扣（折）</th>
					<th width="80">总价（万元）</th>
					<th width="60">销售员工</th>
					<th width="60">账单审核</th>
					<th width="60">销售状态</th>
					<th width="100">操作</th>
				</tr>
			</thead>
			<tbody id="pageBody">
				<s:iterator var="l" value="#request.salelist">
					<tr class="text-c">
						<td>
							<input type="checkbox" value="${l.idString}" name="id">
						</td>
						<td>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="sale_edit('${l.customer.nameString}客户详情','<%=path%>/customer/showcustomer?customer.idString=${l.customer.idString}','${l.customer.nameString}','600','430')">${l.customer.nameString}</a>
						</td>
						<td>${l.unitPriceDouble}</td>
						<td>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="sale_edit('${l.room.idString}房号详情','<%=path%>/room/showroom?room.idString=${l.room.idString}','${l.room.nameString}','600','430')">${l.room.nameString}</a>
						</td>
						<td>${10-l.discountDouble}</td>
						<td>${l.totalCostDouble/10000}</td>
						<td>
							<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="loupan_edit('${l.employee.nameString}员工详情','<%=path%>/yg/showemployee?employee.idString=${l.employee.idString}','${l.employee.nameString}','700','430')">${l.employee.nameString}</a>
						</td>
						<td>
							<c:if test="${l.saleHomeStatus==0}">
								请求已发送
							</c:if>
							<c:if test="${l.saleHomeStatus==1}">
								审核通过
							</c:if>
							<c:if test="${l.saleHomeStatus==2}">
								审核不通过
							</c:if>
							<c:if test="${l.saleHomeStatus==3}">
								审核驳回
							</c:if>
						</td>
						<c:if test="${l.statusInt==0}">
							<td class="td-status"><span class="label label-success radius">已激活</span></td>
							<td class="td-manage">
								<a style="text-decoration: none" onClick="sale_stop(this,'${l.idString}')" href="javascript:;"	title="禁用"><i class="Hui-iconfont">&#xe631;</i></a> 
								<a title="删除销售记录" href="javascript:;" onclick="sale_del(this,'${l.idString}')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
								<c:if test="${l.saleHomeStatus==1}">
									<a title="编辑" href="javascript:;"	onclick="sale_edit('${l.customerIdString}的购房合同上传','<%=path%>/hui-jxs/up-pact.jsp?id=${l.customerIdString}','${l.customerIdString}','','260')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6df;</i>上传合同</a> 
								</c:if>
							</td>
						</c:if>
						<c:if test="${l.statusInt==1}">
							<td class="td-status"><span class="label label-default radius">已禁用</span></td>
							<td class="td-manage">
								<a style="text-decoration: none"	onClick="sale_start(this,'${l.idString}')" href="javascript:;"	title="激活"><i class="Hui-iconfont">&#xe615;</i></a> 
								<a title="删除销售记录" href="javascript:;" onclick="sale_del(this,'${l.idString}')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
								<c:if test="${l.saleHomeStatus==1}">
									<a title="编辑" href="javascript:;"	onclick="sale_edit('${l.customerIdString}的购房合同上传','<%=path%>/hui-jxs/up-pact.jsp?id=${l.customerIdString}','${l.customerIdString}','','260')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6df;</i>上传合同</a> 
								</c:if>
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
						<select name="sale.saleTypeString" class="select" style="width:80px;margin-top:0" onchange="checkpage(this.value);">
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
								<a href="<%=path%>/sale/pagesale?currentpage=1&handle=firstpage&tbuilding.idString=${tbuilding.idString}">← 第一页</a>
							</li>
							<li class="prev">
								<a href="<%=path%>/sale/pagesale?currentpage=${pager.currentpage}&handle=uppage&tbuilding.idString=${tbuilding.idString}">← 上一页</a>
							</li>
<!-- 							<li> -->
<%-- 								<a href="<%=path%>/lp/pagesale?currentpage=${n}">${n}</a> --%>
<!-- 							</li> -->
							<li class="next">
								<a href="<%=path%>/sale/pagesale?currentpage=${pager.currentpage}&handle=downpage&tbuilding.idString=${tbuilding.idString}">下一页 → </a>
							</li>
							<li class="next">
								<a href="<%=path%>/sale/pagesale?currentpage=${pager.sumpage}&handle=lastpage&tbuilding.idString=${tbuilding.idString}">尾页 → </a>
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
		/*销售记录-增加*/
		function checkpage(index){
			window.location.href='${pageContext.request.contextPath}/sale/pagesale?currentpage='+index;
		}
		/*销售记录-刷新*/
		function refresh(){
			window.location.href='${pageContext.request.contextPath}/sale/pagesale?tbuilding.idString=${tbuilding.idString}';
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
			window.location.href='${pageContext.request.contextPath}/sale/deletemanysale?id='+a;
			layer.msg('删除成功!', {
				icon : 1,
				time : 2000
			});
		}
		function sale_add(title, url, w, h) {
			layer_show(title,url,w,h);
		}
		/*销售记录-删除*/
		function sale_del(obj, id) {
			layer.confirm('确认要删除吗？',function(index) {
			$.ajax({
					type : 'POST',
					url : '${pageContext.request.contextPath}/sale/deletesale?sale.idString='+ id,
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
		/*楼盘-编辑*/
		function sale_add(title, url, id, w, h) {
				layer_show(title,url,w,h);
		}
		/*销售记录-编辑*/
		function sale_edit(title, url, id, w, h) {
// 			var index = layer.open({
// 				type : 2,
// 				title : title,
// 				content : url
// 			});
// 			layer.full(index);
			layer_show(title,url,w,h);
		}
		function sale_addimg(title,url,id,w,h){
			layer_show(title,url,w,h);
		}
		/*销售记录-停用*/
		function sale_stop(obj, id) {
			layer.confirm('确认禁用吗？',function(index) {
				//此处请求后台程序，下方是成功后的前台处理……

				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="sale_start(this,id)" href="javascript:;" title="激活" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
				$(obj).remove();
				layer.msg('已禁用!', {
					icon : 5,
					time : 1000
				});
				$.post(
					"${pageContext.request.contextPath}/sale/updatesalestatus",
					{
						"sale.idString" : id,
						"sale.statusInt" : 1
					},
					function(data) {
					}, 
					"json"
				);
			});
		}

		/*销售记录-启用*/
		function sale_start(obj, id) {
			layer.confirm('确认要激活吗？',
			function(index) {
				//此处请求后台程序，下方是成功后的前台处理……
				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="sale_stop(this,id)" href="javascript:;" title="禁用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已激活</span>');
				$(obj).remove();
				layer.msg('已激活!', {
					icon : 6,
					time : 1000
				});
				$.post("${pageContext.request.contextPath}/sale/updatesalestatus",
				{
					"sale.idString" : id,
					"sale.statusInt" : 0
				}, function(data) {
				}, "json");
			});
		}
</script>
</body>
</html>