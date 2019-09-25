<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<title></title>
		<link href="css/mui.min.css" rel="stylesheet" />
		<link href="css/mui.page.css" rel="stylesheet" />
		<link href="css/mui.pull.css" rel="stylesheet" />
		<link href="css/mui.picker.min.css" rel="stylesheet" />
		<link href="css/main.css" rel="stylesheet" />
		 <script type="text/javascript" src="js/jquery.min.js"></script>
	</head>

	<body>
    <div id="alipay">

    </div>
		<!--头部-->
		<header class="mui-bar mui-bar-nav">
			<div id="goHome" class="header-logo">
			</div>
			<h1 class="mui-title"> <img class="mui-image" style="border-radius:70%;" src="img/logo.png" />售后服务</h1>
		</header>
		<nav class="mui-bar mui-bar-tab">
			<a class="mui-tab-item" href="#index">
				<span class="mui-icon mui-icon-home"></span>
				<span class="mui-tab-label">首页</span>
			</a>
			<a class="mui-tab-item" href="#category" id="categoryMenu">
				<span class="mui-icon mui-icon-list"></span>
				<span class="mui-tab-label">分类</span>
			</a>
			<a  class="mui-tab-item" href="#order" id="myOrderList">
				<span class="mui-icon mui-icon-compose"  style= "border-radius:70%; background:red"></span>
				<span class="mui-tab-label">订单</span>
			</a>
			<a class="mui-tab-item " href="#my" id="myInfoMenu">
				<span class="mui-icon mui-icon-contact"></span>
				<span class="mui-tab-label">我的</span>
			</a>
		</nav>
		<div class="mui-content">
			<!--index页面-->
			<div id="index" class="mui-control-content">
				<div style="position:relative!important;" id="slider" class="mui-slider">
					<div class="mui-slider-group mui-slider-loop" id="bannerPic" >
                        <!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
                        <div class="mui-slider-item mui-slider-item-duplicate">
                            <a href="#">
                                <img src="img/banner4.png">
                            </a>
                        </div>
                        <!-- 第一张 -->
                        <div class="mui-slider-item mui-active">
                            <a href="#">
                                <img src="img/banner1.png">
                            </a>
                        </div>
                        <!-- 第二张 -->
                        <div class="mui-slider-item">
                            <a href="#">
                                <img src="img/banner2.png">
                            </a>
                        </div>
                        <!-- 第三张 -->
                        <div class="mui-slider-item">
                            <a href="#">
                                <img src="img/banner3.png">
                            </a>
                        </div>
                        <!-- 第四张 -->
                        <div class="mui-slider-item">
                            <a href="#">
                                <img src="img/banner4.png">
                            </a>
                        </div>
                        <!-- 额外增加的一个节点(循环轮播：最后一个节点是第一张轮播) -->
                        <div class="mui-slider-item mui-slider-item-duplicate">
                            <a href="#">
                                <img src="img/banner1.png">
                            </a>
                        </div>
					</div>
					<div class="mui-slider-indicator" id="bannerPicPoint">
                        <div class="mui-indicator mui-active"></div>
                        <div class="mui-indicator"></div>
                        <div class="mui-indicator"></div>
                        <div class="mui-indicator"></div>
					</div>
				</div>
				<!--4大服务类型-->
				<ul style="margin-top: 0;" class="mui-table-view mui-grid-view">
					<li class="mui-table-view-cell mui-media mui-col-xs-3">
						<a id="goWx" href="Map.html">
							<img style="width:60%" src="img/serverType/wx.png" />
							<div class="mui-media-body">维修</div>
						</a>
					</li>
					<li class="mui-table-view-cell mui-media mui-col-xs-3">
						<a id="goBy" href="javascript:void(0);">
							<img style="width:60%" src="img/serverType/by.png" />
							<div class="mui-media-body">保养</div>
						</a>
					</li>
					<li class="mui-table-view-cell mui-media mui-col-xs-3">
						<a id="goYj" href="javascript:void(0);">
							<img style="width:60%" src="img/serverType/yj.png" />
							<div class="mui-media-body">移机</div>
						</a>
					</li>
                    <li class="mui-table-view-cell mui-media mui-col-xs-3">
                        <a id="goAz" href="javascript:void(0);">
                            <img style="width:60%" src="img/serverType/az.png" />
                            <div class="mui-media-body">安装</div>
                        </a>
                    </li>
				</ul>
				<div class="content mt">
					<img src="img/coming.png">
				</div>
				<!--首页快捷服务-->
				<div class="header">
					<h3>保养服务</h3></div>
				<div class="content">
					<div class="box">
						<div id="baoyang4"  class="item item-50 br1 box box-columns box-align-left pl-20">
							<h4 style="padding-bottom: 15px;">全家套餐</h4>
							<img style="width: 42px" src="img/product/ranqizhao.png" />
							<h5 style="padding-top: 10px;">套餐价：￥900&nbsp;<del>原价：￥1035</del></h5>
						</div>
						<div class="item item-50 box box-columns">
							<div  id="baoyang2" class="box box-align-center box-justify-left bb1 ">
								<img style="width: 42px" src="img/product/zhongyangkongtiao.png" />
								<div style="display: inline-block;" class="box box-columns box-justify-left ">
									<h4>柜式空调保养</h4>
									<h5>出风无异味</h5>
								</div>
							</div>
							<div id="baoyang3" class="box box-align-center box-justify-left">
								<img style="width: 42px;" src="img/product/xiyouyanji.png" />
								<div style="display: inline-block;" class="box box-columns box-justify-left">
									<h4>油烟机清洗</h4>
									<h5>去除污渍油渍</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="content">
					<div class="box">
						<div id="baoyang1"  class="item item-50 br1 box box-align-center box-justify-left">
							<img style="width: 42px;" src="img/product/bingxiang.png" />
							<div style="display: inline-block;" class="box box-columns box-justify-left">
								<h4>单门冰箱保养</h4>
								<h5>去除冰箱异味</h5>
							</div>
						</div>
						<div  id="baoyang5" class="item item-50 box box-align-center box-justify-left">
							<img style="width: 42px;" src="img/product/xiyiji.png" />
							<div style="display: inline-block;" class="box box-columns box-justify-left">
								<h4>滚筒保养</h4>
								<h5>滚筒洗衣机</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="header">
					<h3>维修服务</h3></div>
				<div class="content">
					<div class="box">
						<div  id="weixiu1"  class="item item-33 br1 box box-columns box-align-center">
							<img style="width: 42px" src="img/product/kongtiao.png" />
							<h4 style="padding-top: 10px;">空调</h4>
						</div>
						<div   class="item item-33 br1 box box-columns">
							<div id="weixiu2" class="box box-align-center box-justify-left bb1">
								<img style="width: 42px" src="img/product/bingxiang.png" />
								<div class="box box-columns box-justify-left">
									<h4>冰箱</h4>
								</div>
							</div>
							<div id="weixiu3" id="cd" class="box box-align-center box-justify-left">
								<img style="width: 42px" src="img/product/dianshi.png" />
								<div class="box box-columns box-justify-left">
									<h4>电视</h4>
								</div>
							</div>
						</div>
						<div class="item item-33 br1 box box-columns">
							<div id="weixiu4" class="box box-align-center box-justify-left bb1">
								<img style="width: 42px" src="img/product/xiyouyanji.png" />
								<div class="box box-columns box-justify-left">
									<h4>油烟机</h4>
								</div>
							</div>
							<div id="weixiu5" class="box box-align-center box-justify-left">
								<img style="width: 42px" src="img/product/xiyiji.png" />
								<div class="box box-columns box-justify-left">
									<h4>洗衣机</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div style="width: 100%;height:50px"></div>
			</div>
			<!--分类页面-->
			<div id="category" class="mui-control-content">
                <div id="oneProd">
                    <div class="header">
                        <h3>服务产品</h3></div>
                    <div class="content" id>
                        <div class="box">
                            <div dalei="DJD" class="item item-25 bb1 br1"><span class="bingxiang"></span>
                                <p>冰箱/冷柜</p>
                            </div>
                            <div dalei="DJD"  class="item item-25 bb1 br1"><span class="xiyiji"></span>
                                <p>洗衣机</p>
                            </div>
                            <div dalei="DJD"  class="item item-25 bb1 br1"><span class="kongtiao"></span>
                                <p>空调</p>
                            </div>
                            <div dalei="DJD"  class="item item-25 bb1"><span class="caidian"></span>
                                <p>彩电</p>
                            </div>
                        </div>
                        <div class="box">
                            <div  dalei="CHW" class="item item-25 br1"><span class="reshuiqi"></span>
                                <p>热水器<p>
                            </div>
                            <div  dalei="CHW" class="item item-25 br1"><span class="chufangjiadian"></span>
                                <p>厨房家电</p>
                            </div>
                            <div dalei="SHH"  class="item item-25 br1"><span class="shenghuojiadian"></span>
                                <p>生活家电</p>
                            </div>
                            <div  dalei="QT" class="item item-25"><span class="qita"></span>
                                <p>其他</p>
                            </div>
                        </div>
                    </div>
                </div>
                 <div id="serviceTypeX" style="display: none">
                    <div class="header">
                        <h3>服务类型</h3></div>
                    <div class="content" >
                        <div class="box">
                            <div  serviceTypeFL="T01" class="item item-25 br1"><span class="weixiu"></span>
                                <p>维修</p>
                            </div>
                            <div  serviceTypeFL="T15"  class="item item-25 br1"><span class="baoyang"></span>
                                <p>保养</p>
                            </div>
                            <div  serviceTypeFL="T12"  class="item item-25"><span class="yiji"></span>
                                <p>移机</p>
                            </div>
                            <div   serviceTypeFL="T02" class="item item-25 br1"><span class="anzhuang"></span>
                                <p>安装</p>
                            </div>
                        </div>
                    </div>
                </div>
				<!--<div class="btn-content">-->
					<!--<button style="width:90%;height:100%;font-size:18px;display: none;" type="button" class="mui-btn mui-btn-primary">立即下单</button>-->
				<!--</div>-->
			</div>
			<!--订单页面-->
			<div id="order" class="mui-control-content">
				<div class="mui-content">
					<div class="mui-slider mui-fullscreen">
						<div id="sliderSegmentedControl" style="padding-top: 0px; " class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
							<div style="background: #FFF;" class="mui-scroll">
								<a class="mui-control-item mui-active" href="#order1">未完成</a>
								<a class="mui-control-item" href="#order2">已完成</a>
								<a class="mui-control-item" href="#order3">未评论</a>
								<a class="mui-control-item" href="#order4">全部</a>
							</div>
						</div>
						<div class="mui-slider-group">
							<div id="order1" class="mui-slider-item mui-control-content mui-active">
								<div class="mui-scroll-wrapper">
									<div class="mui-scroll">
										<!--没订单的情况-->
										<div id="NOWWC" style="height:600px;display: none;" class="box box-columns box-align-center">
											<img />
											<p>没有任何订单信息</p>
                                            <a goCate href="#orderType" type="button" class="mui-btn">我要下单</a>
										</div>
										<!--数据列表-->
										<div name="orderData" id="WWC">
											<ul class="mui-table-view">
        <li class="mui-table-view-cell">
            <div style="justify-content:space-between" class="box">
                <div>
                    
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/az.png" />
                   
                </div>
                <div>
                    <p class='mui-ellipsis'>
                       
                        下单完成
                        
                    </p>
                </div>
            </div>
        </li>
        <li class="mui-table-view-cell">
            <a class="choose"  test="goDetail" orderId="{{orderCode}}">
                <div class="mui-media-body">
                    <div style="font-size:0.32rem;margin: 0.2rem auto;" class="box box-align-left">
                        <div style="text-align: left;" class="item">冰箱</div>
                        <div style="flex: 1.5;text-align: left;" class="item"></div>
                    </div>
                    <p class='mui-ellipsis'>工单编号:R199283901021</p>
                    <p class='mui-ellipsis'>预约时间:2015-08-01</p>
                    <p class='mui-ellipsis'>地址:北京五道口101座</p>
                </div>
            </a>
        </li>
        <li class="mui-table-view-cell font-gray">
            <div style="justify-content:space-between" class="box">
                <div class="mui-left visible-hidden">
                    实付款:&nbsp;
                    <p style="display:inline-block;color: red;">100</p>
                </div>
                <div class="operation">
                  
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                   
                    <button test="goUrge" orderId="{{orderCode}}"  type="button" class="mui-btn mui-btn-primary">催单</button>
                    
                </div>
            </div>
        </li>
    </ul>
										</div>
									</div>
								</div>
							</div>
							<div id="order2" class="mui-slider-item mui-control-content">
								<div class="mui-scroll-wrapper">
									<div class="mui-scroll">
										<!--没订单的情况-->
										<div id="NOYWC" style="height:600px;display:none" class="box box-columns box-align-center">
											<img />
											<p>没有任何订单信息</p>
                                            <a goCate href="#orderType"  type="button" class="mui-btn">我要下单</a>
										</div>
										<!--数据列表-->
										<div name="orderData" id="YWC">
										</div>
									</div>
								</div>
							</div>
							<div id="order3" class="mui-slider-item mui-control-content">
								<div class="mui-scroll-wrapper">
									<div class="mui-scroll">
										<!--没订单的情况-->
										<div id="NOWPL" style="height:600px;display: none" class="box box-columns box-align-center">
											<img />
											<p>没有任何订单信息</p>
                                            <a goCate href="#orderType" type="button" class="mui-btn">我要下单</a>
										</div>
										<!--数据列表-->
										<div name="orderData"  id="WPL">
										</div>
									</div>
								</div>
							</div>
							<div id="order4" class="mui-slider-item mui-control-content">
								<div class="mui-scroll-wrapper">
									<div class="mui-scroll">
										<!--没订单的情况-->
										<div id="NOQB" style="height:600px;display: none;" class="box box-columns box-align-center">
											<img />
											<p>没有任何订单信息</p>
											<a goCate href="#orderType" type="button" class="mui-btn">我要下单</a>
										</div>
										<!--数据列表-->
                                        <div name="orderData" id="QB">
                                        </div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--个人中心页面-->
			<div id="my" class="mui-control-content">

				<!--个人中心页面主结构开始-->
				<div id="myPage" class="mui-views ">
					<div class="mui-view ">
						<div class="mui-navbar">
						</div>
						<div style="top: 0;" class="mui-pages">
						</div>
					</div>
				</div>
				<!--页面主结构结束-->
				<!--单页面开始-->
				<div id="myPageContent" class="mui-page">
					<!--页面标题栏开始-->
					<div class="mui-navbar-inner mui-bar">
						<h1 class="mui-center mui-title">个人中心</h1>
					</div>
					<!--页面标题栏结束-->
					<!--页面主内容区开始-->
					<div class="mui-page-content">
								<div class="mui-table-view mui-table-view-chevron">
									<div id="goLogin" class="my-portrait-div">
										<div class="my-portrait"></div>
										<% if(session!=null){%>
										<span >${yonghu.name }</span>
										<% }else{%>
										<span onclick="loginn()">点击登录</span>
										<% }%>
										<script>
										
										</script>
									</div>
								</div>
								<div style="display: none;" class="mui-table-view mui-table-view-chevron">
									<div class="my-portrait-div">
										<div class="my-portrait"></div>
										<span>${yonghu.name }</span>
									</div>
								</div>
								<ul class="mui-table-view mui-table-view-chevron">
									<li class="mui-table-view-cell">
										<a id="goAddress" href="javascript:void(0);" class="mui-navigate-right">常用地址</a>
									</li>
									<li class="mui-table-view-cell">
										<a href="#myInfo"  id="goMyInfo" class="mui-navigate-right">个人资料</a>
									</li>
								</ul>
								<ul class="mui-table-view mui-table-view-chevron">
									<li class="mui-table-view-cell">
										<a href="#pro" id="myProList" class="mui-navigate-right">产品列表</a>
									</li>
									<li class="mui-table-view-cell">
										<a href="#message" id="myMessageList" class="mui-navigate-right">我的消息</a>
									</li>
									<li class="mui-table-view-cell">
										<a href="#changePw" class="mui-navigate-right">密码修改</a>
									</li>
								</ul>
								<ul class="mui-table-view mui-table-view-chevron">
									<li class="mui-table-view-cell">
										<a href="#aboutMe" class="mui-navigate-right">关于我们</a>
									</li>
									<li class="mui-table-view-cell">
										<a href="#gdgn" class="mui-navigate-right">更多功能</a>
									</li>
								</ul>
								<div style="width: 100%;height:80px"></div>
					</div>
					<!--页面主内容区结束-->
				</div>
				<!--单页面结束-->
				<!--个人资料-->
				<div id="myInfo" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a id="xiugaitouxiang" class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">个人资料</h1>
					</div>
					<div class="mui-page-content">
						<div class="mui-scroll-wrapper">
							<div class="mui-scroll">
								<ul class="mui-table-view">
									<li class="mui-table-view-cell">
										<a>手机号<span class="mui-pull-right" id="userInfo-mobile"></span></a>
									</li>
									<li class="mui-table-view-cell">
										<a>用户名<span class="mui-pull-right" id="userInfo-userName"></span></a>
									</li>
								</ul>
								<ul class="mui-table-view" >
									<li class="mui-table-view-cell">
										<a href="#name" class="mui-navigate-right">真实姓名<span id="userInfo-realName" class="mui-pull-right"></span></a>
									</li>
									<li class="mui-table-view-cell">
										<a href="#sex" class="mui-navigate-right">性别<span id="userInfo-sex" class="mui-pull-right"></span></a>
                                        <span id="userInfoSexId" style="display: none" class="mui-pull-right"></span>
									</li>
									<li class="mui-table-view-cell">
										<a id="birthday" class="mui-navigate-right">${yonghu.birthday }<span id="userInfo-birthday" data-options='{"type":"date","beginYear":1930,"endYear":2020}' class="mui-pull-right"></span></a>
									</li>
									<li class="mui-table-view-cell">
										<a href="#statement" class="mui-navigate-right">个人说明<span id="userInfo-reserve1" class="mui-pull-right">这家伙很懒,说明都没有留下.</span></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--修改性别-->
				<div id="sex" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">修改性别</h1>
					</div>
					<div class="mui-page-content">
						<div class="mui-scroll-wrapper">
							<div class="mui-scroll">
								<ul id="chooseSex" class="mui-table-view">
									<li value="1" style="padding:11px 30px;" class="mui-table-view-cell">男<span style="float: right;" class="mui-icon mui-icon-checkmarkempty mui-active"></span></li>
									<li value="2" style="padding:11px 30px;" class="mui-table-view-cell">女<span style="float: right;display: none;" class="mui-icon mui-icon-checkmarkempty mui-active"></span></li>
									<li value="0" style="padding:11px 30px;" class="mui-table-view-cell">保密<span style="float: right;display: none;" class="mui-icon mui-icon-checkmarkempty mui-active"></span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--修改姓名-->
				<div id="name" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">修改姓名</h1>
						<a id="saveName" style="color: #5D5D5D;" class="mui-btn-blue mui-btn-link mui-pull-right">确定</a>
					</div>
					<div class="mui-page-content">
						<div class="mui-scroll-wrapper">
							<div class="mui-scroll">
								<form class="mui-input-group">
									<div class="mui-input-row">
										<input id="editName" type="text" class="mui-input-clear" placeholder="请输入真实姓名"><span class="mui-icon mui-icon-clear mui-hidden"></span>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!--修改个人说明-->
				<div id="statement" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">修改个人说明</h1>
						<a id="saveStatement" style="color: #5D5D5D;" class="mui-btn-blue mui-btn-link mui-pull-right">确定</a>
					</div>
					<div class="mui-page-content">
						<div class="mui-scroll-wrapper">
							<div class="mui-scroll">
								<form class="mui-input-group">
									<div class="mui-input-row" style="margin: 10px 5px;">
										<textarea id="edtiStatement" rows="3" placeholder="请输入个人说明"></textarea>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!--产品列表页面-->
				<div id="pro" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">产品列表</h1>
					</div>
					<div class="mui-page-content">
						<div class="mui-scroll-wrapper">
							<div id="proList" class="mui-scroll">
								<!--没订单的情况-->
								<div id="noProduct" style="height:600px;display: none;" class="box box-columns box-align-center">
									<img />
									<p>没有任何产品信息</p>
								</div>
								<!--数据列表-->
								<div name="orderData" id="proListData">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="orderType" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">选择服务类型</h1>
					</div>
					<div class="mui-page-content">
						<div class="mui-scroll-wrapper">
							<div class="mui-scroll">
								<ul style="margin-top: 0;" class="mui-table-view mui-grid-view">

									<li class="mui-table-view-cell mui-media mui-col-xs-3">
										<a id="goWxS" href="javascript:void(0);">
											<img style="width:60%" src="img/serverType/wx.png">
											<div class="mui-media-body">维修</div>
										</a>
									</li>
									<li class="mui-table-view-cell mui-media mui-col-xs-3">
										<a id="goByS" href="javascript:void(0);">
											<img style="width:60%" src="img/serverType/by.png">
											<div class="mui-media-body">保养</div>
										</a>
									</li>
									<li class="mui-table-view-cell mui-media mui-col-xs-3">
										<a id="goYjS" href="javascript:void(0);">
											<img style="width:60%" src="img/serverType/yj.png">
											<div class="mui-media-body">移机</div>
										</a>
									</li>
                                    <li class="mui-table-view-cell mui-media mui-col-xs-3">
                                        <a id="goAzS" href="javascript:void(0);">
                                            <img style="width:60%" src="img/serverType/az.png">
                                            <div class="mui-media-body">安装</div>
                                        </a>
                                    </li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--消息列表页面-->
				<div id="message" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">消息列表</h1>
					</div>
					<div class="mui-page-content">
						<div class="mui-scroll-wrapper">
							<div  class="mui-scroll">
								<!--数据列表-->
								<div name="orderData" id="messageList">
									<!--我的消息列表模板-->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--消息详情页面-->
				<div id="messageDetail" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">消息详情</h1>
					</div>
					<div class="mui-page-content">
						<div class="mui-scroll-wrapper">
							<div class="mui-scroll">
								<section class="msg-detail">
									<div class="msg-title" id="msg-title">
									</div>
									<div class="msg-content">
										<section style="text-indent:2em;" id="msg-content"></section><br>
									</div>
								</section>
							</div>
						</div>
					</div>
				</div>
				<!--密码修改-->
				<div id="changePw" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">密码修改</h1>
					</div>
					<div class="mui-page-content">
						<div class="mui-content-padded">
							<div class="mui-input-row">
								<label>旧密码<span style="color: red;font-weight:  bold">*</span></label>
								<input id="oldp" type="password" class="mui-input-password mui-input-clear" placeholder="6-18位的数字、字母组合">
								<span class="mui-icon mui-icon-eye"></span>
							</div>
							<div class="mui-input-row">
								<label>新密码<span style="color: red;font-weight:  bold">*</span></label>
								<input  id="newp"  type="password" class="mui-input-password mui-input-clear" placeholder="6-18位的数字、字母组合">
								<span class="mui-icon mui-icon-eye"></span>
							</div>
							<div class="mui-input-row">
								<label>确认密码<span style="color: red;font-weight:  bold">*</span></label>
								<input type="password" id="newp2"  class="mui-input-password mui-input-clear" placeholder="确认密码">
								<span class="mui-icon mui-icon-eye"></span>
							</div>
						</div>
						<div class="mui-content-padded">
							<a href="#wpass3" id="passwordUpdate"  class="mui-btn mui-btn-block mui-btn-primary ">完成</a>
						 <script type="text/javascript">
               /*   进行xiugai传值 */
                 $("#passwordUpdate").click(function(){
                	 alert("aaa");
                 	var newp = $("#newp").val();
                /*  	var password1 = $("#password").val();
                 	var code1 = $("#code").val(); */
                 	$.ajax({
                 		type:"post",
                 		url:"user/updatePass",
                 		dataType:"json",
                 		data:{password:newp},
                 		async:true,
                 		success:function(data){
                 			if(data==1){
                 				alert("success")
                 			}
                 		}
                     });
                 })
			</script>
						</div>
					</div>
				</div>
				<!--关于我们-->
				<div id="aboutMe" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">关于我们</h1>
					</div>
					<div class="mui-page-content">
						<div style="background: #efeff4;height:30%" class="my-portrait-div">
							<div  class="my-portrait"></div>
							<span style="color: #000;">版本号   0.1.1</span>
						</div>
						<ul style="margin-top: 40px;" class="mui-table-view">
							<li class="mui-table-view-cell">
								<p class='mui-ellipsis'>官方电话：400-000-0000</p>
							</li>
							<li class="mui-table-view-cell">
								<p class='mui-ellipsis'>微信公众号：公众号</p>
							</li>
							<li class="mui-table-view-cell">
								<p class='mui-ellipsis'>售后服务官网：www.good.com</p>
							</li>
							<li class="mui-table-view-cell">
								<p class='mui-ellipsis'>售后服务M端地址：www.good.com</p>
							</li>
						</ul>
						<div style="position: absolute;bottom: 0;left: 0;right: 0;text-align: center;">
							<p class='mui-ellipsis'>Copyright ©2016 AAAAAAAAAAAAA</p>
						</div>
					</div>
				</div>
				<!--更多功能-->
				<div id="gdgn" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">更多功能</h1>
					</div>
					<div class="mui-page-content">
						<div class="mui-scroll-wrapper">
							<div class="mui-scroll">
								<ul style="margin-top: 0.2rem;" class="mui-table-view mui-table-view-chevron">
									<li class="mui-table-view-cell">
										<a href="tel:400-840-8888" class="mui-navigate-right">联系客服：400-840-8888</a>
									</li>
									<li class="mui-table-view-cell">
										<a href="#fwlc" class="mui-navigate-right">服务流程</a>
									</li>
								</ul>
								<ul class="mui-table-view mui-table-view-chevron">
									<li class="mui-table-view-cell">
										<a id="goCjwt" class="mui-navigate-right">常见问题</a>
									</li>
									<li class="mui-table-view-cell">
										<a id="goSyjq" class="mui-navigate-right">使用技巧</a>
									</li>
								</ul>
								<div class="mui-content-padded">
									<a id="loginOut" class="mui-btn mui-btn-block mui-btn-danger ">退出</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--服务流程-->
				<div id="fwlc" class="mui-page mui-fullscreen">
					<div class="mui-navbar-inner mui-bar mui-bar-nav">
						<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
						<h1 class="mui-center mui-title">服务流程</h1>
					</div>
					<div class="mui-page-content">
						<div class="mui-scroll-wrapper">
							<div class="mui-scroll">
								<div style="background: #FFF;">
									<img style="width: 100%;" src="img/fwlc.png" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="lib/mui.min.js"></script>
		<script src="lib/mui.view.js"></script>
		<script src="lib/mui.pullToRefresh.js"></script>
		<script src="lib/mui.picker.min.js"></script>
		<script src="lib/zepto.min.js"></script>
        <script src="../lib/handlebars.js"></script>
        <script src="lib/layer.js"></script>
		<script src="js/main.js"></script>
	</body>

</html>


<script id="template1" type="text/x-handlebars-template">
    <ul class="mui-table-view">
        <li class="mui-table-view-cell">
            <div style="justify-content:space-between" class="box">
                <div>
                    {{#ifCond serviceType "安装"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/az.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "维修"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/wx.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "移机"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/yj.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "保养"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/by.png" />
                    {{/ifCond}}
                    <span>{{serviceType}}</span>
                </div>
                <div>
                    <p class='mui-ellipsis'>
                        {{#ifCond orderStatus "11"}}
                        下单完成
                        {{/ifCond}}
                        {{#ifCond orderStatus "0"}}
                        下单完成
                        {{/ifCond}}
                        {{#ifCond orderStatus "1"}}
                        接单完成
                        {{/ifCond}}
                        {{#ifCond orderStatus "2"}}
                        上门服务
                        {{/ifCond}}
                        {{#ifCond orderStatus "3"}}
                        收费完成
                        {{/ifCond}}
                        {{#ifCond orderStatus "5"}}
                        评价完成
                        {{/ifCond}}
                        {{#ifCond orderStatus "6"}}
                        已取消
                        {{/ifCond}}
                        {{#ifCond orderStatus "4"}}
                        强制结单
                        {{/ifCond}}
                    </p>
                </div>
            </div>
        </li>
        <li class="mui-table-view-cell">
            <a class="choose"  test="goDetail" orderId="{{orderCode}}">
                <div class="mui-media-body">
                    <div style="font-size:0.32rem;margin: 0.2rem auto;" class="box box-align-left">
                        <div style="text-align: left;" class="item">{{twoProductName}}</div>
                        <div style="flex: 1.5;text-align: left;" class="item"></div>
                    </div>
                    <p class='mui-ellipsis'>工单编号:{{woId}}</p>
                    <p class='mui-ellipsis'>预约时间:{{reServiceTime}}</p>
                    <p class='mui-ellipsis'>地址:{{address}}</p>
                </div>
            </a>
        </li>
        <li class="mui-table-view-cell font-gray">
            <div style="justify-content:space-between" class="box">
                <div class="mui-left visible-hidden">
                    实付款:&nbsp;
                    <p style="display:inline-block;color: red;">100</p>
                </div>
                <div class="operation">
                    {{#ifCond reserve5 "1"}}
                    <button test="goPay" woId="{{woId}}" serviceType="{{serviceType}}" rowId="{{rowId}}" type="button" class="mui-btn mui-btn-primary">支付</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "11"}}
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "0"}}
                    <button test="goUrge" orderId="{{orderCode}}"  type="button" class="mui-btn mui-btn-primary">催单</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "1"}}
                    <button test="goUrge" orderId="{{orderCode}}"  type="button" class="mui-btn mui-btn-primary">催单</button>
                    <button test="goBEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">评价</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "2"}}
                    <button test="goBEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">评价</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "3"}}
                    <button test="goEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">服务评价</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "5"}}
                    <button test="goTEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">追加评价</button>
                    {{/ifCond}}
                    {{#ifCond reserve5 "2"}}
                    <span style="text-align: center;font-size:15px;color:#007aff;vertical-align: -webkit-baseline-middle;margin-left: 15px;">已支付</span>
                    {{/ifCond}}
                </div>
            </div>
        </li>
    </ul>
</script>

<script id="template2" type="text/x-handlebars-template">
{{#each this}}
<ul class="mui-table-view">
    <li class="mui-table-view-cell">
        <div style="justify-content:space-between" class="box">
            <div>
                <span>{{productBrand}}-{{productType}}</span>
            </div>
        </div>
    </li>
    <li class="mui-table-view-cell">
        <a class="choose">
            <div class="mui-media-body">
                <div style="font-size:0.32rem;margin: 0.2rem auto;" class="box box-align-left">
                    <p style="flex:1;color:#000" class='mui-ellipsis'>型号</p>
                    <p style="flex:2.5;color:#000" class='mui-ellipsis'>{{productModal}}</p>
                </div>
                <div style="font-size:0.32rem;margin: 0.2rem auto;" class="box box-align-left">
                    <p style="flex:1;color:#000" class='mui-ellipsis'>购买时间</p>
                    <p style="flex:2.5;color:#000" class='mui-ellipsis'>{{buyDate}}</p>
                </div>
                <div style="font-size:0.32rem;margin: 0.2rem auto;" class="box box-align-left">
                    <p style="flex:1;color:#000" class='mui-ellipsis'>原厂三包期</p>
                    <p style="flex:2.5;color:#000" class='mui-ellipsis'>{{warrantyPeriodDate}}</p>
                </div>
            </div>
        </a>
    </li>
    <li class="mui-table-view-cell font-gray">
        <div style="justify-content:flex-end" class="box">
            <a href="#orderType" class="mui-btn mui-btn-primary">服务下单</a>
        </div>
    </li>
</ul>
{{/each}}
</script>

<script id="template3" type="text/x-handlebars-template">
{{#each this}}
<ul class="mui-table-view">
    <li class="mui-table-view-cell">
        <div style="justify-content:space-between" class="box">
            <div>
                <span>{{messageTitle}}</span>
            </div>
            <div>
                <p class='mui-ellipsis'>{{sendTime}}</p>
            </div>
        </div>
    </li>
    <li class="mui-table-view-cell">
        <a class="choose">
            <div class="mui-media-body">
                <p style="height: 40px;line-height: 20px;white-space: normal;" class='mui-ellipsis'>{{sendComment}}</p>
            </div>
        </a>
    </li>
    <li class="mui-table-view-cell font-gray">
        <div style="justify-content:flex-end" class="box">
            <a  id="messageDetailB" messageId="{{rowId}}"  href="#messageDetail" class="mui-btn mui-btn-primary">查看详情</a>
        </div>
    </li>
</ul>
{{/each}}
</script>


<!--未完成订单模板-->
<script id="order-WWC" type="text/x-handlebars-template">
{{#each this}}
    
{{/each}}
</script>
<!--已评论订单模板-->
<script id="order-YWC" type="text/x-handlebars-template">
    {{#each this}}
    <ul class="mui-table-view">
        <li class="mui-table-view-cell">
            <div style="justify-content:space-between" class="box">
                <div>
                    {{#ifCond serviceType "安装"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/az.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "维修"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/wx.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "移机"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/yj.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "保养"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/by.png" />
                    {{/ifCond}}
                    <span>{{serviceType}}</span>
                </div>
                <div>
                    <p class='mui-ellipsis'>
                        {{#ifCond orderStatus "6"}}
                        已取消
                        {{/ifCond}}
                        {{#ifCond reserve5 "1"}}
                        待支付
                        {{/ifCond}}
                        {{#ifCond reserve5 "2"}}
                        已支付
                        {{/ifCond}}
                        {{#ifCond reserve5 "3"}}
                        已支付,金额有误
                        {{/ifCond}}
                        {{#ifCond orderStatus "0"}}
                        下单完成
                        {{/ifCond}}
                        {{#ifCond orderStatus "1"}}
                        接单完成
                        {{/ifCond}}
                        {{#ifCond orderStatus "2"}}
                        上门服务
                        {{/ifCond}}
                        {{#ifCond orderStatus "3"}}
                        收费完成
                        {{/ifCond}}
                        {{#ifCond orderStatus "5"}}
                        评价完成
                        {{/ifCond}}
                    </p>
                </div>
            </div>
        </li>
        <li class="mui-table-view-cell">
            <a class="choose"  test="goDetail" orderId="{{orderCode}}">
                <div class="mui-media-body">
                    <div style="font-size:0.32rem;margin: 0.2rem auto;" class="box box-align-left">
                        <div style="text-align: left;" class="item">{{twoProductName}}</div>
                        <div style="flex: 1.5;text-align: left;" class="item"></div>
                    </div>
                    <p class='mui-ellipsis'>工单编号:{{woId}}</p>
                    <p class='mui-ellipsis'>预约时间:{{reServiceTime}}</p>
                    <p class='mui-ellipsis'>地址:{{address}}</p>
                </div>
            </a>
        </li>
        <li class="mui-table-view-cell font-gray">
            <div style="justify-content:space-between" class="box">
                <div class="mui-left visible-hidden">
                    实付款:&nbsp;
                    <p style="display:inline-block;color: red;">100</p>
                </div>
                <div class="operation">
                    {{#ifCond reserve5 "1"}}
                    <button test="goPay" woId="{{woId}}" serviceType="{{serviceType}}" rowId="{{rowId}}" type="button" class="mui-btn mui-btn-primary">支付</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "11"}}
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "0"}}
                    <button test="goUrge" orderId="{{orderCode}}"  type="button" class="mui-btn mui-btn-primary">催单</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "1"}}
                    <button test="goUrge" orderId="{{orderCode}}"  type="button" class="mui-btn mui-btn-primary">催单</button>
                    <button test="goBEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">评价</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "2"}}
                    <button test="goBEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">评价</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "3"}}
                    <button test="goEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">服务评价</button>
                    {{#ifCond serviceType "保养"}}
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{/ifCond}}
                    {{#ifCond orderStatus "5"}}
                    <button test="goTEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">追加评价</button>
                    {{/ifCond}}
                </div>
            </div>
        </li>
    </ul>
    {{/each}}
</script>
<!--未评论订单模板-->
<script id="order-WPL" type="text/x-handlebars-template">
    {{#each this}}
    <ul class="mui-table-view">
        <li class="mui-table-view-cell">
            <div style="justify-content:space-between" class="box">
                <div>
                    {{#ifCond serviceType "安装"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/az.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "维修"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/wx.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "移机"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/yj.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "保养"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/by.png" />
                    {{/ifCond}}
                    <span>{{serviceType}}</span>
                </div>
                <div>
                    <p class='mui-ellipsis'>
                        {{#ifCond orderStatus "6"}}
                        已取消
                        {{/ifCond}}
                        {{#ifCond reserve5 "1"}}
                        待支付
                        {{/ifCond}}
                        {{#ifCond reserve5 "2"}}
                        已支付
                        {{/ifCond}}
                        {{#ifCond reserve5 "3"}}
                        已支付,金额有误
                        {{/ifCond}}
                        {{#ifCond orderStatus "0"}}
                        下单完成
                        {{/ifCond}}
                        {{#ifCond orderStatus "1"}}
                        接单完成
                        {{/ifCond}}
                        {{#ifCond orderStatus "2"}}
                        上门服务
                        {{/ifCond}}
                        {{#ifCond orderStatus "3"}}
                        收费完成
                        {{/ifCond}}
                        {{#ifCond orderStatus "5"}}
                        评价完成
                        {{/ifCond}}
                    </p>
                </div>
            </div>
        </li>
        <li class="mui-table-view-cell">
            <a class="choose"  test="goDetail" orderId="{{orderCode}}">
                <div class="mui-media-body">
                    <div style="font-size:0.32rem;margin: 0.2rem auto;" class="box box-align-left">
                        <div style="text-align: left;" class="item">{{twoProductName}}</div>
                        <div style="flex: 1.5;text-align: left;" class="item"></div>
                    </div>
                    <p class='mui-ellipsis'>工单编号:{{woId}}</p>
                    <p class='mui-ellipsis'>预约时间:{{reServiceTime}}</p>
                    <p class='mui-ellipsis'>地址:{{address}}</p>
                </div>
            </a>
        </li>
        <li class="mui-table-view-cell font-gray">
            <div style="justify-content:space-between" class="box">
                <div class="mui-left visible-hidden">
                    实付款:&nbsp;
                    <p style="display:inline-block;color: red;">100</p>
                </div>
                <div class="operation">
                    {{#ifCond reserve5 "1"}}
                    <button test="goPay" woId="{{woId}}" serviceType="{{serviceType}}" rowId="{{rowId}}" type="button" class="mui-btn mui-btn-primary">支付</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "11"}}
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "0"}}
                    <button test="goUrge" orderId="{{orderCode}}"  type="button" class="mui-btn mui-btn-primary">催单</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "1"}}
                    <button test="goUrge" orderId="{{orderCode}}"  type="button" class="mui-btn mui-btn-primary">催单</button>
                    <button test="goBEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">评价</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "2"}}
                    <button test="goBEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">评价</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "3"}}
                    <button test="goEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">服务评价</button>
                    {{#ifCond serviceType "保养"}}
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{/ifCond}}
                    {{#ifCond orderStatus "5"}}
                    <button test="goTEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">追加评价</button>
                    {{/ifCond}}
                </div>
            </div>
        </li>
    </ul>
    {{/each}}
</script>

<!--全部订单模板-->
<script id="order-QB" type="text/x-handlebars-template">
    {{#each this}}
    <ul class="mui-table-view">
        <li class="mui-table-view-cell">
            <div style="justify-content:space-between" class="box">
                <div>
                    {{#ifCond serviceType "安装"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/az.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "维修"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/wx.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "移机"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/yj.png" />
                    {{/ifCond}}
                    {{#ifCond serviceType "保养"}}
                    <img style="height:21px;width:auto;margin-top: -5px;" src="img/serverType/by.png" />
                    {{/ifCond}}
                    <span>{{serviceType}}</span>
                </div>
                <div>
                    <p class='mui-ellipsis'>已完成</p>
                </div>
            </div>
        </li>
        <li class="mui-table-view-cell">
            <a class="choose"  test="goDetail" orderId="{{orderCode}}">
                <div class="mui-media-body">
                    <div style="font-size:0.32rem;margin: 0.2rem auto;" class="box box-align-left">
                        <div style="text-align: left;" class="item">{{twoProductName}}</div>
                        <div style="flex: 1.5;text-align: left;" class="item"></div>
                    </div>
                    <p class='mui-ellipsis'>工单编号:{{woId}}</p>
                    <p class='mui-ellipsis'>预约时间:{{reServiceTime}}</p>
                    <p class='mui-ellipsis'>地址:{{address}}</p>
                </div>
            </a>
        </li>
        <li class="mui-table-view-cell font-gray">
            <div style="justify-content:space-between" class="box">
                <div class="mui-left visible-hidden">
                    实付款:&nbsp;
                    <p style="display:inline-block;color: red;">100</p>
                </div>
                <div class="operation">
                    {{#ifCond reserve5 "1"}}
                    <button test="goPay" woId="{{woId}}" serviceType="{{serviceType}}" rowId="{{rowId}}" type="button" class="mui-btn mui-btn-primary">支付</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "11"}}
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "0"}}
                    <button test="goUrge" orderId="{{orderCode}}"  type="button" class="mui-btn mui-btn-primary">催单</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "1"}}
                    <button test="goUrge" orderId="{{orderCode}}"  type="button" class="mui-btn mui-btn-primary">催单</button>
                    <button test="goBEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">评价</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "2"}}
                    <button test="goBEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">评价</button>
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{#ifCond orderStatus "3"}}
                    <button test="goEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">服务评价</button>
                    {{#ifCond serviceType "保养"}}
                    <button test="cancelOrder" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">取消工单</button>
                    {{/ifCond}}
                    {{/ifCond}}
                    {{#ifCond orderStatus "5"}}
                    <button test="goTEvaluate" woId="{{woId}}" type="button" class="mui-btn mui-btn-primary">追加评价</button>
                    {{/ifCond}}
                </div>
            </div>
        </li>
    </ul>
{{/each}}
</script>


<!--banner模板1-->
<script id="banner-pic" type="text/x-handlebars-template">
    <!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
    <div class="mui-slider-item mui-slider-item-duplicate">
        <a href="{{addressUrl}}">
            <img src="{{bannerUrl}}">
        </a>
    </div>
</script>

<!--banner模板2-->
<script id="banner-pic2" type="text/x-handlebars-template">
    <div class="mui-slider-item">
        <a href="{{addressUrl}}">
            <img src="{{bannerUrl}}">
        </a>
    </div>
</script>
<!--banner模板2-->
<script id="banner-pic-active" type="text/x-handlebars-template">
    <div class="mui-slider-item mui-active">
        <a href="{{addressUrl}}">
            <img src="{{bannerUrl}}">
        </a>
    </div>
</script>
<script id="banner-pic3" type="text/x-handlebars-template">
    <!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
    <div class="mui-slider-item mui-slider-item-duplicate">
        <a href="#">
            <img src="img/banner4.png">
        </a>
    </div>
    <!-- 第一张 -->
    <div class="mui-slider-item mui-active">
        <a href="#">
            <img src="img/banner1.png">
        </a>
    </div>
    <!-- 第二张 -->
    <div class="mui-slider-item">
        <a href="#">
            <img src="img/banner2.png">
        </a>
    </div>
    <!-- 第三张 -->
    <div class="mui-slider-item">
        <a href="#">
            <img src="img/banner3.png">
        </a>
    </div>
    <!-- 第四张 -->
    <div class="mui-slider-item">
        <a href="#">
            <img src="img/banner4.png">
        </a>
    </div>
    <!-- 额外增加的一个节点(循环轮播：最后一个节点是第一张轮播) -->
    <div class="mui-slider-item mui-slider-item-duplicate">
        <a href="#">
            <img src="img/banner1.png">
        </a>
    </div>
</script>