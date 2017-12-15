<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta content="CoolSite360" property="og:site_name">
    <title>用户注册 - 意派 ∙ Coolsite360</title>
    <meta content="" name="keywords">
    <meta content="用户自助完成注册" name="description">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <link rel="shortcut icon" type="image/x-icon" href="http://qty83k.creatby.com/sites/favicon/24eb9218e32c0132b7f8239553852b98.ico">
    <!--[if lt ie 9]>
      <script type="text/javascript" src="http://o3bnyc.creatby.com/coolsite-front-v2/thirdparty_js/html5shiv.js"></script>
      <script type="text/javascript" src="http://o3bnyc.creatby.com/coolsite-front-v2/thirdparty_js/selectivizr-min.js"></script>
    <![endif]-->
    <link type="text/css" href="http://o3bnyc.creatby.com/coolsite-front-v2/thirdparty_css/bootstrap.min.css" rel="stylesheet" media="all">
    <link type="text/css" href="http://o3bnyc.creatby.com/coolsite-front-v2/thirdparty_css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="http://cdn.bootcss.com/fancybox/3.0.47/jquery.fancybox.min.css" rel="stylesheet">
    <link type="text/css" href="http://o3bnyc.creatby.com/coolsite-front-v2/css/pack.built.783cb615.cache.css" rel="stylesheet" media="all">
    <style>
        @font-face {font-family: 'SiYuan-ExtraLig991ea9be21803f';src: url('//webfonts.coolsite360.com/webfonts/selector/98367/46870/58d010b963debe57a9b8c0d0.gif');src: url('//webfonts.coolsite360.com/webfonts/selector/98367/46870/58d010b963debe57a9b8c0d0.gif?#iefix') format('embedded-opentype'),     url('//webfonts.coolsite360.com/webfonts/selector/98367/46870/58d010b963debe57a9b8c0d0.bmp') format('woff'),     url('//webfonts.coolsite360.com/webfonts/selector/98367/46870/58d010b963debe57a9b8c0d0.jpg') format('truetype'),     url('#SiYuan-ExtraLight') format('svg');   }.youziku-e2bd7183c7964246ba556baf875b80b1{font-family:'SiYuan-ExtraLig991ea9be21803f' !important}@font-face {font-family: 'Source-Han-Ligh9993ee3791803f';src: url('//webfonts.coolsite360.com/webfonts/selector/98367/46865/58d1f10c63debf48825ff0c7.gif');src: url('//webfonts.coolsite360.com/webfonts/selector/98367/46865/58d1f10c63debf48825ff0c7.gif?#iefix') format('embedded-opentype'),     url('//webfonts.coolsite360.com/webfonts/selector/98367/46865/58d1f10c63debf48825ff0c7.bmp') format('woff'),     url('//webfonts.coolsite360.com/webfonts/selector/98367/46865/58d1f10c63debf48825ff0c7.jpg') format('truetype'),     url('#Source-Han-Light') format('svg');   }.youziku-e094346a5670469eaacd0dcc3afa6f0d{font-family:'Source-Han-Ligh9993ee3791803f' !important}
    </style>
    <script>
    coolsite360={
        PlayerPlugins:[]
    } ;
    </script>
    <link type="text/css" href="http://o3bnyc.creatby.com/coolsite-front-v2/global_main.css" rel="stylesheet">
    <!--[if lte IE 8]>
      <link type="text/css" href="http://o3bnyc.creatby.com/coolsite-front-v2/styles_forie.css" rel="stylesheet">
      <script type="text/javascript" src="http://o3bnyc.creatby.com/coolsite-front-v2/thirdparty_js/respond.src.js"></script>
    <![endif]-->
    <script type="text/javascript">
      if(navigator.appVersion.match(/MSIE [678]./i)==null){
        document.writeln('<link type="text/css" href="http://o3bnyc.creatby.com/coolsite-front-v2/styles.css" rel="stylesheet">')
      }
    </script>
    <link type="text/css" href="http://o3bnyc.creatby.com/coolsite-front-v2/patch.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/fakeLoader/1.1.0/fakeLoader.min.css" rel="stylesheet">
    <style>
      div.links div.column_50TsXH { min-height: 2em; }
      div.links { margin-top: 2em; border-top: 0px; color: #444;}
      div.links div.column_50TsXH a.c-textlink { color: #444;}
    </style>
    <style>
        @font-face{font-family:'Caudex';font-style:normal;font-weight:400;src:local(Caudex),url(http://gfonts.coolsite360.com/s/caudex/v6/6CwZGTsjYRXUiSDlabVS2n-_kf6ByYO6CLYdB4HQE-Y.woff2) format("woff2");unicode-range:U+1F00-1FFF}@font-face{font-family:'Caudex';font-style:normal;font-weight:400;src:local(Caudex),url(http://gfonts.coolsite360.com/s/caudex/v6/uKDHrXVo0UKVEKBdFH13fH-_kf6ByYO6CLYdB4HQE-Y.woff2) format("woff2");unicode-range:U+0370-03FF}@font-face{font-family:'Caudex';font-style:normal;font-weight:400;src:local(Caudex),url(http://gfonts.coolsite360.com/s/caudex/v6/M9hv5IlpxEaNftgkD8754H-_kf6ByYO6CLYdB4HQE-Y.woff2) format("woff2");unicode-range:U+0100-024F,U+1E00-1EFF,U+20A0-20AB,U+20AD-20CF,U+2C60-2C7F,U+A720-A7FF}@font-face{font-family:'Caudex';font-style:normal;font-weight:400;src:local(Caudex),url(http://gfonts.coolsite360.com/s/caudex/v6/oK9B5EatFn1pC05ZmnkMduvvDin1pK8aKteLpeZ5c0A.woff2) format("woff2");unicode-range:U+0000-00FF,U+0131,U+0152-0153,U+02C6,U+02DA,U+02DC,U+2000-206F,U+2074,U+20AC,U+2212,U+2215}@font-face{font-family:'Oswald';font-style:normal;font-weight:700;src:local('Oswald Bold'),local(Oswald-Bold),url(http://gfonts.coolsite360.com/s/oswald/v13/smkSb2csQFrK-wxLDSe5R4X0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0400-045F,U+0490-0491,U+04B0-04B1,U+2116}@font-face{font-family:'Oswald';font-style:normal;font-weight:700;src:local('Oswald Bold'),local(Oswald-Bold),url(http://gfonts.coolsite360.com/s/oswald/v13/69aXBpgQONjr_rHWADjBuYX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0102-0103,U+1EA0-1EF9,U+20AB}@font-face{font-family:'Oswald';font-style:normal;font-weight:700;src:local('Oswald Bold'),local(Oswald-Bold),url(http://gfonts.coolsite360.com/s/oswald/v13/dI-qzxlKVQA6TUC5RKSb34X0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0100-024F,U+1E00-1EFF,U+20A0-20AB,U+20AD-20CF,U+2C60-2C7F,U+A720-A7FF}@font-face{font-family:'Oswald';font-style:normal;font-weight:700;src:local('Oswald Bold'),local(Oswald-Bold),url(http://gfonts.coolsite360.com/s/oswald/v13/bH7276GfdCjMjApa_dkG6ZBw1xU1rKptJj_0jans920.woff2) format("woff2");unicode-range:U+0000-00FF,U+0131,U+0152-0153,U+02C6,U+02DA,U+02DC,U+2000-206F,U+2074,U+20AC,U+2212,U+2215}@font-face{font-family:'Playfair Display';font-style:normal;font-weight:400;src:local('Playfair Display'),local(PlayfairDisplay-Regular),url(http://gfonts.coolsite360.com/s/playfairdisplay/v10/2NBgzUtEeyB-Xtpr9bm1CRw5vVFbIG7DatP53f3SWfE.woff2) format("woff2");unicode-range:U+0400-045F,U+0490-0491,U+04B0-04B1,U+2116}@font-face{font-family:'Playfair Display';font-style:normal;font-weight:400;src:local('Playfair Display'),local(PlayfairDisplay-Regular),url(http://gfonts.coolsite360.com/s/playfairdisplay/v10/2NBgzUtEeyB-Xtpr9bm1CSVudZg2I_9CBJalMPResNk.woff2) format("woff2");unicode-range:U+0100-024F,U+1E00-1EFF,U+20A0-20AB,U+20AD-20CF,U+2C60-2C7F,U+A720-A7FF}@font-face{font-family:'Playfair Display';font-style:normal;font-weight:400;src:local('Playfair Display'),local(PlayfairDisplay-Regular),url(http://gfonts.coolsite360.com/s/playfairdisplay/v10/2NBgzUtEeyB-Xtpr9bm1CRD8Ne_KjP89kA3_zOrHj8E.woff2) format("woff2");unicode-range:U+0000-00FF,U+0131,U+0152-0153,U+02C6,U+02DA,U+02DC,U+2000-206F,U+2074,U+20AC,U+2212,U+2215}@font-face{font-family:'Roboto';font-style:normal;font-weight:100;src:local('Roboto Thin'),local(Roboto-Thin),url(http://gfonts.coolsite360.com/s/roboto/v16/ty9dfvLAziwdqQ2dHoyjphkAz4rYn47Zy2rvigWQf6w.woff2) format("woff2");unicode-range:U+0460-052F,U+20B4,U+2DE0-2DFF,U+A640-A69F}@font-face{font-family:'Roboto';font-style:normal;font-weight:100;src:local('Roboto Thin'),local(Roboto-Thin),url(http://gfonts.coolsite360.com/s/roboto/v16/frNV30OaYdlFRtH2VnZZdhkAz4rYn47Zy2rvigWQf6w.woff2) format("woff2");unicode-range:U+0400-045F,U+0490-0491,U+04B0-04B1,U+2116}@font-face{font-family:'Roboto';font-style:normal;font-weight:100;src:local('Roboto Thin'),local(Roboto-Thin),url(http://gfonts.coolsite360.com/s/roboto/v16/gwVJDERN2Amz39wrSoZ7FxkAz4rYn47Zy2rvigWQf6w.woff2) format("woff2");unicode-range:U+1F00-1FFF}@font-face{font-family:'Roboto';font-style:normal;font-weight:100;src:local('Roboto Thin'),local(Roboto-Thin),url(http://gfonts.coolsite360.com/s/roboto/v16/aZMswpodYeVhtRvuABJWvBkAz4rYn47Zy2rvigWQf6w.woff2) format("woff2");unicode-range:U+0370-03FF}@font-face{font-family:'Roboto';font-style:normal;font-weight:100;src:local('Roboto Thin'),local(Roboto-Thin),url(http://gfonts.coolsite360.com/s/roboto/v16/VvXUGKZXbHtX_S_VCTLpGhkAz4rYn47Zy2rvigWQf6w.woff2) format("woff2");unicode-range:U+0102-0103,U+1EA0-1EF9,U+20AB}@font-face{font-family:'Roboto';font-style:normal;font-weight:100;src:local('Roboto Thin'),local(Roboto-Thin),url(http://gfonts.coolsite360.com/s/roboto/v16/e7MeVAyvogMqFwwl61PKhBkAz4rYn47Zy2rvigWQf6w.woff2) format("woff2");unicode-range:U+0100-024F,U+1E00-1EFF,U+20A0-20AB,U+20AD-20CF,U+2C60-2C7F,U+A720-A7FF}@font-face{font-family:'Roboto';font-style:normal;font-weight:100;src:local('Roboto Thin'),local(Roboto-Thin),url(http://gfonts.coolsite360.com/s/roboto/v16/2tsd397wLxj96qwHyNIkxHYhjbSpvc47ee6xR_80Hnw.woff2) format("woff2");unicode-range:U+0000-00FF,U+0131,U+0152-0153,U+02C6,U+02DA,U+02DC,U+2000-206F,U+2074,U+20AC,U+2212,U+2215}@font-face{font-family:'Roboto';font-style:normal;font-weight:300;src:local('Roboto Light'),local(Roboto-Light),url(http://gfonts.coolsite360.com/s/roboto/v16/0eC6fl06luXEYWpBSJvXCIX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0460-052F,U+20B4,U+2DE0-2DFF,U+A640-A69F}@font-face{font-family:'Roboto';font-style:normal;font-weight:300;src:local('Roboto Light'),local(Roboto-Light),url(http://gfonts.coolsite360.com/s/roboto/v16/Fl4y0QdOxyyTHEGMXX8kcYX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0400-045F,U+0490-0491,U+04B0-04B1,U+2116}@font-face{font-family:'Roboto';font-style:normal;font-weight:300;src:local('Roboto Light'),local(Roboto-Light),url(http://gfonts.coolsite360.com/s/roboto/v16/-L14Jk06m6pUHB-5mXQQnYX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+1F00-1FFF}@font-face{font-family:'Roboto';font-style:normal;font-weight:300;src:local('Roboto Light'),local(Roboto-Light),url(http://gfonts.coolsite360.com/s/roboto/v16/I3S1wsgSg9YCurV6PUkTOYX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0370-03FF}@font-face{font-family:'Roboto';font-style:normal;font-weight:300;src:local('Roboto Light'),local(Roboto-Light),url(http://gfonts.coolsite360.com/s/roboto/v16/NYDWBdD4gIq26G5XYbHsFIX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0102-0103,U+1EA0-1EF9,U+20AB}@font-face{font-family:'Roboto';font-style:normal;font-weight:300;src:local('Roboto Light'),local(Roboto-Light),url(http://gfonts.coolsite360.com/s/roboto/v16/Pru33qjShpZSmG3z6VYwnYX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0100-024F,U+1E00-1EFF,U+20A0-20AB,U+20AD-20CF,U+2C60-2C7F,U+A720-A7FF}@font-face{font-family:'Roboto';font-style:normal;font-weight:300;src:local('Roboto Light'),local(Roboto-Light),url(http://gfonts.coolsite360.com/s/roboto/v16/Hgo13k-tfSpn0qi1SFdUfZBw1xU1rKptJj_0jans920.woff2) format("woff2");unicode-range:U+0000-00FF,U+0131,U+0152-0153,U+02C6,U+02DA,U+02DC,U+2000-206F,U+2074,U+20AC,U+2212,U+2215}@font-face{font-family:'Roboto';font-style:normal;font-weight:900;src:local('Roboto Black'),local(Roboto-Black),url(http://gfonts.coolsite360.com/s/roboto/v16/s7gftie1JANC-QmDJvMWZoX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0460-052F,U+20B4,U+2DE0-2DFF,U+A640-A69F}@font-face{font-family:'Roboto';font-style:normal;font-weight:900;src:local('Roboto Black'),local(Roboto-Black),url(http://gfonts.coolsite360.com/s/roboto/v16/3Y_xCyt7TNunMGg0Et2pnoX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0400-045F,U+0490-0491,U+04B0-04B1,U+2116}@font-face{font-family:'Roboto';font-style:normal;font-weight:900;src:local('Roboto Black'),local(Roboto-Black),url(http://gfonts.coolsite360.com/s/roboto/v16/WeQRRE07FDkIrr29oHQgHIX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+1F00-1FFF}@font-face{font-family:'Roboto';font-style:normal;font-weight:900;src:local('Roboto Black'),local(Roboto-Black),url(http://gfonts.coolsite360.com/s/roboto/v16/jyIYROCkJM3gZ4KV00YXOIX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0370-03FF}@font-face{font-family:'Roboto';font-style:normal;font-weight:900;src:local('Roboto Black'),local(Roboto-Black),url(http://gfonts.coolsite360.com/s/roboto/v16/phsu-QZXz1JBv0PbFoPmEIX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0102-0103,U+1EA0-1EF9,U+20AB}@font-face{font-family:'Roboto';font-style:normal;font-weight:900;src:local('Roboto Black'),local(Roboto-Black),url(http://gfonts.coolsite360.com/s/roboto/v16/9_7S_tWeGDh5Pq3u05RVkoX0hVgzZQUfRDuZrPvH3D8.woff2) format("woff2");unicode-range:U+0100-024F,U+1E00-1EFF,U+20A0-20AB,U+20AD-20CF,U+2C60-2C7F,U+A720-A7FF}@font-face{font-family:'Roboto';font-style:normal;font-weight:900;src:local('Roboto Black'),local(Roboto-Black),url(http://gfonts.coolsite360.com/s/roboto/v16/mnpfi9pxYH-Go5UiibESIpBw1xU1rKptJj_0jans920.woff2) format("woff2");unicode-range:U+0000-00FF,U+0131,U+0152-0153,U+02C6,U+02DA,U+02DC,U+2000-206F,U+2074,U+20AC,U+2212,U+2215}
    </style>
    <script type="text/javascript" src="http://o3bnyc.creatby.com/coolsite-front-v2/js/index_data.js"></script>
    <script type="text/javascript" src="http://o3bnyc.creatby.com/coolsite-front-v2/thirdparty_js/jquery-1.8.1.min.js"></script>
    <script type="text/javascript" src="http://o3bnyc.creatby.com/coolsite-front-v2/thirdparty_js/bootstrap.min.js"></script>
</head>

<body class="body_0B8Dz72" data-c_tl_id="M_2374a4201a029685f2a5dd7c93a36384">

 <div class="container-fluid cst_navcontainer cst_Headroom cst_navfixed c-section cbsect_8a42d89b" data-c_spy="scroll" data-c_tl_id="tl_f83f28f0" id="section73ef9f42" style="background-color: transparent; ">
  <nav class="navbar nav_style_01 c-navbar cbnavb_7ddf60e1">
   <div class="container cst_navcontainer cbnavc_63d94568" style="background-color: transparent; ">
    <div class="navbar-header c-navheader cbnavh_ca51405e">
     <button class="navbar-toggle c-navmenubutton cbnavm_0ea91b57" data-target="#navmenu_1c29acd3b3e5392f" data-toggle="collapse" switch-class="c-state1" switch-selector=".navbar-collapse" type="button">
      <span class="sr-only c-span cbspan_dbb7afc8">
       Toggle navigation
      </span>
      <span class="icon-bar c-nav-btn-span cbspan_658a66f9">
      </span>
      <span class="icon-bar c-nav-btn-span cbspan_aaa7284b">
      </span>
      <span class="icon-bar c-nav-btn-span cbspan_6dcb01d2">
      </span>
     </button>
     <a class="navbar-toggle-desktop hidden-xs c-linkblock cblink_3267ecd0" data-c_act_id="act_eb360d5c" href="#">
      <i class="fa fa-bars c-icon cbicon_b3635ce3" data-c_e_id="icon1fac4612" switch-class="c-state1" switch-selector=".navbar-collapse">
      </i>
      <i class="fa fa-remove c-icon cbicon_eaa3cf3a" data-c_e_id="iconaf5904a3">
      </i>
     </a>
     <a class="navbar-brand c-navbrand cbnavb_157db1e0" href="/">
      <p>
       <br/>
      </p>
     </a>
    </div>
    <div class="collapse navbar-collapse c-navcollapse cbnavc_635df6b9" data-c_e_id="navcollapseb9aaba37" id="navmenu_1c29acd3b3e5392f">
     <ul class="nav navbar-nav navbar-right c-navlist cbnavl_65812087">
      <li class="c-navlistitem cbnavl_02d69a5a">
       <a class="c-navlink cbnavl_20fdf642" data-c_spy="scroll" href="/">
        首页
       </a>
      </li>
      <li class="c-navlistitem cbnavl_01c74886">
       <a class="c-navlink cbnavl_20fdf642" data-c_spy="scroll" href="/template/">
        模板
       </a>
      </li>
      <li class="c-navlistitem cbnavl_01c74886">
       <a class="c-navlink cbnavl_20fdf642" data-c_spy="scroll" href="/portfolio/">
        用户作品
       </a>
      </li>
      <li class="c-navlistitem cbnavl_01c74886">
       <a class="c-navlink cbnavl_20fdf642" data-c_spy="scroll" href="/price/">
        价格
       </a>
      </li>
      <li class="c-navlistitem cbnavl_6a49b802">
       <a class="c-navlink cbnavl_20fdf642" data-c_spy="scroll" href="/newbie/">
        教程
       </a>
      </li>
      <li class="c-navlistitem cbnavl_6a49b802">
       <a class="c-navlink cbnavl_20fdf642" data-c_spy="scroll" href="/wxapp/">
        小程序
       </a>
      </li>
     
      <li class="c-navlistitem cbnavl_6a49b802">
       <a class="c-navlink cbnavl_20fdf642" data-c_spy="scroll" href="/accounts/login/?next=/s/">
        登录
       </a>
      </li>
      <li class="c-navlistitem cbnavl_6a49b802">
       <a class="c-navlink cbnavl_20fdf642" data-c_spy="scroll" href="/accounts/register/">
        注册
       </a>
      </li>
      
     </ul>
    </div>
   </div>
  </nav>
 </div>


 <div class="container-fluid cst_sectionBlock c-section cbsect_8aaa85e7" data-c_tl_id="tl_3c3c4131" id="section31e58a8c">
  <div class="container cst_container_base c-container-1 cbcont_d09df7e1">
   <div class="cst_textbox_flex cst_border_shadow_setting c-div cbdiv_a2a9e000" data-c_cssani="0|1|0|0">
    <div class="cst_flexitem cst_flexsetting cst_flex_vetically c-div cbdiv_63aa33f9" style="">
     <div class="cst_textSetting cst_textWrap c-div cbdiv_ebd6443d">
      <div class="c-div cbdiv_f469511b">
       <h1 class="cst_title c-heading cbhead_63e0a196">
        SIGN UP
       </h1>
       <h3 class="cst_subtitle c-heading youziku-e094346a5670469eaacd0dcc3afa6f0d cbhead_22031f0b">
        <div>
         注册
        </div>
       </h3>
      </div>
     </div>
    </div>
   </div>
   <div class="row c-row cbrow_85e648e6">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 c-column cbcolu_ad1ba711 cbcolu_ba3c54c9">
     <form action="" class="c-form cbform_0a36d817" data-redirect="/success" method="post" name="form">
     
     
        
      
        
      
        
      
        
      
      <label class="c-label cblabe_cc5866f5">
       邮箱:
      </label>
      <input class="c-input cbinpu_621a36ca cbcolu_ba3c54c9" name="email" placeholder="请输入注册邮箱" required="True" type="email" value=""/>
      <label class="c-label cblabe_20991cd7">
       密码:
      </label>
      <input class="c-input cbinpu_76ad9faa cbcolu_ba3c54c9" name="password1" placeholder="请输入密码" required="True" type="password"/>
      <label class="c-label cblabe_20991cd7">
       确认密码:
      </label>
      <input class="c-input cbinpu_76ad9faa cbcolu_ba3c54c9" name="password2" placeholder="请输入密码" required="True" type="password"/>
      <label class="c-label cblabe_cc5866f5">
       昵称:
      </label>
      <input class="c-input cbinpu_621a36ca cbcolu_ba3c54c9" name="fullname" placeholder="昵称" required="True" type="text" value=""/>

         <label class="c-label cblabe_cc5866f5">
             验证码：
         </label>

         <div class="clearfix c-div div_dsP1ZX">
             <input class="c-input cbinpu_621a36ca cbcolu_ba3c54c9" style="height: 40px;width: 100px;float: left;border-width: 1px;margin-right: 13px;background-color: rgba(112, 112, 112, 0.439216);border-color: rgba(112, 112, 112, 0.882353);" name="checkcode" placeholder="验证码" required="True" type="text"
                    autocomplete="off"/>
             <img class="c-image image_MoHjr3" style="width: 160px;height: 40px;" onclick="this.setAttribute('src', '/code/?'+(new Date()).getTime());"
                  src="/code/"/>
             
         </div>
      <div class="checkbox c-checkbox cbchec_027dab92">
       <input class="c-checkbox-input cbchec_4e63bca5" name="checkbox" required="True" type="checkbox"/>
       <label class="c-form-label cbform_9a6fc75e" data-c_act_id="M_5dd3c496f0e437dc">
        我已经认真阅读并同意Coolsite360的《<a href="/disclaimer/" style="color: #f80;" target="_blank">使用协议</a>》。
       </label>
      </div>
      <button class="cbsubm_ebc66158" name="" type="submit" wait="">
       注册
      </button>
     </form>
     <a class="btn c-button cbsubm_ebc66158 cbbutt_baa5aaa8" href="/accounts/login/" type="button">
      登录
     </a>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 c-column cbcolu_6ee94abb">
     <a class="c-linkblock linkblock_MzSxnL" href="/accounts/login/">
      <p class="cbpara_0d2dd5c9">
       使用 Epub360 帐号登录
      </p>
     </a>
    </div>
   </div>
  </div>
 </div>


 <div class="container-fluid cst_sectionBlock c-section cbsect_58391cab" data-c_tl_id="tl_f31abbc8" id="section852f294d">
  <div class="container cst_container_base c-container-1 cbcont_275a4dcc">
   <div class="cst_footer_listGroup cst_mLR-15 c-div cbdiv_4863f3dd">
    <div class="cst_flex c-div cs-repeatable cbdiv_4e02514f">
     <div class="cst_flexitem c-div cbdiv_55381d9f">
      <ul class="cst_textLinkstyle c-list cblist_15b677f1">
       <li class="c-listitem cblist_32bd5bda">
        <h4 class="c-heading cbhead_f3c70b89">
         CONTACT
        </h4>
       </li>
       <li class="c-listitem cblist_32bd5bda">
        <i class="fa fa-map-marker hidden-xs c-icon cbicon_d3238b40">
        </i>
        <p class="c-paragraph cbpara_969d71e3">
         上海市长宁区仙霞路321号百科苑大楼
        </p>
       </li>
       <li class="c-listitem cblist_32bd5bda">
        <i class="fa fa-envelope-o hidden-xs c-icon cbicon_d3238b40">
        </i>
        <p class="c-paragraph cbpara_969d71e3">
         合作Email：jason@21epub.com
        </p>
       </li>
      </ul>
     </div>
     <div class="cst_flexitem c-div cbdiv_55381d9f">
      <ul class="cst_textLinkstyle c-list cblist_15b677f1">
       <li class="c-listitem cblist_32bd5bda">
        <h4 class="c-heading cbhead_f3c70b89">
         SOCIAL LINKS
        </h4>
       </li>
       <li class="c-listitem cblist_32bd5bda">
        <img src="//v2static.epub360.com/default_imgs/epub360_wechat_qrcode.jpg" class="qrcode hidden-xs">
        <i class="fa fa-angle-right c-icon cbicon_d3238b40">
        </i>
        <a class="c-textlink cbtext_84cf7d8e" href="http://mp.weixin.qq.com/s?__biz=MzA4MjIxMzAyMw==&amp;mid=207898774&amp;idx=1&amp;sn=4eb9ad2171cf1028e85f7a92d25e6b3d#rd">
         微信：意派科技 <i class="glyphicon glyphicon-qrcode c-icon" style="font-size: 9px;"></i>
        </a>
       </li>
       <li class="c-listitem cblist_32bd5bda">
        <i class="fa fa-angle-right c-icon cbicon_d3238b40">
        </i>
        <a class="c-textlink cbtext_84cf7d8e" href="http://weibo.com/epub360" target="_blank">
         新浪微博：意派科技
        </a>
       </li>
       <li class="c-listitem cblist_32bd5bda">
        <i class="fa fa-angle-right c-icon cbicon_d3238b40">
        </i>
        <a class="c-textlink cbtext_84cf7d8e"  href="//shang.qq.com/wpa/qunwpa?idkey=cd7a308516922fb68ee587ca18a051b0f126bbbea1311c4638c8c821f8d39a03" target="_blank">
         QQ群：227979505
        </a>
       </li>
      </ul>
     </div>
     <div class="cst_flexitem c-div cbdiv_55381d9f">
      <ul class="cst_textLinkstyle c-list cblist_15b677f1">
       <li class="c-listitem cblist_32bd5bda">
        <h4 class="c-heading cbhead_f3c70b89">
         LINKS
        </h4>
       </li>
       <li class="c-listitem cblist_32bd5bda">
        <i class="fa fa-angle-right c-icon cbicon_d3238b40">
        </i>
        <a class="c-textlink cbtext_84cf7d8e" href="/disclaimer/">
         免责声明
        </a>
       </li>
       <li class="c-listitem cblist_32bd5bda">
        <i class="fa fa-angle-right c-icon cbicon_d3238b40">
        </i>
        <a class="c-textlink cbtext_84cf7d8e" href="http://bbs.epub360.com/Blog/" target="_blank">
         官方博客
        </a>
       </li>
       <li class="c-listitem cblist_32bd5bda">
        <i class="fa fa-angle-right c-icon cbicon_d3238b40">
        </i>
        <a class="c-textlink cbtext_84cf7d8e" href="http://support.epub360.com/hc/kb/category/29369/" target="_blank">
         帮助中心
        </a>
       </li>
      </ul>
     </div>
     <div class="cst_flexitem c-div cbdiv_55381d9f">
      <ul class="cst_textLinkstyle c-list cblist_15b677f1">
       <li class="c-listitem cblist_32bd5bda">
        <h4 class="c-heading cbhead_f3c70b89">
         PRODUCTS
        </h4>
        <h5 class="c-heading youziku-e094346a5670469eaacd0dcc3afa6f0d cbhead_b6434fbd">
         相关产品
        </h5>
        <a class="c-linkblock cblink_ac44297a" href="http://www.epub360.com/" target="_blank">
         <img class="c-image cbimag_b2cd49b6" src="http://o3bnyc.creatby.com/coolsite-front-v2/files/c9d9596b318739757a8589d26d1802b3.png"/>
        </a>
       </li>
      </ul>
     </div>
    </div>
   </div>
   <div class="cst_footer_copyright cst_mLR-15 c-div cbdiv_d1f1beb6">
    <div class="cst_textLinkstyle cst_flex_between c-div cbdiv_003af98f">
     <div class="c-div cbdiv_5d7913e4">
      <p class="c-paragraph cbpara_6f59fcd8">
       © 2014-2017 上海意派信息科技有限公司
      </p>
     </div>
     <div class="c-div cbdiv_358a5622">
      <a class="c-textlink cbtext_2d299147" href="#">
       沪ICP备13031638号
      </a>
     </div>
    </div>
   </div>
   <!-- links -->
   <div class="cst_footer_copyright cst_mLR-15 c-div cbdiv_d1f1beb6 links">
    <div class="column_50TsXH col-lg-12 col-md-12 col-sm-12 col-xs-12 c-column">
         <a class="textlink_IKlpeH c-textlink" href="http://www.epub360.com/" title="H5页面制作工具">H5页面制作工具</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.epub360.com/" title="H5制作工具">H5制作工具</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.epub360.com/" title="H5页面制作软件">H5页面制作软件</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.epub360.com/" title="微信H5页面制作软件">微信H5页面制作软件</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.epub360.com/" title="H5制作平台">H5制作平台</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.epub360.com/" title="H5页面制作">H5页面制作</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.epub360.com/" title="H5在线制作">H5在线制作</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.epub360.com/" title="制作H5的软件">制作H5的软件</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.epub360.com/" title="微信h5页面制作">微信h5页面制作</a>
        </div><div class="column_50TsXH col-lg-12 col-md-12 col-sm-12 col-xs-12 c-column">
         <a class="textlink_IKlpeH c-textlink" href="http://www.coolsite360.com/" title="模块建站">模块建站</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.coolsite360.com/" title="自助建站">自助建站</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.coolsite360.com/" title="响应式网站">响应式网站</a>/&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.coolsite360.com/" title="响应式网站建设">响应式网站建设</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.coolsite360.com/" title="响应式网站工具">响应式网站工具</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.coolsite360.com/" title="响应式网站设计">响应式网站设计</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.coolsite360.com/template/" title="响应式网站模版">响应式网站模版</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.coolsite360.com/wxapp/" title="微信小程序工具">微信小程序工具</a> /&nbsp;
         <a class="textlink_IKlpeH c-textlink" href="http://www.coolsite360.com/wxapp/" title="微信小程序开发">微信小程序开发</a> 
    </div>
   </div>

  </div>
 </div>










<!-- ie8 以下版本提示信息 -->
<!--[if lt ie 8]>
  <script type="text/javascript">
    window.onload=function(){
      document.getElementById('browser-tip').style.display = "block";
      document.getElementsByTagName('body')[0].style.paddingTop = "50px";
    }
    function hide(){
      document.getElementById('browser-tip').style.display = "none";
      document.getElementsByTagName('body')[0].style.paddingTop = "0px";
    }
  </script>
<![endif]-->
<div id="browser-tip" style="position:fixed; top:0; left:0; right:0; z-index:9999; height:30px; line-height:33px; padding:10px 0 9px; text-indent:30px; font-size:15px; background:#fcf8e3; border-bottom:1px solid #fbeed5; width:100%;display:none;">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="display:block; float:right; z-index:9999; line-height:36px; margin-right: 0px;padding:0; font-size:32px; color:#666; box-shadow: 0; text-shadow:none; text-align:center; filter:alpha(opacity=100); -khtml-opacity:1; opacity:1;" onclick="hide()">×</button>
  <p style="text-align: center;">
    您当前使用的浏览器版本较低，为使您获得更好的操作体验，我们推荐您使用：
    <span style="margin-left:10px;">
      <a href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie" target="_blank">
        <img src="http://qn.static.epub360.com/site-epub360/img/compatible_ie.gif" width="31" height="30" alt="Internet Explorer" title="Internet Explorer"></a>
      <a href="http://www.google.com/intl/zh-CN/chrome/" target="_blank">
        <img src="http://qn.static.epub360.com/site-epub360/img/compatible_chrome.gif" width="31" height="30" alt="Google Chrome" title="Google Chrome"></a>
      <a href="http://www.mozilla.org/zh-CN/firefox/new/" target="_blank">
        <img src="http://qn.static.epub360.com/site-epub360/img/compatible_firefox.gif" width="31" height="30" alt="Firefox" title="Firefox"></a>
      <a href="http://support.apple.com/zh_CN/downloads/#safari" target="_blank">
        <img src="http://qn.static.epub360.com/site-epub360/img/compatible_safari.gif" width="28" height="30" alt="Safari" title="Safari"></a>
    </span>
  </p>
</div>
<script type="text/javascript" src="http://cdn.bootcss.com/jarallax/1.7.2/jarallax.min.js"></script>
<script src="http://cdn.bootcss.com/headroom/0.9.3/headroom.min.js"></script>
<script src="http://cdn.bootcss.com/headroom/0.9.3/jQuery.headroom.min.js"></script>
<script src="http://cdn.bootcss.com/fancybox/3.0.47/jquery.fancybox.min.js"></script>
<script type="text/javascript" src="http://o3bnyc.creatby.com/coolsite-front-v2/js/vendor_c.bundle.built.e43e22b1.cache.js"></script>
<script type="text/javascript" src="http://o3bnyc.creatby.com/coolsite-front-v2/js/pack.built.a2fcce3b.cache.js"></script>
<script type="text/javascript" src="http://o3bnyc.creatby.com/coolsite-front-v2/js/cst.built.e61913e2.cache.js"></script>
<script src="https://cdn.bootcss.com/fakeLoader/1.1.0/fakeLoader.min.js"></script>
<script>
            $(document).ready(function(){
                $(".fakeloader").fakeLoader({
                    timeToHide:800,
                    bgColor:"#434343",
                    spinner:"spinner1",
                    zIndex:1100,
                });
            });
</script>





<script type="text/javascript" src="http://tajs.qq.com/stats?sId=49910848" charset="UTF-8"></script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-54805114-1', 'auto');
  ga('send', 'pageview');
  
  var _hmt = _hmt || [];
  (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?463ee3af5ac03c45ec0a65ffa5e593b8";
    var s = document.getElementsByTagName("script")[0]; 
    s.parentNode.insertBefore(hm, s);
  })();
</script>


</body>
</html>