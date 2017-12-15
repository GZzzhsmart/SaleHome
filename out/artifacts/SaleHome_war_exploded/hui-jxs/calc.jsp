<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
		String path = request.getContextPath();
	%>
<!DOCTYPE html>
<!-- saved from url=(0056)https://house.focus.cn/fangdaijisuanqi/gongjijindaikuan/ -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=0.83, maximum-scale=1.0, user-scalable=0">
<meta name="format-detection" content="telphone=no, email=no">
<title>【公积金贷款计算器_住房公积金贷款额度计算器2017】-北京搜狐焦点网</title>
<meta name="keywords"
	content="公积金贷款计算器,公积金贷款额度计算器,住房公积金贷款计算器,公积金贷款计算器2017">
<meta name="description"
	content="公积金贷款计算器，北京搜狐焦点网公积金贷款利率计算器为购房者提供2017公积金贷款计算器，根据单价、面积、住房公积金按揭年数、公积金贷款银行利率等方式公积金贷款计算器计算出等额本息还款、等额本金还款等额度。">
<link
	href="<%=path %>/css/calculator-common.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=path %>/css/calculator-gjj-daikuan.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<script type="text/javascript">
		window.common_head_login_config = {
			appId : "1018",
			secretKey : "6f6eb69dc72dd30fbaad4fcc4d3c4638"
		};
	</script>
	<!-- head end -->
	<script type="text/javascript"
		src="<%=path %>/js/jquery-1.7.2.min1.js"></script>

	<script type="text/javascript"
		src="<%=path %>/js/pp18030.1305281700.min.js"></script>
	<script type="text/javascript"
		src="<%=path %>/js/newlogin.min.js"
		charset="utf-8"></script>


	<script type="text/javascript"
		src="<%=path %>/js/header.js"></script>
	<script type="text/javascript"
		src="<%=path %>/js/changyan.js"></script>

	<!--ad in header end-->
	<!--头部城市选择与搜索栏-->
	<!--header html begin-->
	<div class="cal-jsq gjj-con">
		<div class="cal-jsq-title">
			<h2>公积金贷款计算器</h2>
			<p>掌握贷款利率走势，轻松把握最佳买房时机</p>
		</div>
		<div class="cal-jsq-con">
			<div class="cal-con-left" id="calConLeft">
				<h3>
					<span class="h3-title icon1">填写信息</span><span class="h3-txt">（均为必填项）</span>
				</h3>
				<div class="cal-con-form">
					<div class="con-input radio-div">
						<label>计算方式：</label>
						<div class="con-input-radio" default-value="1" default-text="按面积算"
							id="jsType">
							<span class="radio-span check" data-value="1">按面积算</span> <span
								class="radio-span" data-value="2">按楼盘算</span> <span
								class="radio-span " data-value="3">按贷款额度算</span> <input
								type="hidden" id="jsfs" value="1">
						</div>
					</div>
					<input type="hidden" value="provide" id="lvType"> <input
						type="hidden" value="120" id="gjjEd">
					<div class="dk-page">
						<div class="con-input">
							<label>贷款总额：</label>
							<div class="con-input-right width2">
								<input type="text" value="" id="dkze" default-tips="贷款总额"><span>万元</span>
							</div>
						</div>
						<div class="con-input-info">
							（最多不超过120万，请 <a
								href="https://house.focus.cn/fangdaijisuanqi/gongjijindaikuanedupinggu/"
								target="_blank">算一下公积金贷款额度</a>）
						</div>
						<div class="con-input">
							<label>贷款年限：</label>
							<div class="jsq-selector nianxian" default-value="30"
								default-text="30年(360期)">
								<em>30年(360期)</em>
								<div class="hide-selector-box">
									<ul>
										<li data-value="1">1年(12期)</li>
										<li data-value="2">2年(24期)</li>
										<li data-value="3">3年(36期)</li>
										<li data-value="4">4年(48期)</li>
										<li data-value="5">5年(60期)</li>
										<li data-value="6">6年(72期)</li>
										<li data-value="7">7年(84期)</li>
										<li data-value="8">8年(96期)</li>
										<li data-value="9">9年(108期)</li>
										<li data-value="10">10年(120期)</li>
										<li data-value="11">11年(132期)</li>
										<li data-value="12">12年(144期)</li>
										<li data-value="13">13年(156期)</li>
										<li data-value="14">14年(168期)</li>
										<li data-value="15">15年(180期)</li>
										<li data-value="16">16年(192期)</li>
										<li data-value="17">17年(204期)</li>
										<li data-value="18">18年(216期)</li>
										<li data-value="19">19年(228期)</li>
										<li data-value="20">20年(240期)</li>
										<li data-value="21">21年(252期)</li>
										<li data-value="22">22年(264期)</li>
										<li data-value="23">23年(276期)</li>
										<li data-value="24">24年(288期)</li>
										<li data-value="25">25年(300期)</li>
										<li data-value="26">26年(312期)</li>
										<li data-value="27">27年(324期)</li>
										<li data-value="28">28年(336期)</li>
										<li data-value="29">29年(348期)</li>
										<li data-value="30">30年(360期)</li>
									</ul>
								</div>
								<input type="hidden" value="30" class="dknx">
							</div>

						</div>
						<div class="con-input">
							<label>公积金贷款利率：</label>
							<div class="load-gjj-rate">
								<div class="jsq-selector" default-value="0.0325"
									default-text="最新基准利率">
									<em>最新基准利率</em>
									<div class="hide-selector-box">
										<ul>
											<li data-date="20151023" class="current">最新基准利率</li>
											<li data-date="20150826">2015/08/26基准利率</li>
											<li data-date="20150628">2015/06/28基准利率</li>
											<li data-date="20150511">2015/05/11基准利率</li>
											<li data-date="20150301">2015/03/01基准利率</li>
											<li data-date="20141122">2014/11/22基准利率</li>
											<li data-date="20120706">2012/07/06基准利率</li>
											<li data-date="20120608">2012/06/08基准利率</li>
											<li data-date="20110707">2011/07/07基准利率</li>
											<li data-date="20110406">2011/04/06基准利率</li>
										</ul>
									</div>
									<input type="hidden" value="0.0325" class="rate_gjj_a">
								</div>
							</div>
							<div class="jsq-rate" data-default="3.25%">3.25%</div>
						</div>
					</div>
					<div class="lp-page">
						<div class="con-input">
							<label>楼盘名称：</label>
							<div class="con-input-right lp-sug">
								<input type="text" value="请输入楼盘名称" data-value="请输入楼盘名称"
									default-tips="楼盘名称" class="lp-name">
							</div>
						</div>
						<div class="lp-er-page">
							<div class="con-input">
								<label>意向户型：</label>
								<div class="jsq-selector" id="huxing">
									<em>选择您的意向户型</em>
									<div class="hide-selector-box"></div>
									<input type="hidden" value="">
								</div>
							</div>
							<div class="con-input con-txt">
								<label>估算房价：</label>
								<div class="con-input-right">
									<strong class="f20 red">￥<em id="lpFj"></em></strong>万元/套 单价<em
										id="lpDj"></em>元/平米<a class="f12 gray9" id="zhekou"
										href="https://house.focus.cn/fangdaijisuanqi/gongjijindaikuan/#"
										target="_blank"></a>
								</div>
							</div>
						</div>
						<div class="con-input radio-div">
							<label>购房性质：</label>
							<div class="con-input-radio sfbi-radio" default-value="0.2"
								default-text="首套房">
								<span class="radio-span check" data-value="0.2" data-zhekou=""
									data-gjj-zk="1.0">首套房</span> <span class="radio-span"
									data-value="0.2" data-zhekou="" data-gjj-zk="1.1">二套房</span> <input
									type="hidden" value="0.2" class="shoutao">
							</div>
						</div>
						<div class="er-page">
							<div class="con-input">
								<label>原住房面积：</label>
								<div class="con-input-right width2">
									<input type="text" value="" default-tips="原住房面积" class="yzfmj"><span
										class="input-txt">平方米</span>
								</div>
							</div>
						</div>
						<div class="con-input radio-div">
							<label>贷款主体：</label>
							<div class="con-input-radio first-dkxz" default-value="120"
								default-text="个人">
								<span class="radio-span check" data-value="120">个人</span> <span
									class="radio-span" data-value="120">家庭</span> <input
									type="hidden" value="120" class="dkxz">
							</div>
							<div class="con-input-radio second-dkxz" default-value="80"
								default-text="个人">
								<span class="radio-span check" data-value="80">个人</span> <span
									class="radio-span" data-value="80">家庭</span> <input
									type="hidden" value="80" class="dkxz">
							</div>
						</div>
						<div class="con-input">
							<label>首付比例：</label>
							<div class="jsq-selector sfbl-seletor" default-value="0.2"
								default-text="2成">
								<em>2成</em>
								<div class="hide-selector-box">
									<ul>
										<li data-value="0.2">2成</li>
										<li data-value="0.3">3成</li>
										<li data-value="0.4">4成</li>
										<li data-value="0.5">5成</li>
										<li data-value="0.6">6成</li>
										<li data-value="0.7">7成</li>
										<li data-value="0.8">8成</li>
										<li data-value="0.9">9成</li>
									</ul>
								</div>
								<input type="hidden" value="0.2" class="sfbl">
							</div>
						</div>
						<div class="con-input">
							<label>贷款年限：</label>
							<div class="jsq-selector nianxian" default-value="30"
								default-text="30年(360期)">
								<em>30年(360期)</em>
								<div class="hide-selector-box">
									<ul>
										<li data-value="1">1年(12期)</li>
										<li data-value="2">2年(24期)</li>
										<li data-value="3">3年(36期)</li>
										<li data-value="4">4年(48期)</li>
										<li data-value="5">5年(60期)</li>
										<li data-value="6">6年(72期)</li>
										<li data-value="7">7年(84期)</li>
										<li data-value="8">8年(96期)</li>
										<li data-value="9">9年(108期)</li>
										<li data-value="10">10年(120期)</li>
										<li data-value="11">11年(132期)</li>
										<li data-value="12">12年(144期)</li>
										<li data-value="13">13年(156期)</li>
										<li data-value="14">14年(168期)</li>
										<li data-value="15">15年(180期)</li>
										<li data-value="16">16年(192期)</li>
										<li data-value="17">17年(204期)</li>
										<li data-value="18">18年(216期)</li>
										<li data-value="19">19年(228期)</li>
										<li data-value="20">20年(240期)</li>
										<li data-value="21">21年(252期)</li>
										<li data-value="22">22年(264期)</li>
										<li data-value="23">23年(276期)</li>
										<li data-value="24">24年(288期)</li>
										<li data-value="25">25年(300期)</li>
										<li data-value="26">26年(312期)</li>
										<li data-value="27">27年(324期)</li>
										<li data-value="28">28年(336期)</li>
										<li data-value="29">29年(348期)</li>
										<li data-value="30">30年(360期)</li>
									</ul>
								</div>
								<input type="hidden" value="30" class="dknx">
							</div>

						</div>
						<div class="con-input">
							<label>公积金贷款利率：</label>
							<div class="load-gjj-rate">
								<div class="jsq-selector" default-value="0.0325"
									default-text="最新基准利率">
									<em>最新基准利率</em>
									<div class="hide-selector-box">
										<ul>
											<li data-date="20151023" class="current">最新基准利率</li>
											<li data-date="20150826">2015/08/26基准利率</li>
											<li data-date="20150628">2015/06/28基准利率</li>
											<li data-date="20150511">2015/05/11基准利率</li>
											<li data-date="20150301">2015/03/01基准利率</li>
											<li data-date="20141122">2014/11/22基准利率</li>
											<li data-date="20120706">2012/07/06基准利率</li>
											<li data-date="20120608">2012/06/08基准利率</li>
											<li data-date="20110707">2011/07/07基准利率</li>
											<li data-date="20110406">2011/04/06基准利率</li>
										</ul>
									</div>
									<input type="hidden" value="0.0325" class="rate_gjj_a">
								</div>
							</div>
							<div class="jsq-rate" data-default="3.25%">3.25%</div>
						</div>
					</div>
					<div class="mj-page">
						<div class="con-input">
							<label>单价：</label>
							<div class="con-input-right width2">
								<input type="text" value="" default-tips="单价" id="danjia"><span
									class="input-txt">元/平米</span>
							</div>
						</div>
						<div class="con-input">
							<label>面积：</label>
							<div class="con-input-right width2">
								<input type="text" value="" id="mianji" default-tips="面积"><span
									class="input-txt">平方米</span>
							</div>
							<input type="hidden" id="mjFjx" value="140"> <input
								type="hidden" id="mjSt" value="0.2"> <input
								type="hidden" id="mjEt" value="0.3">
						</div>
						<div class="con-input radio-div">
							<label>购房性质：</label>
							<div class="con-input-radio sfbi-radio" default-value="0.2"
								default-text="首套房">
								<span class="radio-span check" data-value="0.2" data-zhekou=""
									data-gjj-zk="1.0">首套房</span> <span class="radio-span"
									data-value="0.2" data-zhekou="" data-gjj-zk="1.1">二套房</span> <input
									type="hidden" value="0.2" class="shoutao">
							</div>
						</div>
						<div class="er-page">
							<div class="con-input">
								<label>原住房面积：</label>
								<div class="con-input-right width2">
									<input type="text" value="" default-tips="原住房面积" class="yzfmj"><span
										class="input-txt">平方米</span>
								</div>
							</div>
						</div>
						<div class="con-input radio-div">
							<label>贷款主体：</label>
							<div class="con-input-radio first-dkxz" default-value="120"
								default-text="个人">
								<span class="radio-span check" data-value="120">个人</span> <span
									class="radio-span" data-value="120">家庭</span> <input
									type="hidden" value="120" class="dkxz">
							</div>
							<div class="con-input-radio second-dkxz" default-value="80"
								default-text="个人">
								<span class="radio-span check" data-value="80">个人</span> <span
									class="radio-span" data-value="80">家庭</span> <input
									type="hidden" value="80" class="dkxz">
							</div>
						</div>
						<div class="con-input">
							<label>首付比例：</label>
							<div class="jsq-selector sfbl-seletor" default-value="0.2"
								default-text="2成">
								<em>2成</em>
								<div class="hide-selector-box">
									<ul>
										<li data-value="0.2">2成</li>
										<li data-value="0.3">3成</li>
										<li data-value="0.4">4成</li>
										<li data-value="0.5">5成</li>
										<li data-value="0.6">6成</li>
										<li data-value="0.7">7成</li>
										<li data-value="0.8">8成</li>
										<li data-value="0.9">9成</li>
									</ul>
								</div>
								<input type="hidden" value="0.2" class="sfbl">
							</div>
						</div>
						<div class="con-input">
							<label>贷款年限：</label>
							<div class="jsq-selector nianxian" default-value="30"
								default-text="30年(360期)">
								<em>30年(360期)</em>
								<div class="hide-selector-box">
									<ul>
										<li data-value="1">1年(12期)</li>
										<li data-value="2">2年(24期)</li>
										<li data-value="3">3年(36期)</li>
										<li data-value="4">4年(48期)</li>
										<li data-value="5">5年(60期)</li>
										<li data-value="6">6年(72期)</li>
										<li data-value="7">7年(84期)</li>
										<li data-value="8">8年(96期)</li>
										<li data-value="9">9年(108期)</li>
										<li data-value="10">10年(120期)</li>
										<li data-value="11">11年(132期)</li>
										<li data-value="12">12年(144期)</li>
										<li data-value="13">13年(156期)</li>
										<li data-value="14">14年(168期)</li>
										<li data-value="15">15年(180期)</li>
										<li data-value="16">16年(192期)</li>
										<li data-value="17">17年(204期)</li>
										<li data-value="18">18年(216期)</li>
										<li data-value="19">19年(228期)</li>
										<li data-value="20">20年(240期)</li>
										<li data-value="21">21年(252期)</li>
										<li data-value="22">22年(264期)</li>
										<li data-value="23">23年(276期)</li>
										<li data-value="24">24年(288期)</li>
										<li data-value="25">25年(300期)</li>
										<li data-value="26">26年(312期)</li>
										<li data-value="27">27年(324期)</li>
										<li data-value="28">28年(336期)</li>
										<li data-value="29">29年(348期)</li>
										<li data-value="30">30年(360期)</li>
									</ul>
								</div>
								<input type="hidden" value="30" class="dknx">
							</div>

						</div>
						<div class="con-input">
							<label>公积金贷款利率：</label>
							<div class="load-gjj-rate">
								<div class="jsq-selector" default-value="0.0325"
									default-text="最新基准利率">
									<em>最新基准利率</em>
									<div class="hide-selector-box">
										<ul>
											<li data-date="20151023" class="current">最新基准利率</li>
											<li data-date="20150826">2015/08/26基准利率</li>
											<li data-date="20150628">2015/06/28基准利率</li>
											<li data-date="20150511">2015/05/11基准利率</li>
											<li data-date="20150301">2015/03/01基准利率</li>
											<li data-date="20141122">2014/11/22基准利率</li>
											<li data-date="20120706">2012/07/06基准利率</li>
											<li data-date="20120608">2012/06/08基准利率</li>
											<li data-date="20110707">2011/07/07基准利率</li>
											<li data-date="20110406">2011/04/06基准利率</li>
										</ul>
									</div>
									<input type="hidden" value="0.0325" class="rate_gjj_a">
								</div>
							</div>
							<div class="jsq-rate" data-default="3.25%">3.25%</div>
						</div>
					</div>
					<div class="con-btn-div">
						<a
							href="https://house.focus.cn/fangdaijisuanqi/gongjijindaikuan/#"
							class="js-btn">开始计算</a> <a
							href="https://house.focus.cn/fangdaijisuanqi/gongjijindaikuan/#"
							class="reset-btn">清空重填</a>
					</div>
				</div>
			</div>
			<div class="cal-con-left" id="calConRight">
				<h3>
					<span class="h3-title icon2">计算结果</span><span class="h3-txt">（以下计算结果仅供参考）</span>
				</h3>
				<div class="cal-con-result">
					<div class="cal-res-nav">
						<a
							href="https://house.focus.cn/fangdaijisuanqi/gongjijindaikuan/#"
							class="current">等额本息</a> <a
							href="https://house.focus.cn/fangdaijisuanqi/gongjijindaikuan/#">等额本金</a>
					</div>
					<div class="cal-res-page">
						<div class="debx">
							<div class="cal-res-title">
								<h2 id="mongKh"></h2>
								<p>
									（您需要开具<em id="srzm"></em>元/月的收入证明 ) <span class="ask-icon"
										data-default="月收入不低于月还款额的两倍。"></span>
								</p>
							</div>
							<div class="cal-res-pic">
								<div class="cal-pic-left" id="graphic1"></div>
								<div class="cal-pic-right">
									<div class="cal-sf">
										首付： <span id="sfTotal"></span>万元
									</div>
									<div class="cal-dk">
										贷款： <span id="dkTotal"></span>万元 <span id="dkMx" class="dk-mx"></span>
										<a class="ask-icon"
											href="https://house.focus.cn/fangdaijisuanqi/gongjijindaikuan/#"
											data-default="当前首付比例计算的结果，超过本了市规定最高贷款额度120万，已将贷款金额修改为最高上限。"></a>

									</div>
									<div class="cal-lx">
										利息：<span id="lxTotal"></span>万元
									</div>
									<div class="cal-cs-link">
										<a
											href="https://house.focus.cn/fangdaijisuanqi/goufangnenglipinggu/"
											target="_blank">测测我的购房能力&gt;&gt;</a>
									</div>
								</div>
							</div>
						</div>
						<div class="debj">
							<div class="cal-res-title">
								<h2 id="syKh"></h2>
								<p>
									（您需要开具<em id="srzm2"></em>元/月的收入证明 ) <span class="ask-icon"
										data-default="月收入不低于月还款额的两倍。"></span>
								</p>
							</div>
							<div class="cal-res-pic">
								<div class="cal-pic-left" id="graphic2"></div>
								<div class="cal-pic-right">
									<div class="cal-sf">
										首付： <span id="sfTotal2"></span>万元
									</div>
									<div class="cal-dk">
										贷款： <span id="dkTotal2"></span>万元 <span id="dkMx1"
											class="dk-mx"></span> <a class="ask-icon"
											href="https://house.focus.cn/fangdaijisuanqi/gongjijindaikuan/#"
											data-default="当前首付比例计算的结果，超过本了市规定最高贷款额度120万，已将贷款金额修改为最高上限。"></a>

									</div>
									<div class="cal-lx">
										利息：<span id="lxTotal2"></span>万元
									</div>
									<div class="cal-cs-link">
										<a
											href="https://house.focus.cn/fangdaijisuanqi/goufangnenglipinggu/"
											target="_blank">测测我的购房能力&gt;&gt;</a>
									</div>
								</div>
							</div>
						</div>
						<div class="cal-rec-lp" id="recLp">
							<div class="cal-rec-left"></div>
							<div class="cal-rec-right">
								<div class="cal-rec-title">
									<a
										href="https://house.focus.cn/fangdaijisuanqi/gongjijindaikuan/#"
										target="_blank">国风美堂2室2厅1卫80m2</a>
								</div>
								<div class="cal-rec-txt">
									<label>户型均价：</label><span id="lpArgTotal"></span>元/平米
								</div>
								<div class="cal-rec-txt">
									<label>估算房价：</label><span id="lpHouseTotal"></span>万元
								</div>
								<div class="cal-rec-txt" id="lpHref">
									<a
										href="https://house.focus.cn/fangdaijisuanqi/gongjijindaikuan/#"
										target="_blank">查看楼盘详情&gt;&gt;</a>
								</div>
							</div>
							<span class="cal-rec-arrow">购房<br>目标
							</span>
						</div>
						<div class="cal-res-info2">
							<p>1、目前 公积金执行首套、二套差别化贷款原则；</p>
							<p>2、购买首套房时，最低首付为2成；</p>
							<p>3、购买二套房时，最低首付为2成；</p>
							<p>
								4. 公积金可贷额度不可超过120万，点击 <a
									href="https://house.focus.cn/fangdaijisuanqi/gongjijindaikuanedupinggu/"
									target="_blank">公积金贷款额度评估</a> 计算您的精准额度
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var adsInfo = {
			cityId : 1,
			pageId : 37,
			adsVersion : 2
		};
	</script>
	<script type="text/javascript"
		src="./【公积金贷款计算器_住房公积金贷款额度计算器2017】-北京搜狐焦点网_files/require.js.下载"
		data-main="http://simg.f.itc.cn/public_photo/advert/adsfev2.js"></script>
	<div class="fixed-con" id="hkmx">
		<div class="fixed-mask"></div>
		<span class="fixed-close"></span>
		<div class="fixed-content">
			<h2>等额本金每月还款明细</h2>
			<div class="mx-content" id="hkContent">
				<table cellpadding="0" cellspacing="0">
				</table>
			</div>
		</div>
	</div>
	<!--footer end-->
	<input type="hidden" name="city_id" id="cityId" value="1">
	<script type="text/javascript"
		src="<%=path %>/js/cookieMapping_pc.js"></script>


	<!--统计代码-->
	<script type="text/javascript">
		var _focus_pv_id = "focus.kpi.all";
	</script>
	<script type="text/javascript"
		src="<%=path %>/js/pv_v211.js"></script>
	<script type="text/javascript"
		src="<%=path %>/js/calculator-common.min.js"></script>
	<script type="text/javascript"
		src="<%=path %>/js/calculator-gjj-daikuan.min.js"></script>
	<script type="text/javascript"
		src="<%=path %>/js/echarts.min.js"></script>
</body>
</html>