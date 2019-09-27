<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<script type="text/javascript" src="js/jquery.min.js"></script>
    <title>仿美团百度地图</title>
    <style>
    *{
	margin: 0;
	padding: 0;
     } 
	.anchorBL{display:none;}
	.BMap_stdMpZoom{
			display: none;
	}
	html.noscroll,
   html.noscroll body {
    overflow: hidden !important;
    /* height: 100% !important; */ 
}

	html.noscroll {
    overflow-y: scroll !important;

    </style>
</head>
<body  >
    <div class="content1" >
    	<div style="display: none;">
       <div class="layui-form">
            <div class="form-item">
                <label>省/市/区</label>&nbsp;&nbsp;
                <select name="Province" class="store_Province" style="width:100%">
                    <option value="">请选择省</option>
                    <option value="广东省">广东省</option>
                </select>&nbsp;&nbsp;
                <select name="City" class="store_City" style="width:100%">
                    <option value="">请选择市</option>
                    <option value="广州市">广州市</option>
                </select>&nbsp;&nbsp;
                <select name="Area" class="store_Area" style="width:100%">
                    <option value="">请选择县/区</option>
                    <option value="天河区">天河区</option>
                    <option value="番禺区">番禺区</option>
                    <option value="越秀区">越秀区</option>
                    <option value="荔湾区">荔湾区</option>
                </select>
            </div>
        </div>
     <div class="form-item">
            详细地址&nbsp;&nbsp;
            <input type="text" class="layui-input store_Address" style="width:100%" name="Address" id="address" placeholder="详细至门牌号, 与营业执照地址一致" />
            <img src="img/location.png" style="width:20px;top: 5px; position: relative;" id="btnLocation" />
        </div>
        </div>
        <!-- 地图 -->
        <div class="form-item">
            <div style="width:100%">
                <div id="myMap" style="position: fixed; width:100%;" >
                	
                </div>
            </div>
        </div>
        <input type="hidden" class="store_Lng" />
        <input type="hidden" class="store_Lat" />
    </div>
    <script type="text/javascript">
	var screenHeight = window.screen.height;
	var myyouyou= document.getElementById("myMap");
	var body= document.getElementById("body");
	myyouyou.style.height = screenHeight+"px";
	function toudi(){
		window.location.href = 'user/findallgoods';
	}
	function shangmenfuwu(){
		window.location.href = 'login.jsp';
	}
	
</script>
    <script src="https://api.map.baidu.com/api?v=2.0&ak=RZZ2gObry82Y2BSzZ1xzMhfm&callback=mapinit"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/Map.js"></script>
</body>
<style type="text/css">
	html.noscroll {
    overflow-y: scroll !important;  
}

</style>
</html>