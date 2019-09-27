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
		<link href="../css/mui.picker.min.css" rel="stylesheet" />
		<link href="../css/layer.css" rel="stylesheet" />
		<link href="../css/main.css" rel="stylesheet" />
		<script type="text/javascript" src="../js/jquery.min.js"></script>
	</head>


	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 class="mui-title">服务下单</h1>
		</header>
		<div class="footer-div">
			<div style="visibility: hidden;" class="div-left">实付款：<span>¥&nbsp;158</span></div>
			<div class="div-right">
				<div  id="xiadan1">
					下一步
				</div>
			</div>
		</div>
		<div class="mui-content">
			<div class="mui-scroll-wrapper">
				<div style="margin-top: 44px;padding-bottom: 44px;" class="mui-scroll">
					<div class="header">
						<h3>服务项目</h3>
					</div>
					<div class="content">
						<ul class="mui-table-view">
							<li style="line-height: 2;" class="mui-table-view-cell" >
							
goods(单价/元):<input id="money"  disabled="disabled" style="width:200px; border: 0px solid red" type="text" value="45632">
								
								<div style="float: right;" class="mui-numbox" data-numbox-min="1" data-numbox-max="10">
									<button id="jian" onclick="jisuan()" class="mui-btn mui-btn-numbox-minus" type="button">-</button>
									<input id="test" class="mui-input-numbox" type="number" >
									<button id="sum" onclick="jisuan()" class="mui-btn mui-btn-numbox-plus" type="button">+</button>
									<script type="text/javascript">
									$("#test").val(1)
	                                  $("#jian").click(function(){
	                                	  $("#test").val();
	                                		 alert($("#test").val())
	                                  })
                                    </script>
								</div>
							</li>
							<li class="mui-table-view-cell font-gray">
								<div class="box box-justify-right">
									<div>
										<p style="text-align: right;padding-top:0px">合计:&nbsp;<span id="sum_money">100</span>元</p>
										<p style="text-align: right;padding-bottom:0px;font-size: 16px;">实付款:&nbsp;<span  id="sum_money1" style="color: red;">100</span>元</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
					
					<!-- 者利用来进行加减的 -->
					<script type="text/javascript">
					jisuan();
                   function jisuan(){
                	var money=document.getElementById("money").value;
   					var test=document.getElementById("test").value;
   					var sum_money=document.getElementById("sum_money");
   					var sum_money1=document.getElementById("sum_money1");
                	   sum_money.value = test*money;
                	   sum_money1.value = test*money;
                	   sum_money.innerHTML=sum_money.value;
                	   sum_money1.innerHTML=sum_money1.value;
                   }
                    </script>
                    
                    
					<div class="content">
						<form class="mui-input-group">
							<div class="mui-input-row">
								<label>服务内容</label>
								<!-- <textarea  placeholder="请填写服务内容" ></textarea> -->
								<input id="serverconn"  placeholder="请填写服务内容">
							</div>
							<div class="mui-input-row">
								<label>服务时间</label>
								<input id="serverTime" type="text" class="mui-input-clear" placeholder="请选择服务时间">
							</div>
							<div class="mui-input-row">
								<label>品牌</label>
								<input id="brand" type="text" class="mui-input-clear" placeholder="请输入产品品牌">
							</div>
						</form>
					</div>
					<div class="content">
						<ul class="mui-table-view mui-table-view-chevron">
							<li class="mui-table-view-cell">
								<a id="goAddress" href="javascript:void(0);" class="mui-navigate-right">
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
					<div class="content">
						<form class="mui-input-group">
							<div class="mui-input-row">
								<label>联系人</label>
								<input type="text" id="username" class="mui-input-clear" placeholder="请输入您的姓名">
							</div>
							<div class="mui-input-row">
								<label>手机号码</label>
								<input id="tel1" type="tel" class="mui-input-clear" placeholder="请输入您的电话号码">
							</div>
							<div class="mui-input-row">
								<label>详细地址</label>
								<input id="address" type="text" placeholder="请选择详细地址">
							</div>
							<div class="mui-input-row">
								<label>楼层门牌 </label>
								<input id="addresss" type="text" placeholder="**路（街道）**小区**号">
							</div>
						</form>
					</div>
					<div style="width: 100%;height:50px"></div>
				</div>
			</div>
		</div>
		
		
					<script language="javascript">
	
    $("#xiadan1").click(function(){
    	/* 生成订单 */
    	var vNow = new Date();
		var sNow = "zhx";
		sNow += String(vNow.getFullYear());
		sNow += String(vNow.getMonth() + 1);
		sNow += String(vNow.getDate());
		sNow += String(vNow.getHours());
		sNow += String(vNow.getMinutes());
		sNow += String(vNow.getSeconds());
		sNow += String(vNow.getMilliseconds());
		
		
		var vvNow = new Date();
		var ssNow = "";
		ssNow += String(vvNow.getFullYear());
		ssNow += "-"+String(vvNow.getMonth() + 1);
		ssNow += "-"+String(vvNow.getDate());
		ssNow += "  "+String(vvNow.getHours());
		ssNow += ":"+String(vvNow.getMinutes());
		ssNow += ":"+String(vvNow.getSeconds());
            var sum_money = $("#sum_money").val();
    	   var serverconn = $("#serverconn").val();
    	   var serverTime = $("#serverTime").val();
    	   var  brand = $("#brand").val();
    	   var username = $("#username").val();
    	   var tel1 = $("#tel1").val();
    	   var addresss = $("#addresss").val();
    	   var uid = ${yonghu_id }
    	   window.location.href="../orderpp?ordeid="+sNow+"&sumprice="+sum_money+"&servercon="+serverconn+"&brande="+brand+"&name="+username+"&tel="+tel1+"&address="+addresss+"&ordingtime="+ssNow+"&user="+uid
    			   /*   	$.ajax({
            		type:"post",
            		url:"../user/orderpp",
            		dataType:"json",
            		data:{ordeid:sNow,sumprice:sum_money,servercon:serverconn,brande:brand,name:username,tel:tel1,address:addresss},
            		async:true,
            		success:function(data){
            			window.location.href="../wappay/pay.jsp"
            		}
                }); */  
            })

</script>
		<script src="../lib/mui.min.js"></script>
		<script src="../lib/mui.picker.min.js"></script>
		<script src="../lib/zepto.min.js"></script>
		<script src="../data/cityData3.js"></script>
		<script src="../lib/layer.js"></script>
<!-- 		<script>
			mui.init({
				swipeBack: true //启用右滑关闭功能
			});
			//选择地址后的接收事件
			window.addEventListener('chooseAddress', function() {
				//todo 读取localStorage中用户选择的地址
				if (window.localStorage.getItem("address") != null) {
					var address = JSON.parse(window.localStorage.getItem("address"));
					$(".contacts").html(address.name + "<span>" + address.phone + "</span>");
					$(".address").html(address.address);
					window.localStorage.clear();
				}
			});
			$().ready(function() {
				//web端选择地址之后返回页面
				//读取localStorage中用户选择的地址
				if (window.localStorage.getItem("address") != null) {
					var address = JSON.parse(window.localStorage.getItem("address"));
					$(".contacts").html(address.name + "<span>" + address.phone + "</span>");
					$(".address").html(address.address);
					window.localStorage.clear();
				} else {
					//TODO 默认地址
				}
				$("#xiadan").on("tap", function() {
					//加载条
					var loading = layer.open({
						type: 2,
						shadeClose: false,
						time: 5
					});
					//关闭加载条
					//layer.close(loading);
				})
				$("#goAddress").on('tap', function() {
						mui.openWindow({
							id: "address",
							url: "address.html?source=ordering",
							show: {
								aniShow: aniShow
							},
							waiting: {
								autoShow: false
							}
						});
					})
					//时间控件
				var optionsJson = $("#serverTime").attr('data-options') || '{}';
				var options = JSON.parse(optionsJson);
				var picker = new mui.DtPicker(options);
				$("#serverTime").on('tap', function() {
					picker.show(function(rs) {
						$("#serverTime").val(rs.text);
					});
				}, false);
				//省市区三级联动
				var cityPicker3 = new mui.PopPicker({
					layer: 3
				});
				cityPicker3.setData(cityData3);
				$("#address").on('tap', function(event) {
					cityPicker3.show(function(items) {
						$("#address").val((items[0] || {}).text + (items[1] || {}).text + (items[2] || {}).text);
						//返回 false 可以阻止选择框的关闭
						//return false;
					});
				}, false);
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
		</script> -->
		
	
	</body>

</html>