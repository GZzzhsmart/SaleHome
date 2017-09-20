<%@page import="com.ht.pojo.TUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	TUser user = (TUser) session.getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客户问卷详情</title>
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="applicable-device" content="pc,mobile" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="X-UA-Compatible" content="IE=10" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="baidu-site-verification" content="ujOHpZF8J7" />
<link rel="stylesheet" href="https://www.sojump.com/css/jqmobo.css?v=16" />
<script src="https://staticfile.qnssl.com/jquery/1.10.1/jquery.min.js"></script>
<script src="https://www.sojump.com/js/hintinfo.js?v=2"
	type="text/javascript"></script>
<script src="https://www.sojump.com/js/jqmobo2.js?v=303"
	type="text/javascript"></script>
	<script type="text/javascript" src="<%=path %>/hui-jxs/lib/jquery/1.9.1/jquery.min.js"></script>
	
<style>
body {
	behavior: url(css/hover.htc);
}
</style>
</head>
<body>
	<div id="toptitle">
		<h1 class="htitle">房地产客户调查问卷</h1>
	</div>
	<s:form theme="simple">
		<div id="divContent">
		<div id="divQuestion">
			<fieldset class='fieldset' style='' id='fieldset1'>
				<div class='cutfield' id='divCut1' >
					<div style='margin: 7px 12px;'>
						<b><span style="font-size: 16px; color: #8d3901;">客户基本描述</span></b>
					</div>
				</div>
				<div class='field ui-field-contain' id='div1' >
					<div class='field-label'>
						1. 被访者<span class='req'>*</span>
						<div style="height: 20px"></div>
						姓名：<s:textfield
							style='max-width: 101px; line-height: 24px; padding: 2px 4px;'
							 id='q1_1' name='page.q1_1' class='ui-input-text' />
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp;年龄：<s:textfield
							style='max-width: 35px; line-height: 24px; padding: 2px 4px;'
							id='q1_2' name='page.q1_2' class='ui-input-text' />岁
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;电话：<s:textfield
							style='max-width: 134px; line-height: 24px; padding: 2px 4px;'
							id='q1_3' name='page.q1_3' class='ui-input-text' />
					</div>
					<div class='errorMessage' id="a1"></div>
				</div>
				<div class='field ui-field-contain' id='div2' >
					<div class='field-label'>
						2. 年龄<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type="radio" checked="checked" value='1'
								 name='page.q2' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q2_1'></a></span>
							<div class='label'>25-35岁</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								name='page.q2' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q2_2' ></a></span>
							<div class='label' >36-45岁</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q2' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q2_3' ></a></span>
							<div class='label'>46-55岁</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								 name='page.q2' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q2_4'></a></span>
							<div class='label'>55岁以上</div>
						</div>
					</div>
					<div class='errorMessage' id="a2"></div>
				</div>
				<div class='field ui-field-contain' id='div3'>
					<div class='field-label'>
						3. 职业<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								 name='page.q3' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q3_1'></a></span>
							<div class='label' for='q3_1'>国家机关（公务员）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								name='page.q3' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q3_2' ></a></span>
							<div class='label' for='q3_2'>企业</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								 name='page.q3' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q3_3'></a></span>
							<div class='label' for='q3_3'>个体经营</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q3' rel='tqq3_4' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q3_4' ></a></span>
							<div class='label' for='q3_4' style='border-bottom: none;'>其他</div>
							<div class='ui-text'>
								<input type='text' style="display: hidden" rel='q3_4'
									id='tqq3_4' class='OtherRadioText' />
							</div>
							<br />
						</div>
						<div class='errorMessage' id="a3"></div>
					</div>
				</div>
				<div class='field ui-field-contain' id='div4' req='1' topic='4'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						4. 职位<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								 name='page.q4' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q4_1'></a></span>
							<div class='label' for='q4_1'>老板/股东</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								name='page.q4' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q4_2' ></a></span>
							<div class='label' for='q4_2'>高层管理人员</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								 name='page.q4' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q4_3'></a></span>
							<div class='label' for='q4_3'>中层管理人员</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q4' style='display: none;' id='q4_4'  /><a
								class='jqradio' href='javascript:;'></a></span>
							<div class='label' for='q4_4'>普通员工</div>
						</div>
					</div>
					<div class='errorMessage' id="a4"></div>
				</div>
				<div class='field ui-field-contain' id='div5' req='1' topic='5'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						5. 家庭收入
						<div style="height: 20px"></div>
						包括全家人工资、奖金、分红等所有收入在内，请问您家平均每年的总收入（美元）是多少？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								name='page.q5' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q5_1' ></a></span>
							<div class='label' for='q5_1'>10万美元以下</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								 name='page.q5' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q5_2'></a></span>
							<div class='label' for='q5_2'>10万美元-20万美元</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q5' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q5_3' ></a></span>
							<div class='label' for='q5_3'>20万美元-30万美元</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q5' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q5_4' ></a></span>
							<div class='label' for='q5_4'>30万美元-40万美元</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='5'
								 name='page.q5' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q5_5'></a></span>
							<div class='label' for='q5_5'>40万美元-50万美元</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='6'
								 name='page.q5' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q5_6'></a></span>
							<div class='label' for='q5_6'>50万美元-60万美元</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='7'
								 name='page.q5' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q5_7'></a></span>
							<div class='label' for='q5_7'>60万美元-70万美元</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='8'
								name='page.q5' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q5_8' ></a></span>
							<div class='label' for='q5_8'>70万美元以上</div>
						</div>
					</div>
					<div class='errorMessage' id="a5"></div>
				</div>
				<div class='field ui-field-contain' id='div6' req='1' topic='6'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						6. 学历<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								 name='page.q6' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q6_1'></a></span>
							<div class='label' for='q6_1'>初中及以下</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								 name='page.q6' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q6_2'></a></span>
							<div class='label' for='q6_2'>高中/中技/中专</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q6' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q6_3' ></a></span>
							<div class='label' for='q6_3'>大学本科</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q6' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q6_4' ></a></span>
							<div class='label' for='q6_4'>硕士及以上</div>
						</div>
					</div>
					<div class='errorMessage' id="a6"></div>
				</div>
				<div class='field ui-field-contain' id='div7' req='1' topic='7'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						7. 请问您家的家庭结构属于？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								name='page.q7' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q7_1' ></a></span>
							<div class='label' for='q7_1'>单身（1人）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								 name='page.q7' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q7_2'></a></span>
							<div class='label' for='q7_2'>夫妇二人（2人）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q7' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q7_3' ></a></span>
							<div class='label' for='q7_3'>夫/妇与学龄前子女（3-5人）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								 name='page.q7' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q7_4'></a></span>
							<div class='label' for='q7_4'>夫/妇与上小/中/大学子女（4-6人）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='5'
								name='page.q7' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q7_5' ></a></span>
							<div class='label' for='q7_5'>夫/妇与已工作未婚子女（5-7人）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='6'
								name='page.q7' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q7_6' ></a></span>
							<div class='label' for='q7_6'>夫/妇与已婚子女、夫妻与父/母同住（5-7人）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='7'
								 name='page.q7' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q7_7'></a></span>
							<div class='label' for='q7_7'>祖父孙三代（夫/妻与父/母、子女同住）（6-8人)</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='8'
								name='page.q7' rel='tqq7_8' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q7_8' ></a></span>
							<div class='label' for='q7_8' style='border-bottom: none;'>其他</div>
							<div class='ui-text'>
								<input type='text' rel='q7_8' id='tqq7_8' class='OtherRadioText' />
							</div>
							<br />
						</div>
					</div>
					<div class='errorMessage' id="a7"></div>
				</div>
				<div class='field ui-field-contain' id='div8' req='1' topic='8'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						8. 请问您购房最高能够支付的总房款是多少呢？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								 name='page.q8' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q8_1'></a></span>
							<div class='label' for='q8_1'>20万美元以下</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								 name='page.q8' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q8_2'></a></span>
							<div class='label' for='q8_2'>20万美元-30万美元</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q8' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q8_3' ></a></span>
							<div class='label' for='q8_3'>30万美元-40万美元</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q8' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q8_4' ></a></span>
							<div class='label' for='q8_4'>40万美元-50万美元</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='5'
								name='page.q8' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q8_5' ></a></span>
							<div class='label' for='q8_5'>50万美元-60万美元</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='6'
								name='page.q8' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q8_6' ></a></span>
							<div class='label' for='q8_6'>60万美元以上</div>
						</div>
					</div>
					<div class='errorMessage' id="a8"></div>
				</div>
				<div class='field ui-field-contain' id='div9' req='1' topic='9'
					data-role='fieldcontain' type='4'>
					<div class='field-label'>
						9. 考虑偏好及价格承受能力，请问您最可能购买哪种类型的住宅？<span class='req'>*</span><span
							class='qtypetip'>&nbsp;[多选题]</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='1' name='page.q9' style='display: none;' /><a
								class='jqcheck' href='javascript:;'  id='q9_1' ></a></span>
							<div class='label' for='q9_1'>独栋别墅（2-3层）</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='2' name='page.q9' style='display: none;' /><a
								class='jqcheck' href='javascript:;'  id='q9_2' ></a></span>
							<div class='label' for='q9_2'>联排别墅（2-3层）</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='3' name='page.q9' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q9_3' ></a></span>
							<div class='label' for='q9_3'>花园洋房（4-6层）</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='4' name='page.q9' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q9_4' ></a></span>
							<div class='label' for='q9_4'>小高层公寓（7-9层）</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='5' name='page.q9' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q9_5' ></a></span>
							<div class='label' for='q9_5'>中高层公寓（10-18层）</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='6' name='page.q9' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q9_6' ></a></span>
							<div class='label' for='q9_6'>高层公寓（18层以上）</div>
						</div>
					</div>
					<div class='errorMessage' id="a9"></div>
				</div>
				<div class='field ui-field-contain' id='div10' req='1' topic='10'
					data-role='fieldcontain' type='4'>
					<div class='field-label'>
						10. 买房投资，您主要是出于什么考虑呢？<span class='req'>*</span><span
							class='qtypetip'>&nbsp;[多选题]</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='1' name='page.q10' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q10_1' ></a></span>
							<div class='label' for='q10_1'>刚需自住</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='2' name='page.q10' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q10_2' ></a></span>
							<div class='label' for='q10_2'>改善居住品质</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='3' name='page.q10' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q10_3' ></a></span>
							<div class='label' for='q10_3'>出租</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='4' name='page.q10' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q10_4' ></a></span>
							<div class='label' for='q10_4'>升值后卖掉</div>
						</div>
					</div>
					<div class='errorMessage' id="a10"></div>
				</div>
				<div class='field ui-field-contain' id='div11' req='1' topic='11'
					data-role='fieldcontain' type='4'>
					<div class='field-label'>
						11. 买房自住，您主要是出于什么考虑呢？<span class='req'>*</span><span
							class='qtypetip'>&nbsp;[多选题]</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='1'  name='page.q11' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q11_1'></a></span>
							<div class='label' for='q11_1'>扩大居住面积</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='2'  name='page.q11' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q11_2'></a></span>
							<div class='label' for='q11_2'>给子女准备</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='3'  name='page.q11' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q11_3'></a></span>
							<div class='label' for='q11_3'>孩子上学方便</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='4'  name='page.q11' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q11_4'></a></span>
							<div class='label' for='q11_4'>上班方便</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='5'  name='page.q11' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q11_5'></a></span>
							<div class='label' for='q11_5'>有一个更好的社区自然环境</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='6'  name='page.q11' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q11_6'></a></span>
							<div class='label' for='q11_6'>有一个更好的社区生活配套</div>
						</div>
					</div>
					<div class='errorMessage' id="a11"></div>
				</div>
				<div class='field ui-field-contain' id='div12' req='1' topic='12'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						12. 您在该城市的状态属于以下哪种情况？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								 name='page.q12' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q12_1'></a></span>
							<div class='label' for='q12_1'>长期居住、生活、工作</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								 name='page.q12' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q12_2'></a></span>
							<div class='label' for='q12_2'>单位派驻</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								 name='page.q12' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q12_3'></a></span>
							<div class='label' for='q12_3'>探亲访友</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								 name='page.q12' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q12_4'></a></span>
							<div class='label' for='q12_4'>休闲度假</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='5'
								name='page.q12' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q12_5' ></a></span>
							<div class='label' for='q12_5'>生意往来、因公出差</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='6'
								 name='page.q12' rel='tqq12_6' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q12_6'></a></span>
							<div class='label' for='q12_6' style='border-bottom: none;'>其他</div>
							<div class='ui-text'>
								<input type='text' rel='q12_6' id='tqq12_6'
									class='OtherRadioText' />
							</div>
							<br />
						</div>
					</div>
					<div class='errorMessage' id="a12"></div>
				</div>
				<div class='cutfield' id='divCut2' qtopic='13' topic='c2'>
					<div style='margin: 7px 12px;'>
						<b><span style="font-size: 16px; color: #8d3901;">客户土地需求分析</span></b>
					</div>
				</div>
				<div class='field ui-field-contain' id='div13' req='1' topic='13'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						13. 请问您是否会选择在该城市购房？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								 name='page.q13' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q13_1'></a></span>
							<div class='label' for='q13_1'>是</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								 name='page.q13' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q13_2'></a></span>
							<div class='label' for='q13_2'>否</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								 name='page.q13' rel='tqq13_3' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q13_3'></a></span>
							<div class='label' for='q13_3' style='border-bottom: none;'>其他</div>
							<div class='ui-text'>
								<input type='text' rel='q13_3' id='tqq13_3'
									class='OtherRadioText' />
							</div>
							<br />
						</div>
					</div>
					<div class='errorMessage' id="a13"></div>
				</div>
				<div class='field ui-field-contain' id='div14' req='1' topic='14'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						14. 请问您会选择哪种装修标准的商品房<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								name='page.q14' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q14_1' ></a></span>
							<div class='label' for='q14_1'>毛坯房</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								 name='page.q14' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q14_2'></a></span>
							<div class='label' for='q14_2'>部分精装（厨卫）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q14' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q14_3' ></a></span>
							<div class='label' for='q14_3'>全部精装（不含家具家电）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q14' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q14_4' ></a></span>
							<div class='label' for='q14_4'>全部精装（含家具家电）</div>
						</div>
					</div>
					<div class='errorMessage' id="a14"></div>
				</div>
				<div class='field ui-field-contain' id='div15' req='1' topic='15'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						15. 如果您购买该高档住宅项目，能承受的含精装的价格是多少？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								name='page.q15' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q15_1' ></a></span>
							<div class='label' for='q15_1'>200美元以上/㎡</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								name='page.q15' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q15_2' ></a></span>
							<div class='label' for='q15_2'>200-300美元/㎡</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q15' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q15_3' ></a></span>
							<div class='label' for='q15_3'>300-400美元/㎡</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q15' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q15_4' ></a></span>
							<div class='label' for='q15_4'>400美元以上/㎡</div>
						</div>
					</div>
					<div class='errorMessage' id="a15"></div>
				</div>
				<div class='field ui-field-contain' id='div16' req='1' topic='16'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						16. 请问您更愿意选择在城市哪些区域购房？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								name='page.q16' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q16_1' ></a></span>
							<div class='label' for='q16_1'>配套完善的城市中心区</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								name='page.q16' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q16_2' ></a></span>
							<div class='label' for='q16_2'>配套一般的城市近郊区</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q16' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q16_3' ></a></span>
							<div class='label' for='q16_3'>环境优美的城市远郊区</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q16' rel='tqq16_4' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q16_4' ></a></span>
							<div class='label' for='q16_4' style='border-bottom: none;'>其他区域</div>
							<div class='ui-text'>
								<input type='text' rel='q16_4' id='tqq16_4'
									class='OtherRadioText' />
							</div>
							<br />
						</div>
					</div>
					<div class='errorMessage' id="a16"></div>
				</div>
				<div class='field ui-field-contain' id='div17' req='1' topic='17'
					minvalue='3' maxvalue='3' data-role='fieldcontain' type='11'>
					<div class='field-label'>
						17. 从购房区域选择来考虑，您认为以下因素哪个最重要？请排序最重要：------------ ； 其次：---------
						_；再次：--------- <span class='req'>*</span><span class='qtypetip'>&nbsp;[请选择<b>3</b>项并排序]
						</span>
					</div>
					<ul class='ui-controlgroup ui-listview'>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='1' name='page.q17' /><span
							class='sortnum' id='q17_1' ></span><span>1.区域知名度</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='2'  name='page.q17' /><span
							class='sortnum' id='q17_2'></span><span>2.区域生活熟悉程度</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='3'  name='page.q17' /><span
							class='sortnum' id='q17_3'></span><span>3.区域升值发展潜力</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='4' name='page.q17' /><span
							class='sortnum'  id='q17_4'></span><span>4.商业生活配套</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='5'  name='page.q17' /><span
							class='sortnum' id='q17_5'></span><span>5.交通便利</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='6'  name='page.q17' /><span
							class='sortnum' id='q17_6'></span><span>6.人文环境</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='7'  name='page.q17' /><span
							class='sortnum' id='q17_7'></span><span>7.教育环境</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='8'  name='page.q17' /><span
							class='sortnum' id='q17_8'></span><span>8.景观绿化环境</span></li>
					</ul>
					<div class='errorMessage' id="a17"></div>
				</div>
				<div class='field ui-field-contain' id='div18' req='1' topic='18'
					minvalue='3' maxvalue='8' data-role='fieldcontain' type='4'>
					<div class='field-label'>
						18. 您希望社区会所应该具备哪些功能？<span class='req'>*</span><span
							class='qtypetip'>&nbsp;[请选择<b>3</b>-<b>8</b>项]
						</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='1'  name='page.q18' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q18_1'></a></span>
							<div class='label' for='q18_1'>1.豪华酒店</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='2'  name='page.q18' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q18_2'></a></span>
							<div class='label' for='q18_2'>2.教育设施（学校、幼儿园等）</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='3'  name='page.q18' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q18_3'></a></span>
							<div class='label' for='q18_3'>3.休闲（美容美体、SPA、雪茄吧等）</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='4'  name='page.q18' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q18_4'></a></span>
							<div class='label' for='q18_4'>4.娱乐（KTV、洗浴等）</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='5' name='page.q18' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q18_5' ></a></span>
							<div class='label' for='q18_5'>5.餐厅</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='6' name='page.q18' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q18_6' ></a></span>
							<div class='label' for='q18_6'>6.运动健身（健身房、泳池等）</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='7' name='page.q18' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q18_7' ></a></span>
							<div class='label' for='q18_7'>7.儿童活动中心</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='8' name='page.q18' rel='tqq18_8'
								style='display: none;' /><a class='jqcheck' href='javascript:;'  id='q18_8' ></a></span>
							<div class='label' for='q18_8' style='border-bottom: none;'>8.其他</div>
							<div class='ui-text'>
								<input type='text' rel='q18_8' id='tqq18_8' class='OtherText' />
							</div>
							<br />
						</div>
					</div>
					<div class='errorMessage' id="a18"></div>
				</div>
				<div class='field ui-field-contain' id='div19' req='1' topic='19'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						19. 请问您对小区周边交通的要求？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								 name='page.q19' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q19_1'></a></span>
							<div class='label' for='q19_1'>社区班车接送</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								 name='page.q19' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q19_2'></a></span>
							<div class='label' for='q19_2'>步行5-10分钟可达公共交通车站</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q19' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q19_3' ></a></span>
							<div class='label' for='q19_3'>靠近高架快速干道</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q19' rel='tqq19_4' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q19_4' ></a></span>
							<div class='label' for='q19_4' style='border-bottom: none;'>其他</div>
							<div class='ui-text'>
								<input type='text' rel='q19_4' id='tqq19_4'
									class='OtherRadioText' />
							</div>
							<br />
						</div>
					</div>
					<div class='errorMessage' id="a19"></div>
				</div>
				<div class='field ui-field-contain' id='div20' req='1' topic='20'
					minvalue='3' maxvalue='8' data-role='fieldcontain' type='4'>
					<div class='field-label'>
						20. 请问您对社区周边的居住及商业配套的要求？<span class='req'>*</span><span
							class='qtypetip'>&nbsp;[请选择<b>3</b>-<b>8</b>项]
						</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='1' name='page.q20' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q20_1' ></a></span>
							<div class='label' for='q20_1'>菜场及超市</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='2' name='page.q20' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q20_2' ></a></span>
							<div class='label' for='q20_2'>银行网点</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='3' name='page.q20' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q20_3' ></a></span>
							<div class='label' for='q20_3'>餐厅及咖啡厅</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='4' name='page.q20' style='display: none;' /><a
								class='jqcheck' href='javascript:;'  id='q20_4' ></a></span>
							<div class='label' for='q20_4'>大型购物商场</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='5'  name='page.q20' style='display: none;' /><a
								class='jqcheck' href='javascript:;'  id='q20_5'></a></span>
							<div class='label' for='q20_5'>医院</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='6' name='page.q20' style='display: none;' /><a
								class='jqcheck' href='javascript:;'  id='q20_6'></a></span>
							<div class='label' for='q20_6'>学校</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='7' name='page.q20' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q20_7'></a></span>
							<div class='label' for='q20_7'>酒店</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='8' name='page.q20' rel='tqq20_8'
								style='display: none;' /><a class='jqcheck' href='javascript:;' id='q20_8'></a></span>
							<div class='label' for='q20_8' style='border-bottom: none;'>其他</div>
							<div class='ui-text'>
								<input type='text' rel='q20_8' id='tqq20_8' class='OtherText'/>
							</div>
							<br />
						</div>
					</div>
					<div class='errorMessage' id="20"></div>
				</div>
				<div class='field ui-field-contain' id='div21' req='1' topic='21'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						21. 请问您希望居住的社区规模有多大：<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								 name='page.q21' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q21_1'></a></span>
							<div class='label' for='q21_1'>50户以下</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								name='page.q21' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q21_2' ></a></span>
							<div class='label' for='q21_2'>50-100户</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q21' style='display: none;' /><a
								class='jqradio' href='javascript:;'id='q21_3' ></a></span>
							<div class='label' for='q21_3'>100-300户</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								 name='page.q21' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q21_4'></a></span>
							<div class='label' for='q21_4'>300-500户</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='5'
								name='page.q21' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q21_5' ></a></span>
							<div class='label' for='q21_5'>500-800户</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='6'
								name='page.q21' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q21_6' ></a></span>
							<div class='label' for='q21_6'>800户以上</div>
						</div>
					</div>
					<div class='errorMessage' id="a21"></div>
				</div>
				<div class='cutfield' id='divCut3' qtopic='22' topic='c3'>
					<div style='margin: 7px 12px;'>
						<span style="font-size: 16px; color: #8d3901;"><strong>客户产品需求分析</strong></span>
					</div>
				</div>
				<div class='field ui-field-contain' id='div22' req='1' topic='22'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						22. 考虑各种因素，您会选择哪种建筑类型的住宅？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								name='page.q22' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q22_1' ></a></span>
							<div class='label' for='q22_1'>别墅（1-3层）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								name='page.q22' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q22_2' ></a></span>
							<div class='label' for='q22_2'>多层（4-6层）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q22' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q22_3' ></a></span>
							<div class='label' for='q22_3'>小高层（7-9层）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q22' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q22_4' ></a></span>
							<div class='label' for='q22_4'>中高层（10-12层）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='5'
								name='page.q22' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q22_5' ></a></span>
							<div class='label' for='q22_5'>高层（13层及以上）</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='6'
								name='page.q22' rel='tqq22_6' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q22_6' ></a></span>
							<div class='label' for='q22_6' style='border-bottom: none;'>其他</div>
							<div class='ui-text'>
								<input type='text' rel='q22_6' id='tqq22_6'
									class='OtherRadioText'/>
							</div>
							<br />
						</div>
					</div>
					<div class='errorMessage' id="a22"></div>
				</div>
				<div class='field ui-field-contain' id='div23' req='1' topic='23'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						23. 请问您准备购买的住宅户型是？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								name='page.q23' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q23_1' ></a></span>
							<div class='label' for='q23_1'>两房两厅</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								name='page.q23' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q23_2' ></a></span>
							<div class='label' for='q23_2'>三房两厅</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q23' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q23_3' ></a></span>
							<div class='label' for='q23_3'>三房两厅附保姆间</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q23' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q23_4' ></a></span>
							<div class='label' for='q23_4'>四房两厅</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='5'
								name='page.q23' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q23_5' ></a></span>
							<div class='label' for='q23_5'>四房两厅附保姆间</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='6'
								name='page.q23' rel='tqq23_6' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q23_6' ></a></span>
							<div class='label' for='q23_6' style='border-bottom: none;'>其他</div>
							<div class='ui-text'>
								<input type='text' rel='q23_6' id='tqq23_6'
									class='OtherRadioText'/>
							</div>
							<br />
						</div>
					</div>
					<div class='errorMessage' id="a23"></div>
				</div>
				<div class='field ui-field-contain' id='div24' req='1' topic='24'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						24. 请问您准备购买的住宅总建筑面积是多少？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								 name='page.q24' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q24_1'></a></span>
							<div class='label' for='q24_1'>90平米及以下</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								name='page.q24' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q24_2' ></a></span>
							<div class='label' for='q24_2'>90-150平米</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								name='page.q24' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q24_3' ></a></span>
							<div class='label' for='q24_3'>150-200平米</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								name='page.q24' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q24_4' ></a></span>
							<div class='label' for='q24_4'>200-300平米</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='5'
								name='page.q24' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q24_5' ></a></span>
							<div class='label' for='q24_5'>300-500平米</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='6'
								name='page.q24' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q24_6' ></a></span>
							<div class='label' for='q24_6'>500平米及以上</div>
						</div>
					</div>
					<div class='errorMessage' id="a24"></div>
				</div>
				<div class='field ui-field-contain' id='div25' req='1' topic='25'
					minvalue='3' maxvalue='3' data-role='fieldcontain' type='11'>
					<div class='field-label'>
						25. 您认为下列功能空间哪个最必要？请排序第一 第二： 第三： <span class='req'>*</span><span
							class='qtypetip'>&nbsp;[请选择<b>3</b>项并排序]
						</span>
					</div>
					<ul class='ui-controlgroup ui-listview'>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='1' name='page.q25' /><span
							class='sortnum'  id='q25_1'></span><span>1.视听室</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='2' name='page.q25' /><span
							class='sortnum'  id='q25_2'></span><span>2.儿童活动室</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='3' name='page.q25' /><span
							class='sortnum'  id='q25_3'></span><span>3.书房或工作间</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='4' name='page.q25' /><span
							class='sortnum'  id='q25_4'></span><span>4.健身房</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='5' name='page.q25' /><span
							class='sortnum'  id='q25_5'></span><span>5.早餐厅</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='6' name='page.q25' /><span
							class='sortnum'  id='q25_6'></span><span>6.阳光房（日光浴/园艺）</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='7' name='page.q25' /><span
							class='sortnum'  id='q25_7'></span><span>7.洗衣房</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='8' name='page.q25' /><span
							class='sortnum'  id='q25_8'></span><span>8.家庭室（较为私密，不用于会客）</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='9' name='page.q25' /><span
							class='sortnum'  id='q25_9'></span><span>9.保姆间</span></li>
						<li class='ui-li-static' style='cursor: pointer;'><input
							type='hidden' class='custom' value='10' id='q25_10'
							name='page.q25' /><span class='sortnum'></span><span>10.储藏室</span></li>
					</ul>
					<div class='errorMessage' id="a25"></div>
				</div>
				<div class='field ui-field-contain' id='div26' req='1' topic='26'
					minvalue='2' maxvalue='2' data-role='fieldcontain' type='4'>
					<div class='field-label'>
						26. 如果有两个露台，您喜欢露台与哪两个房间相连？<span class='req'>*</span><span
							class='qtypetip'>&nbsp;[请选择<b>2</b>项]
						</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='1' name='page.q26' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q26_1' ></a></span>
							<div class='label' for='q26_1'>客厅带露台</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='2' name='page.q26' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q26_2'></a></span>
							<div class='label' for='q26_2'>餐厅带露台</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='3' name='page.q26' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q26_3'></a></span>
							<div class='label' for='q26_3'>主卧带露台</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='4' name='page.q26' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q26_4'></a></span>
							<div class='label' for='q26_4'>书房带露台</div>
						</div>
					</div>
					<div class='errorMessage' id="a26"></div>
				</div>
				<div class='field ui-field-contain' id='div27' req='1' topic='27'
					minvalue='2' maxvalue='2' data-role='fieldcontain' type='4'>
					<div class='field-label'>
						27. 如果有两个房间朝向花园，请问您喜欢哪个两个房间朝向花园？<span class='req'>*</span><span
							class='qtypetip'>&nbsp;[请选择<b>2</b>项]
						</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='1' name='page.q27' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q27_1'></a></span>
							<div class='label' for='q27_1'>客厅</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='2' name='page.q27' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q27_2'></a></span>
							<div class='label' for='q27_2'>餐厅</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='3' name='page.q27' style='display: none;' /><a
								class='jqcheck' href='javascript:;' id='q27_3'></a></span>
							<div class='label' for='q27_3'>主卧</div>
						</div>
						<div class='ui-checkbox'>
							<span class='jqcheckwrapper'><input type='checkbox'
								value='4'  name='page.q27' rel='tqq27_4'
								style='display: none;' /><a class='jqcheck' href='javascript:;' id='q27_4'></a></span>
							<div class='label' for='q27_4' style='border-bottom: none;'>其他</div>
							<div class='ui-text'>
								<input type='text' rel='q27_4' id='tqq27_4' class='OtherText'/>
							</div>
							<br />
						</div>
					</div>
					<div class='errorMessage' id="a27"></div>
				</div>
				<div class='field ui-field-contain' id='div28' req='1' topic='28'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						28. 请您从以下图片中挑选出您喜欢的立面图片<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<div class='label' for='q28_1'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/daa18dc9-d4c5-4516-a9c1-e6dd73a5759b.jpg'
									alt='' rel='q28_1' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='1' name='page.q28'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q28_1'></a></span><span>英式风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q28_2'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/3457a5c3-896b-4d81-9d88-263c1885cf36.gif'
									alt='' rel='q28_2' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='2' name='page.q28'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q28_2'></a></span><span>法式风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q28_3'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/9bd06ec7-d3f0-466c-a99d-10658855c17f.jpg'
									alt='' rel='q28_3' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='3' name='page.q28'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q28_3'></a></span><span>地中海风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q28_4'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/d1204c28-3cfe-407b-862e-59d84b236232.jpg'
									alt='' rel='q28_4' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='4' name='page.q28'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q28_4'></a></span><span>传统风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q28_5'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/ee35eec6-9aba-4af1-80e5-3c18ea458b6b.jpg'
									alt='' rel='q28_5' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='5' name='page.q28'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q28_5'></a></span><span>现代风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='6'
								 name='page.q28' rel='tqq28_6' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q28_6'></a></span>
							<div class='label' for='q28_6' style='border-bottom: none;'>其他</div>
							<div class='ui-text'>
								<input type='text' rel='q28_6' id='tqq28_6'
									class='OtherRadioText' />
							</div>
							<br />
						</div>
					</div>
					<div class='errorMessage' id="a28"></div>
				</div>
				<div class='field ui-field-contain' id='div29' req='1' topic='29'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						29. 请问您喜欢以下哪种景观风格？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<div class='label' for='q29_1'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/94c8ebcf-b1c3-4078-b2e0-7126a88afe5e.jpg'
									alt='' rel='q29_1' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='1' name='page.q29'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q29_1'></a></span><span>英式乡村风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q29_2'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/ac12acdb-2fe5-48b1-a036-5e87b63d91cc.jpg'
									alt='' rel='q29_2' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='2' name='page.q29'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q29_2'></a></span><span>法式古典风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q29_3'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/097ce735-0102-4432-ba6e-e1808a69e39a.jpg'
									alt='' rel='q29_3' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='3' name='page.q29'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q29_3'></a></span><span>地中海风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q29_4'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/200937f5-edd5-44df-ae63-2c9c96b0771a.jpg'
									alt='' rel='q29_4' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='4' name='page.q29'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q29_4'></a></span><span>现代风格</span>
								</div>
							</div>
						</div>
					</div>
					<div class='errorMessage' id="a29"></div>
				</div>
				<div class='field ui-field-contain' id='div30' req='1' topic='30'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						30. 请问您喜欢以下哪种室内设计风格？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<div class='label' for='q30_1'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/3a71e6af-13e5-4225-b0c9-5a03281b433e.jpg'
									alt='' rel='q30_1' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='1' name='page.q30'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q30_1'></a></span><span>地中海风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q30_2'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/64e229e6-634f-4f2d-a793-8562fd63a815.jpg'
									alt='' rel='q30_2' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='2' name='page.q30'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q30_2'></a></span><span>巴洛克风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q30_3'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/cb6be24b-cad8-4ffd-9889-7a096cd36dbc.jpg'
									alt='' rel='q30_3' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='3' name='page.q30'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q30_3'></a></span><span>古罗马风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q30_4'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/07fecd8a-3469-47f2-85f5-f06bc87981a3.jpg'
									alt='' rel='q30_4' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='4' name='page.q30'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q30_4'></a></span><span>伊斯兰风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q30_5'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/14af6886-3d4f-4ec5-81d2-d9f551370d30.jpg'
									alt='' rel='q30_5' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='5' name='page.q30'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q30_5'></a></span><span>古典主义风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q30_6'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/1c6a8fd9-4e86-4e5a-8742-8f6e278e8979.jpg'
									alt='' rel='q30_6' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='6' name='page.q30'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q30_6'></a></span><span>乡土田园风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q30_7'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/e6849eea-ee85-42a4-bc7c-43c02b35b838.jpg'
									alt='' rel='q30_7' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='7' name='page.q30'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q30_7'></a></span><span>现代风格</span>
								</div>
							</div>
						</div>
						<div class='ui-radio'>
							<div class='label' for='q30_8'>
								<img
									src='http://sojumpimage.b0.upaiyun.com/Upload/UserUpload/2014-09-12/d0b083da-0415-4981-b993-b7412444bd8d.jpg'
									alt='' rel='q30_8' />
								<div style='margin: 10px 0;'>
									<span class='jqradiowrapper' style='margin: 0 5px 0 0;'><input
										type='radio' value='8' name='page.q30'
										style='display: none;' /><a class='jqradio'
										href='javascript:;' id='q30_8'></a></span><span>后现代构成风格</span>
								</div>
							</div>
						</div>
					</div>
					<div class='errorMessage' id="a30"></div>
				</div>
				<div class='field ui-field-contain' id='div31' req='1' topic='31'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						31. 请问您对物业管理公司有什么要求？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								 name='page.q31' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q31_1'></a></span>
							<div class='label' for='q31_1'>国际知名物业公司</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								name='page.q31' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q31_2' ></a></span>
							<div class='label' for='q31_2'>国内知名物业公司</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								 name='page.q31' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q31_3'></a></span>
							<div class='label' for='q31_3'>对物业公司品牌没有太多要求</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								 name='page.q31' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q31_4'></a></span>
							<div class='label' for='q31_4'>不需要物业公司</div>
						</div>
					</div>
					<div class='errorMessage' id="a31"></div>
				</div>
				<div class='field ui-field-contain' id='div32' req='1' topic='32'
					data-role='fieldcontain' type='3'>
					<div class='field-label'>
						32. 请问您能够接受的物业管理费是？<span class='req'>*</span>
					</div>
					<div class='ui-controlgroup'>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='1'
								 name='page.q32' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q32_1'></a></span>
							<div class='label' for='q32_1'>0.3美元以下/㎡/月</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='2'
								 name='page.q32' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q32_2'></a></span>
							<div class='label' for='q32_2'>0.3-0.4美元/㎡/月</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='3'
								 name='page.q32' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q32_3'></a></span>
							<div class='label' for='q32_3'>0.4-0.5美元/㎡/月</div>
						</div>
						<div class='ui-radio'>
							<span class='jqradiowrapper'><input type='radio' value='4'
								 name='page.q32' style='display: none;' /><a
								class='jqradio' href='javascript:;' id='q32_4'></a></span>
							<div class='label' for='q32_4'>0.5美元以上/㎡/月</div>
						</div>
					</div>
					<div class='errorMessage' id="a32"></div>
				</div>
			</fieldset>
		</div>
	</div>
	</s:form>
	<script>
	$(function() {
		$("#q2_${page.q2}").attr("class","jqradio jqchecked");
		$("#q3_${page.q3}").attr("class","jqradio jqchecked");
		$("#q4_${page.q4}").attr("class","jqradio jqchecked");
		$("#q5_${page.q5}").attr("class","jqradio jqchecked");
		$("#q6_${page.q6}").attr("class","jqradio jqchecked");
		$("#q7_${page.q7}").attr("class","jqradio jqchecked");
		$("#q8_${page.q8}").attr("class","jqradio jqchecked");
		$("#q12_${page.q12}").attr("class","jqradio jqchecked");
		$("#q13_${page.q13}").attr("class","jqradio jqchecked");
		$("#q14_${page.q14}").attr("class","jqradio jqchecked");
		$("#q15_${page.q15}").attr("class","jqradio jqchecked");
		$("#q16_${page.q16}").attr("class","jqradio jqchecked");
		$("#q19_${page.q19}").attr("class","jqradio jqchecked");
		$("#q21_${page.q21}").attr("class","jqradio jqchecked");
		$("#q22_${page.q22}").attr("class","jqradio jqchecked");
		$("#q23_${page.q23}").attr("class","jqradio jqchecked");
		$("#q24_${page.q24}").attr("class","jqradio jqchecked");
		$("#q28_${page.q28}").attr("class","jqradio jqchecked");
		$("#q29_${page.q29}").attr("class","jqradio jqchecked");
		$("#q30_${page.q30}").attr("class","jqradio jqchecked");
		$("#q31_${page.q31}").attr("class","jqradio jqchecked");
		$("#q32_${page.q32}").attr("class","jqradio jqchecked");
		var str1 = "${page.q9}";
		var strs= new Array();
		strs=str1.split(", ");
		for (var i=0;i<strs.length ;i++ ){ 
			$("#q9_"+strs[i]).attr("class","jqcheck jqchecked");
		} 
		
		var str2 = "${page.q10}";
		var strs= new Array();
		strs=str2.split(", ");
		for (var i=0;i<strs.length ;i++ ){ 
			$("#q10_"+strs[i]).attr("class","jqcheck jqchecked");
		} 
		
		var str3 = "${page.q11}";
		var strs= new Array();
		strs=str3.split(", ");
		for (var i=0;i<strs.length ;i++ ){ 
			$("#q11_"+strs[i]).attr("class","jqcheck jqchecked");
		} 
		
		var str4 = "${page.q17}";
		var strs= new Array();
		strs=str4.split(", ");
		for (var i=0;i<3 ;i++ ){ 
			$("#q17_"+strs[i]).attr("class","sortnum sortnum-sel");
			$("#q17_"+strs[i]).html(i+1);
		} 
		
		var str5 = "${page.q18}";
		var strs= new Array();
		strs=str5.split(", ");
		for (var i=0;i<strs.length ;i++ ){ 
			$("#q18_"+strs[i]).attr("class","jqcheck jqchecked");
		} 
		
		var str6 = "${page.q20}";
		var strs= new Array();
		strs=str6.split(", ");
		for (var i=0;i<strs.length ;i++ ){ 
			$("#q20_"+strs[i]).attr("class","jqcheck jqchecked");
		}
		
		var str7 = "${page.q25}";
		var strs= new Array();
		strs=str7.split(", ");
		for (var i=0;i<3 ;i++ ){ 
			$("#q25_"+strs[i]).attr("class","sortnum sortnum-sel");
			$("#q25_"+strs[i]).html(i+1);
		} 
		
		var str8 = "${page.q26}";
		var strs= new Array();
		strs=str8.split(", ");
		for (var i=0;i<strs.length ;i++ ){ 
			$("#q26_"+strs[i]).attr("class","jqcheck jqchecked");
		}
		
		var str9 = "${page.q27}";
		var strs= new Array();
		strs=str9.split(", ");
		for (var i=0;i<strs.length ;i++ ){ 
			$("#q27_"+strs[i]).attr("class","jqcheck jqchecked");
		}
	});
</script>
</body>
</html>