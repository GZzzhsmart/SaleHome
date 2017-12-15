<%@page import="com.ht.pojo.TAgency"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	TAgency tagency = (TAgency)session.getAttribute("tagency");
%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><%=tagency.getPhoneString()%>经销商</title>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap.min1.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/style1.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="<%=path %>/images/icon/icon.png">
<link rel="shortcut icon" href="<%=path %>/images/icon/favicon.ico">
<script src="<%=path %>/js/jquery-2.1.4.min.js"></script>
<!--[if gte IE 9]>
  <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="js/html5shiv.min.js" type="text/javascript"></script>
  <script src="js/respond.min.js" type="text/javascript"></script>
  <script src="js/selectivizr-min.js" type="text/javascript"></script>
<![endif]-->
<!--[if lt IE 9]>
  <script>window.location.href='upgrade-browser.html';</script>
<![endif]-->
</head>
<body class="user-select">
<c:if test="<%=tagency.getCheckedStatusInt()==0 %>"> 
	<script type="text/javascript">
		alert("尊敬的经销商，你的资料不完善，请点击完善资料，进行资料的填写，谢谢");
	</script>
</c:if>
<section class="container-fluid">
  <header>
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <div class="navbar-header">
			<a href="<%=path %>/index.jsp" title="桃源盛景"
				target="_self"><img src="<%=path%>/homeimage/logo.png"></a><span class="glyphicon glyphicon-map-marker" data-toggle="modal" data-target="#myModal1"><i></i>北京</span>
		</div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
			<li><a href="">首页 </a></li>
			<li><a href="">二手房</a></li>
			<li><a class="" href="http://bj.fang.lianjia.com/">新房</a></li>
			<li><a class="" href="https://bj.lianjia.com/zufang/">租房</a></li>
			<li><a class="" href="https://us.lianjia.com/">海外</a></li>
			<li><a class="" href="https://bj.lianjia.com/xiaoqu/">小区</a></li>
			<li><a class="" href="https://bj.lianjia.com/jingjiren/">经纪人</a></li>
	    	<li><a href="https://bj.lianjia.com/tool.html?sub=0"><span class="glyphicon glyphicon-wrench"></span>工具</a></li>
            <li class="dropdown"> 
            <c:if test="<%=tagency.getNameString()==null %>">
            	<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">暂缺 <span class="caret"></span></a>
            </c:if>
            <c:if test="<%=tagency.getNameString()!=null %>">
            	<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%=tagency.getLeaderString() %> <span class="caret"></span></a>
            </c:if>
              <ul class="dropdown-menu dropdown-menu-left">
                <li><a title="查看或修改个人信息" data-toggle="modal" data-target="#seeUserInfo">个人信息</a></li>
                <li><a title="查看您的登录记录" data-toggle="modal" data-target="#seeUserLoginlog">登录记录</a></li>
              </ul>
            </li>
            <li><a href="login.html" onClick="if(!confirm('是否确认退出？'))return false;"><span class="glyphicon glyphicon-off"></span>退出登录</a></li>
            <li><a data-toggle="modal" data-target="#WeChat">帮助</a></li>
            <c:if test="<%=tagency.getCheckedStatusInt()==0 %>">
            	<li><a href="javascript:void(0);">完善资料</a></li>
            </c:if>
          </ul>
<!--           <form action="" method="post" class="navbar-form navbar-right" role="search"> -->
<!--             <div class="input-group"> -->
<!--               <input type="text" class="form-control" autocomplete="off" placeholder="键入关键字搜索" maxlength="15"> -->
<!--               <span class="input-group-btn"> -->
<!--               <button class="btn btn-default" type="submit">搜索</button> -->
<!--               </span> </div> -->
<!--           </form> -->
        </div>
      </div>
    </nav>
  </header>
    <aside class="col-sm-3 col-md-2 col-lg-2 sidebar">
      <ul class="nav nav-sidebar">
        <li class="active"><a href="index.html" target="right" data-placement="bottom" data-toggle="tooltip"  title="经销商的信息新增，修改，查询信息">基本信息管理</a></li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a href="javascript:void(0);" target="right" data-placement="bottom" data-toggle="tooltip"  title="修改法人的登录密码">修改登录密码</a></li>
        <li><a href="javascript:void(0);" target="right" data-placement="bottom" data-toggle="tooltip"  title="楼盘的新增，修改，激活，冻结，分页查询，单个查询，图片浏览，图片上传">楼盘管理</a></li>
        <li><a href="javascript:void(0);" target="right" data-placement="bottom" data-toggle="tooltip"  title="户型的新增，修改，激活，冻结，分页查询，单个查询，图片浏览，图片上传">户型管理</a></li>
        <li><a href="javascript:void(0);" target="right" data-placement="bottom" data-toggle="tooltip"  title="楼栋的新增，修改，激活，冻结，分页查询，单个查询，图片浏览，图片上传">楼栋管理</a></li>
        <li><a href="javascript:void(0);" target="right" data-placement="bottom" data-toggle="tooltip"  title="员工的新增,修改，激活，禁用，分页查询，单个查询">员工管理</a></li>
      </ul>
      <ul class="nav nav-sidebar">
        <li class="active"><a href="index.html" target="right">销售管理</a></li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a href="javascript:void(0);" target="right" data-placement="bottom" data-toggle="tooltip"  title="员工工资管理">员工工资管理</a></li>
        <li><a class="dropdown-toggle" target="right" id="otherMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-placement="bottom" data-toggle="tooltip"  title="报表管理">报表管理	 </a>
          <ul class="dropdown-menu" aria-labelledby="otherMenu">
            <li><a href="javascript:void(0);" target="right">房产营销报表</a></li>
            <li role="separator"class="divider"></li>
            <li><a href="javascript:void(0);" target="right">员工工资报表</a></li>
            <li role="separator"class="divider"></li>
            <li><a href="javascript:void(0);" target="right">楼盘访问量</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a class="dropdown-toggle" target="right" id="userMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-placement="bottom" data-toggle="tooltip"  title="用户管理">用户管理</a>
          <ul class="dropdown-menu" aria-labelledby="userMenu">
            <li><a data-toggle="modal" target="right" data-target="#areDeveloping" data-placement="bottom" data-toggle="tooltip"  title="客户详情">客户详情</a></li>
            <li><a href="javascript:void(0);" target="right" data-placement="bottom" data-toggle="tooltip"  title="购房合同">购房合同</a></li>
          </ul>
        </li>
        <li><a class="dropdown-toggle" target="right" id="userMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-placement="bottom" data-toggle="tooltip"  title="活动管理">活动管理</a>
          <ul class="dropdown-menu" aria-labelledby="userMenu">
            <li><a data-toggle="modal" target="right" data-target="#areDeveloping" data-placement="bottom" data-toggle="tooltip"  title="活动计划">活动计划</a></li>
            <li><a href="javascript:void(0);" target="right" data-placement="bottom" data-toggle="tooltip"  title="活动预算">活动预算</a></li>
          </ul>
        </li>
        <li><a class="dropdown-toggle" target="right" id="settingMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-placement="bottom" data-toggle="tooltip"  title="客户留言评价">客户留言评价</a>
          <ul class="dropdown-menu" aria-labelledby="settingMenu">
            <li><a href="javascript:void(0);" target="right" data-placement="bottom" data-toggle="tooltip"  title="新增评价，删除评价">评价管理</a></li>
            <li role="separator"class="divider"></li>
            <li><a data-toggle="tooltip" target="right" data-placement="bottom" title="新增留言，删除留言，回复留言">留言管理</a></li>
            <li role="separator"class="divider"></li>
            <li><a data-toggle="modal" target="right" data-target="#areDeveloping">安全配置</a></li>
            <li role="separator" class="divider"></li>
            <li class="disabled"><a>扩展菜单</a></li>
          </ul>
        </li>
      </ul>
    </aside>
    <div>
    	<iframe src="<%=path %>/success.jsp" name="right" width="100%" height="600px"></iframe>
    </div>
</section>
<script src="<%=path %>/js/bootstrap.min1.js"></script> 
<script src="<%=path %>/js/admin-scripts.js"></script>
</body>
</html>
