<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>HourseSaleReport</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/bootstrap.min.css">
</head>
<body>
	<form>
		<div class="form-group">
			<label for="name1">User Name</label>
			 <input type="text" class="form-control" id="name1" placeholder="Name"
				name="tCustomer.phoneString" value="${tCustomer.phoneString}">
		</div>
		<div class="form-group">
    <label for="exampleInputPassword1">Gender(性别)</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Gender"
    	value="${tCustomer.genderString }" >
  </div>
  
  <div class="form-group">
    <label for="birthday1">Birthday(生日)</label>
    <input type="text" id="birthday1" value="${tCustomer.birthday }">
  </div>
 	
  <div class="form-group">
    <label for="identityIdString1">Birthday(生日)</label>
    <input type="text" id="identityIdString1" value="${tCustomer.identityIdString }">
  </div>
  
   <div class="form-group">
    <label for="exampleInputEmail1">Email address(邮箱地址)</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email"
    	value="${tCustomer.emailString }">
  </div>
  
  <div class="form-group">
    <label for="phone1">phone(手机号码)</label>
    <input type="text" class="form-control" id="phone1" placeholder="phone"
    	value="${tCustomer.phoneString }">
  </div>
  
  <div class="form-group">
    <label for="address1">address(地址)</label>
    <input type="text" class="form-control" id="address1" placeholder="address"
    	value="${tCustomer.addressString }">
  </div>
 
  <div class="form-group">
    <label for="customer_type1">customer_type(顾客类型)</label>
    <input type="text" class="form-control" id="customer_type1" placeholder="customer_type"
    	value="${tCustomer.customerTypeString }">
  </div>
   <div class="form-group">
    <label for="together1">together(共同购房人信息)</label>
    <input type="text" class="form-control" id="together1" placeholder="together"
    	value="${tCustomer.togetherString }">
  </div>
  
  <div class="form-group">
   	<label for="contract1">contract(电子版购买合同路径)</label>
    <input type="text" class="form-control" id="contract1" placeholder="contract"
    	value="${tCustomer.contractString }">
  </div> 
   
   <div class="form-group">
  	<label for="archives1">archives(zip版购买合同路径)</label>
    <input type="text" class="form-control" id="archives1" placeholder="archives"
    	value="${tCustomer.archivesString }">
  </div> 
   
   <div class="form-group">
  	<label for="created_time1">created_time(购买时间)</label>
    <input type="text" class="form-control" id="created_time1" placeholder="created_time"
    	value="${tCustomer.createdTime}">
  </div> 
 	</form>
</body>
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
</html>