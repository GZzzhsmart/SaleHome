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
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,mission-scalable=no" />
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
<title>员工绩效的修改</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" onsubmit="return checkvolid();" id="form-admin-add" action="<%=path%>/mission/updatesavemission" method="post">
		<input type="hidden" name="mission.idString" value="${mission.idString}"/>
		<input type="hidden" name="mission.lastQuantityInt" value="${mission.lastQuantityInt}"/>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>员工名称：</label>
			<div class="formControls col-xs-6 col-sm-6">
				<span class="select-box">
					<select name="mission.empIdString" class="select" >
						<option value="-1">请选择员工名称</option>
						<c:forEach items="${employeelist}" var="l">
							<c:if test="${mission.empIdString==l.idString}">
								<option value="${l.idString}" selected="selected">${l.nameString}</option>
							</c:if>
							<c:if test="${mission.empIdString!=l.idString}">
								<option value="${l.idString}">${l.nameString}</option>
							</c:if>
						</c:forEach>
					</select>
				</span>
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="housetype" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>任务量：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text" onblur="checkphone(this.value);" placeholder="请输入员工的任务量" id="mission_quantityInt" value="${mission.quantityInt}" name="mission.quantityInt" style="width:26.1em">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="phoneString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>月份（月）：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text"  onblur="checkwechatString(this.value);" placeholder="请输入员工完成的任务的月份" id="mission_monthesint" style="width:26.1em" value="${mission.monthesint}" name="mission.monthesint">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="wechatString" ></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-2 col-sm-3"><span class="c-red">*</span>提成（%）：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="number" class="input-text"  onblur="checkqq(this.value);" placeholder="请输入员工的提成销售比例" id="mission_bonusPercentDouble" name="mission.bonusPercentDouble"  value="${mission.bonusPercentDouble}" style="width:26.1em">
				<span style="display:none;color:#ff0033;align:center;font-size:4px;height:8px" id="qqString" ></span>
			</div>
		</div>
		
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit" onclick=""><i class="Hui-iconfont">&#xe632;</i> 确认修改</button>
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
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>