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
<title>绩效列表</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		绩效管理 <span class="c-gray en">&gt;</span> 绩效列表 <a
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
				placeholder="输入绩效名称" id="" name="">
			<button type="submit" class="btn btn-success" style="height:2.4em" id="" name="">
				<i class="Hui-iconfont">&#xe665;</i> 搜绩效
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l">
				<a href="javascript:;" onclick="datadel();" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除${l.tbuilding.idString}</a> 
				<a href="javascript:;" onClick="mission_add('添加绩效','<%=path%>/mission/initaddmission','360','')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加绩效</a>
				<button onclick="removeIframe()" class="btn btn-primary radius">关闭当前页</button>
			</span> 
			<span class="r" id="info">共有数据：<strong>${pager.pagebarsum}</strong> 条</span>
		</div>
		<input type="hidden" id="hxingid" name="huxing.idString" value="${huxing.idString}"/>
		<table
			class="table table-border table-bordered table-bg table-hover table-sort" id="datainfo">
			<thead>
				<tr>
					<th scope="col" colspan="9">绩效列表</th>
				</tr>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th width="100">员工名称</th>
					<th width="100">初始任务量</th>
					<th width="100">完成任务量</th>					
					<th width="100">月份</th>
					<th width="100">销售提成</th>
					<th width="100">操作</th>
				</tr>
			</thead>
			<tbody id="pageBody">
				<s:iterator var="l" value="#request.missionlist">
					<c:if test="${l.lastQuantityInt>=l.quantityInt}">
						<tr class="text-c" style="background-color:#def0d8">
							<td>
								<input type="checkbox" value="${l.idString}" name="id">
							</td>
							<td>
								<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="mission_edit('${l.employee.nameString}员工详情','<%=path%>/yg/showemployee?employee.idString=${l.idString}','${l.employee.nameString}','','430')">${l.employee.nameString}</a>
							</td>
							<td>
								${l.quantityInt }
							</td>
							<td>
								${l.lastQuantityInt }
							</td>
							<td>
								${l.monthesint }
							</td>
							<td>
								${l.bonusPercentDouble }
							</td>
							<td>
								<a title="编辑绩效" href="javascript:;"	onclick="mission_edit('${l.employee.nameString}用户的修改','<%=path%>/mission/initupdatemission?mission.idString=${l.idString}','${l.employee.nameString}','','360')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6df;</i></a> 
								<a title="删除绩效" href="javascript:;" onclick="mission_del(this,'${l.idString}')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
							</td>
						</tr>
					
					</c:if>
					<c:if test="${l.lastQuantityInt<l.quantityInt}">
						<tr class="text-c" style="background-color:#f2dedf">
							<td>
								<input type="checkbox" value="${l.idString}" name="id">
							</td>
							<td>
								<a style="cursor: pointer;text-decoration: none;" class="text-primary" onclick="mission_edit('${l.employee.nameString}员工详情','<%=path%>/yg/showemployee?employee.idString=${l.idString}','${l.employee.nameString}','','430')">${l.employee.nameString}</a>
							</td>
							<td>
								${l.quantityInt }
							</td>
							<td>
								${l.lastQuantityInt }
							</td>
							<td>
								${l.monthesint }
							</td>
							<td>
								${l.bonusPercentDouble }
							</td>
							<td>
								<a title="编辑绩效" href="javascript:;"	onclick="mission_edit('${l.employee.nameString}用户的修改','<%=path%>/mission/initupdatemission?mission.idString=${l.idString}','${l.employee.nameString}','','360')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6df;</i></a> 
								<a title="删除绩效" href="javascript:;" onclick="mission_del(this,'${l.idString}')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
							</td>
						</tr>
					
					</c:if>
				</s:iterator>
			</tbody>
		</table>
		<div id="page">
			<div class="row-fluid">
				<div class="span6">
					<div class="dataTables_info" id="DataTables_Table_0_info">
						<label class="form-label col-xs-1 col-sm-6">显示第 ${pager.starlocal+1} 至 ${pager.starlocal+pager.pagebarsize}项记录，共${pager.pagebarsum}项，共${pager.sumpage}页</label>
						<select name="mission.missionTypeString" class="select" style="width:80px;margin-top:0" onchange="checkpage(this.value);">
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
								<a href="<%=path%>/mission/pagemission?currentpage=1&handle=firstpage">← 第一页</a>
							</li>
							<li class="prev">
								<a href="<%=path%>/mission/pagemission?currentpage=${pager.currentpage}&handle=uppage">← 上一页</a>
							</li>
							<li class="next">
								<a href="<%=path%>/mission/pagemission?currentpage=${pager.currentpage}&handle=downpage">下一页 → </a>
							</li>
							<li class="next">
								<a href="<%=path%>/mission/pagemission?currentpage=${pager.sumpage}&handle=lastpage">尾页 → </a>
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
	function mission_add(title, url, id, w, h) {
	//		var index = layer.open({
	//			type : 2,
	//			title : title,
	//			content : url
	//		});
	//		layer.full(index);
		layer_show(title,url,w,h);
	}
</script>
<script type="text/javascript">
		/*绩效-编辑*/
		
		/*
		 参数解释：
		 title	标题
		 url		请求的url
		 id		需要操作的数据id
		 w		弹出层宽度（缺省调默认值）
		 h		弹出层高度（缺省调默认值）
		 */
		function checkpage(index){
			window.location.href='${pageContext.request.contextPath}/mission/pagemission?currentpage='+index+'&huxing.idString='+$("#hxingid").val();
		}
		/*绩效-刷新*/
		function refresh(){
			window.location.href='${pageContext.request.contextPath}/mission/pagemission?huxing.idString='+$("#hxingid").val();
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
			window.location.href='${pageContext.request.contextPath}/mission/deletemanymission?id='+a+'&huxing.idString='+$("#hxingid").val();
			layer.msg('删除成功!', {
				icon : 1,
				time : 2000
			});
		}
		/*绩效-删除*/
		function mission_del(obj, id) {
			layer.confirm('确认要删除吗？',function(index) {
			$.ajax({
					type : 'POST',
					url : '${pageContext.request.contextPath}/mission/deletemission?mission.idString='+ id+'&huxing.idString='+$("#hxingid").val(),
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
		function loupan_show(title, url, id, w, h) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
// 				layer_show(title,url,w,h);
		}
		/*绩效-编辑*/
		function mission_edit(title, url, id, w, h) {
// 			var index = layer.open({
// 				type : 2,
// 				title : title,
// 				content : url
// 			});
// 			layer.full(index);
			layer_show(title,url,w,h);
		}
		function mission_addimg(title,url,id,w,h){
			layer_show(title,url,w,h);
		}
		/*绩效-停用*/
		function mission_stop(obj, id) {
			layer.confirm('确认售罄吗？',function(index) {
				//此处请求后台程序，下方是成功后的前台处理……
				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="mission_start(this,id)" href="javascript:;" title="开售" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已售罄</span>');
				$(obj).remove();
				layer.msg('已售罄!', {
					icon : 5,
					time : 1000
				});
				$.post(
					"${pageContext.request.contextPath}/mission/updatemissionstatus",
					{
						"mission.idString" : id,
						"mission.saleStatusInt" : 1,
						"huxing.idString":$("#hxingid").val()
					},
					function(data) {
					}, 
					"json"
				);
			});
		}

		/*绩效-启用*/
		function mission_start(obj, id) {
			layer.confirm('确认要开售吗？',
			function(index) {
				//此处请求后台程序，下方是成功后的前台处理……
				$(obj).parents("tr").find(".td-manage").prepend('<a onClick="mission_stop(this,id)" href="javascript:;" title="售罄" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已开售</span>');
				$(obj).remove();
				layer.msg('已开售!', {
					icon : 6,
					time : 1000
				});
				$.post("${pageContext.request.contextPath}/mission/updatemissionstatus",
				{
					"mission.idString" : id,
					"mission.saleStatusInt" : 0,
					"huxing.idString":$("#hxingid").val()
				}, function(data) {
				}, "json");
			});
		}
</script>
</body>
</html>