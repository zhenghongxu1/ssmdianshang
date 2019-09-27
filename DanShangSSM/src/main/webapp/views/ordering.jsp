<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title></title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<link href="../css/mui.min.css" rel="stylesheet" />
		<link href="../css/mui.page.css" rel="stylesheet" />
		<link href="../css/mui.picker.min.css" rel="stylesheet" />
		<link href="../css/layer.css" rel="stylesheet" />
		<link href="../css/main.css" rel="stylesheet" />

	</head>

	<body class="mui-fullscreen">
		<!--页面主结构开始-->
		<div id="myPage" class="mui-views">
			<div class="mui-view">
				<div class="mui-navbar">
				</div>
				<div class="mui-pages">
				</div>
			</div>
		</div>
		<!--页面主结构结束-->
		<!--单页面开始-->
		<div id="myPageContent" class="mui-page">
			<!--页面标题栏开始-->
			<div class="mui-navbar-inner mui-bar mui-bar-nav">
				<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
				<h1 class="mui-center mui-title">服务下单</h1>
				<a id="goCharge" style="position: absolute;right: 0;-webkit-tap-highlight-color: rgba(0,0,0,0);"  class="mui-btn mui-btn-blue mui-btn-link mui-pull-right">收费标准</a>
				<!--隐藏域开始-->
				<input type="hidden" name="serviceType" >
				<input type="hidden" name="twoProdCode" >
				<!--隐藏域结束-->
			</div>
			<div class="footer-div">
				<div style="visibility: hidden;" class="div-left">上门检测费：<span>¥&nbsp;30</span></div>
				<div class="div-right">
                    <a id="xiadana">
					<div id="xiadan" class="mui-btn mui-btn-primary">
						工单提交
					</div>
                    </a>
				</div>
			</div>
			<!--页面标题栏结束-->
			<!--页面主内容区开始-->
			<div class="mui-page-content">
						<div class="header" >
							<img id="imgCope" style="height: 35px;width:auto;margin-top: -3px;margin-right: 20px;" src="../img/product/bingxiang.png">
							<span id="TwoProName">冰箱</span>
						</div>
						<div class="content">
							<div style="justify-content: flex-start" class="box" id="threeProd">
							</div>
						</div>
						<div class="header" name="gzlx" style="display: none">
							<h3>故障类型</h3>
						</div>
						<div style="padding-bottom: 10px" class="content"name="gzlx" style="display: none">
							<div id="threeProb">

							</div>
						</div>
						<div class="content">
							<form class="mui-input-group">
								<div class="mui-input-row">
									<label>服务内容<span style="color: red;font-weight:  bold">*</span></label>
									<textarea name="serviceContent" id="serviceContent"  class="mui-input-clear" placeholder="请填写服务内容"></textarea>
								</div>
								<div class="mui-input-row">
									<label>服务时间<span style="color: red;font-weight:  bold">*</span></label>
									<input id="serverTime"  name="serviceTime" type="text" class="mui-input-clear" placeholder="请选择服务时间"  data-options='{"type":"minute","customData":{"i":[{"text":"00","value":"00"},{"text":"30","value":"30"}]}}' onfocus="this.blur();">
								</div>
								<div class="mui-input-row">
									<label>品牌</label>
									<input type="text" name="brandNm" id="brandNm" class="mui-input-clear" placeholder="请输入产品品牌">
								</div>
							</form>
						</div>
						<div class="content" id="addressK" >
							<ul class="mui-table-view mui-table-view-chevron">
								<li class="mui-table-view-cell">
									<a id="goAddress" href="#chooseAdd" class="mui-navigate-right">
										<div class="box box-columns box-align-left">
											<div class="item">
												<div class="contacts"><span></span></div>
											</div>
											<div class="item">
												<div class="address"></div>
											</div>
										</div>
									</a>
								</li>
							</ul>
						</div>
						<div class="content" id="addressEdit" >
							<form class="mui-input-group">
								<div class="mui-input-row">
									<label>联系人<span style="color: red;font-weight:  bold">*</span></label>
									<input name="customerName" type="text" class="mui-input-clear" placeholder="请输入您的姓名">
								</div>
								<div class="mui-input-row">
									<label>手机号码<span style="color: red;font-weight:  bold">*</span></label>
									<input name="mobilePhone" type="tel" class="mui-input-clear" placeholder="请输入您的电话号码">
								</div>
								<div class="mui-input-row" style="display: none">
									<label>短信验证码<span style="color: red;font-weight:  bold">*</span></label>
									<label style="float: right;width:40%">
										<div name="getCaptcha"  class="mui-btn mui-btn-outlined mui-btn-primary" >获取验证码</div>
										<div class="mui-btn mui-btn-outlined mui-disabled">60秒后获取</div>
									</label>
									<input style="width: 34%;" id="re-mobileCode"  type="text" class="mui-input-clear pl-15" placeholder="请输入短信验证码">

								</div>
								<div class="mui-input-row">
									<label>省市区<span style="color: red;font-weight:  bold">*</span></label>
									<input   id="address" type="text"  class="mui-input-clear"  onfocus="this.blur();"
											 placeholder="请选择详细地址">
									<input type="hidden" id="adminCode">
								</div>
								<div class="mui-input-row">
									<label>楼层门牌<span style="color: red;font-weight:  bold">*</span></label>
									<input  name="louceng" type="text" class="mui-input-clear" placeholder="**路（街道）**小区**号">
								</div>
							</form>
						</div>
						<div style="width: 100%;height:50px"></div>
			</div>
			<!--页面主内容区结束-->
		</div>
		<!--单页面结束-->
		<div id="chooseAdd" class="mui-page">
			<div class="mui-navbar-inner mui-bar mui-bar-nav">
				<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
				<h1 class="mui-center mui-title">地址管理</h1>
			</div>
			<div class="mui-page-content">
				<div class="mui-scroll-wrapper">
					<div class="mui-scroll" >
						<div class="mui-content-padded">
							<div id="addressCount" class="msg-warn" style="display: none"></div>
							<div id="addressWarn" class="msg-warn">最多10个地址哦~</div>
						</div>
						<ul class="mui-table-view" id="myddressList">
						</ul>
						<div style="margin-top: 0px" class="mui-content-padded">
							<a href="#addAddress" class="mui-btn mui-btn-primary mui-btn-block">添加地址</a>
						</div>
					</div>
					</div>
				</div>
		</div>
		<!--添加地址-->
		<div id="addAddress" class="mui-page">
			<div class="mui-navbar-inner mui-bar mui-bar-nav">
				<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
				<h1 class="mui-center mui-title">新建地址</h1>
			</div>
			<div class="mui-page-content">
						<form  class="mui-input-group">
							<div class="mui-input-row">
								<label>联系人<span style="color: red;font-weight:  bold">*</span></label>
								<input id="c-linkman" type="text" class="mui-input-clear" placeholder="请输入您的姓名">
							</div>
							<div class="mui-input-row">
								<label>手机号码<span style="color: red;font-weight:  bold">*</span></label>
								<input id="c-phone" type="tel" class="mui-input-clear" placeholder="请输入您的电话号码">
							</div>
							<div class="mui-input-row">
								<label>省市区<span style="color: red;font-weight:  bold">*</span></label>
								<input name="addressx" id="c-adminCodeName" type="text" placeholder="请选择详细地址" onfocus="this.blur();">
								<input id="c-adminCode" type="hidden" >
							</div>
							<div class="mui-input-row">
								<label>楼层门牌<span style="color: red;font-weight:  bold">*</span></label>
								<input id="c-address" type="text" placeholder="**路（街道）**小区**号">
							</div>
						</form>
						<div class="mui-content-padded">
							<a id="addAddressB" class="mui-btn mui-btn-primary mui-btn-block">保存</a>
						</div>
			</div>
		</div>
		<!--编辑地址-->
		<div id="eidtAddress" class="mui-page">
			<div class="mui-navbar-inner mui-bar mui-bar-nav">
				<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
				<h1 class="mui-center mui-title">编辑地址</h1>
			</div>
			<div class="mui-page-content">
						<form class="mui-input-group">
							<div class="mui-input-row">
								<label>联系人<span style="color: red;font-weight:  bold">*</span></label>
								<input id="e-linkman" type="text" class="mui-input-clear" placeholder="请输入您的姓名">
							</div>
							<div class="mui-input-row">
								<label>手机号码<span style="color: red;font-weight:  bold">*</span></label>
								<input  id="e-phone" type="tel" class="mui-input-clear" placeholder="请输入您的电话号码">
							</div>
							<div class="mui-input-row">
								<label>省市区<span style="color: red;font-weight:  bold">*</span></label>
								<input name="addressx" id="e-adminCodeName"  type="text" placeholder="请选择详细地址" onfocus="this.blur();">
								<input id="e-adminCode" type="hidden" >
								<input id="e-rowid" type="hidden" >
							</div>
							<div class="mui-input-row">
								<label>楼层门牌<span style="color: red;font-weight:  bold">*</span></label>
								<input id="e-address" type="text" placeholder="**路（街道）**小区**号">
							</div>
						</form>
						<div class="mui-content-padded">
							<a id="doUpdate" class="mui-btn mui-btn-primary mui-btn-block">保存</a>
						</div>
			</div>
		</div>
		<!--没登录下单提示-->
		<div id="alert" class="mui-page">
			<div class="mui-navbar-inner mui-bar mui-bar-nav">
				<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
				<h1 class="mui-center mui-title">温馨提示</h1>
			</div>
			<div style="background: #fff" class="mui-page-content">
				<ul style="margin: 50px 20px;">
					<li style="background: none;border:none;height: auto;text-align: center">
						<img style="width: 30%;margin-bottom: 20px;" src="../img/xiadanchenggong.png">
					</li>
					<li style="background: none;border:none;height: auto">
						<p style="color: seagreen;margin-bottom: 20px;font-size: 16px;text-align: center">恭喜:下单成功!我们会尽快为您提供服务。</p>
					</li>
					<li style="background: none;border:none;height: auto">
						<p style="font-size: 16px">
						</p>
					</li>
					<li style="background: none;border:none;height: auto">
						<p style="font-size: 16px">
							<span style="font-weight: bold">账号名：</span><span id="userName" style="color: red;"></span>
							<span style="font-weight: bold">密码：</span><span id="password" style="color: red;"></span>
						</p>
					</li>
					<li style="background: none;border:none;height: auto">
					</li>
				</ul>
				<div class="mui-content-padded" style="display: none">
					<a  id="gopayB" class="mui-btn mui-btn-primary mui-btn-block">去支付</a>
				</div>
			</div>
		</div>

		<script src="../lib/mui.min.js"></script>
		<script src="../lib/mui.view.js "></script>
		<script src="../lib/mui.picker.min.js"></script>
		<script src="../lib/zepto.min.js"></script>
		<!--<script src="../data/cityData3.js"></script>-->
		<script src="../lib/layer.js"></script>
		<script>
			mui.init({
				swipeBack: false //启用右滑关闭功能
			});

			$().ready(function() {


				//监听页面切换事件方案1,通过view元素监听所有页面切换事件，目前提供pageBeforeShow|pageShow|pageBeforeBack|pageBack四种事件(before事件为动画开始前触发)
				//第一个参数为事件名称，第二个参数为事件回调，其中e.detail.page为当前页面的html对象
				view.addEventListener('pageBeforeShow', function(e) {
					//				console.log(e.detail.page.id + ' beforeShow');

				});
				view.addEventListener('pageShow', function(e) {
					//				console.log(e.detail.page.id + ' show');
				});
				view.addEventListener('pageBeforeBack', function(e) {
						if(e.detail.page.id=="chooseAdd"){
							getAddressK();
						}
				});
				view.addEventListener('pageBack', function(e) {
					//console.log(e.detail.page.id + ' back');
				});


				$("#goCharge").on("tap",function(e){
				
				var url = "charge/charge.jsp";
					mui.openWindow({
						id: "charge",
						url: url,
						show: {
							aniShow: aniShow
						},
						waiting: {
							autoShow: false
						}
					});
				
                  
//
//                    if("DJD201"==text||"DJD202"==text){
//                        var url = "charge1.html";
//                    }
//                    if("DJD204"==text){
//                        var url = "charge2.html";
//                    }
//                    if("DJD203"==text){
//                        var url = "charge3.html";
//                    }
//                    if("DJD206"==text){
//                        var url = "charge4.html";
//                    }
//                    if("CHW211"==text||"CHW212"==text||"CHW213"==text||"CHW214"==text){
//                        var url = "charge5.html";
//                    }
//                    if("CHW207"==text||"CHW208"==text||"CHW209"==text||"CHW210"==text){
//                        var url = "charge6.html";
//                    }
//                    if("DJD205"==text||"JK216"==text||"JK217"==text||"JK218"==text||
//                            "JK219"==text||"JK220"==text||"JK221"==text||"QT224"==text||"SHH222"==text){
//                        var url = "charge8.html";
//                    }
//                    if("CHW215"==text){
//                        var url = "charge9.html";
//                    }
//                    if("DN223"==text){
//                        var url = "charge10.html";
//                    }
					
				})

				//点击编辑时,需要将当前选择数据回填
				$("#addAddressB").on("tap",function(e) {
					addAddressB();
				})
				//点击编辑时,需要将当前选择数据回填
				$("#doUpdate").on("tap",function(e) {
					doUpdateAddress();
				})



				getRegionData();

				$("[name='addressx']").on('tap', function(event) {
					//其他焦点元素失去焦点， 关闭键盘
					$(document.activeElement).blur();
					var addressId = $(this).attr('id');
					var adminCode = $(this).next().attr('id');
					cityPicker3.show(function(items) {
						$('#'+addressId).val((items[0] || {}).text + (items[1] || {}).text + (items[2] || {}).text);
						$('#'+adminCode).val(items[2].value);
						//返回 false 可以阻止选择框的关闭
						//return false;
					});
				}, false);



				$("#xiadan").on("tap", function() {
					//加载条
                    orderAccept();
				})
				$("#goAddress").on('tap', function() {
						getUserAddressList();
					})
            //获取验证码操作
                var timer = 60;
                var intervals=[];
                $("[name='getCaptcha']").on("tap", function() {
                    var _this=this;
                    //验证手机号是否填写
                    var phone=$("input[type='tel']").val();
                    if(phone==undefined||phone==null||phone.length<=0){
                        return;
                    }
                    //TODO 发送短信逻辑
                    sendMessage();
                    //计时器逻辑
                    $(_this).hide();
                    $(_this).next().text(timer + "秒后获取");
                    var dsq=setInterval(function() {
                        if(timer<=1){
                            clearInterval(dsq);
                            timer=60;
                            $(_this).show();
                            $(_this).text("再次获取");
                            $(_this).next().text(timer + "秒后获取");
                        }else{
                            timer--;
                            $(_this).next().text(timer + "秒后获取");
                        }
                    }, 1000)
                    intervals.push(dsq);
                })
                //初始化产品信息
                 initPro();

				//时间控件
				var optionsJson = $("#serverTime").attr('data-options') || '{}';
				var options = JSON.parse(optionsJson);
				var now=new Date();
				options.beginYear=now.getFullYear();
				options.beginMonth=now.getMonth()+1;
				options.beginDay=now.getDate();
				options.beginHours=now.getHours()+1;
				var picker = new mui.DtPicker(options);
				$("#serverTime").on('tap', function() {
					//其他焦点元素失去焦点， 关闭键盘
					$(document.activeElement).blur();
					picker.show(function(rs) {
						$("#serverTime").val(rs.y.text+'-'+rs.m.text+'-'+rs.d.text+" "+rs.h.text+":"+rs.i.text);
					});
				}, false);
				$("#address").on('tap', function(event) {
					//其他焦点元素失去焦点， 关闭键盘
					$(document.activeElement).blur();
					cityPicker3.show(function(items) {
						$("#address").val((items[0] || {}).text + (items[1] || {}).text + (items[2] || {}).text);
                        $("#adminCode").val(items[2].value);
						//返回 false 可以阻止选择框的关闭
						//return false;
					});
				}, false);
                //获取用户默认地址信息
                //getuserDefaultAddress();
				//跳转到收费标准主页面
				
				//选择按钮点击方法
				$(".btn-gz").click(function() {
					if ($(this).hasClass('mui-btn-primary')) {
						$(this).removeClass("mui-btn-primary");
					} else {
						$(this).addClass("mui-btn-primary");
					}
				})
				$(".btn-pro").click(function() {
					if ($(this).hasClass('mui-btn-primary')) {
						$(".btn-pro").removeClass("mui-btn-primary");
						$(this).removeClass("mui-btn-primary");
					} else {
						$(".btn-pro").removeClass("mui-btn-primary");
						$(this).addClass("mui-btn-primary");
					}
				})
			})
            $("#goLogin").on("tap",function(){
                mui.openWindow({
                    id: "login",
                    url: "../views/login.jsp?source=my&from=my",
                    show: {
                        aniShow: aniShow
                    },
                    waiting: {
                        autoShow: false
                    }
                });
            })
		</script>
  
<!--获取三级产品-->
<script id="template11" type="text/x-handlebars-template">
    <button id="{{threeCode}}" type="button" class="mui-btn btn-pro">{{threeName}}</button>
</script>
<!--获取故障类别-->
<script id="template2" type="text/x-handlebars-template">
	<div  style="display: inline-block"><button id="{{threeCode}}"  type="button" class="mui-btn btn-gz">{{threeName}}</button></div>
</script>


		<script id="template1" type="text/x-handlebars-template">
			<ul class="mui-table-view">
				<li class="mui-table-view-cell">
					<a class="choose" AdminCode="{{region}}"  adress="{{adress}}">
						<div class="mui-media-body">
							<div style="font-size:0.32rem;margin: 0.3rem auto;" class="box box-align-left">
								<div style="text-align: left;" class="item">{{linkman}}</div>
								<div style="flex: 1.5;text-align: left;" class="item">{{phone}}</div>
							</div>
							<p class='mui-ellipsis'>{{reserve1}}</p>
						</div>
					</a>
				</li>
				<li class="mui-table-view-cell font-gray">
					<div style="justify-content:space-between"  class="box">
						<div class="mui-checkbox mui-left">
							<input name="checkbox"  type="checkbox" moren="{{rowId}}" onclick="return false;">设置默认</input>
						</div>
						<div class="operation">
							<a href="#eidtAddress" bianji="{{rowId}}" name="doEidtAddress"><span class="mui-icon mui-icon-compose icon-big"></span>编辑</a>
							<a id="del" rowId="{{rowId}}"><span class="mui-icon mui-icon-trash icon-big"></span>删除</a>
						</div>
					</div>
				</li>
		</script>

	</body>

</html>