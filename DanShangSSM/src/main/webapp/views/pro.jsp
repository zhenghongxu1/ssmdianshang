<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.lang.annotation.Target"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<title></title>
		<link href="../css/mui.min.css" rel="stylesheet" />
		<link href="../css/main.css" rel="stylesheet" />
	</head>

	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 class="mui-title">选择家电</h1>
		</header>
		<div class="mui-content">
			<div class="mui-scroll-wrapper">
				<div class="mui-scroll">
					<ul class="mui-table-view">
						<li class="mui-table-view-cell mui-collapse mui-active">
							<a class="mui-navigate-right" href="javascript:void(0);">大家电</a>
							<div class="mui-collapse-content">
								<form class="mui-input-group">
									<div class="mui-row">
										<div class="box">
			 <c:forEach items="${allgoods }" var="aa">
		<div style="margin: 10px" class="item item-25"><button type="button" class="mui-btn btn-pro">${aa.name }</button></div>
			</c:forEach>								
										</div>
									</div>
								</form>
							</div>
						</li>
						<li class="mui-table-view-cell mui-collapse">
							<a class="mui-navigate-right" href="javascript:void(0);">小家电</a>
							<div class="mui-collapse-content">
								<form class="mui-input-group">
									<div class="mui-row">
										<div class="box">
											<div style="margin: 10px" class="item item-25"><button type="button" class="mui-btn btn-pro">电水壶</button></div>
											<div style="margin: 10px" class="item item-25"><button type="button" class="mui-btn btn-pro">吹风机</button></div>
											<div style="margin: 10px" class="item item-25"><button type="button" class="mui-btn btn-pro">电熨斗</button></div>
										</div>
									</div>
								</form>
							</div>
						</li>
						
						<li class="mui-table-view-cell mui-collapse">
							<a class="mui-navigate-right" href="javascript:void(0);">厨房家电</a>
							<div class="mui-collapse-content">
								<form class="mui-input-group">
									<div class="mui-row">
										<div class="box">
											<div style="margin: 10px" class="item item-25"><button type="button" class="mui-btn btn-pro">洗碗机</button></div>
											<div style="margin: 10px" class="item item-25"><button type="button" class="mui-btn btn-pro">电烤炉</button></div>
											<div style="margin: 10px" class="item item-25"><button type="button" class="mui-btn btn-pro">消毒柜</button></div>
										</div>
									</div>
								</form>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<script src="../lib/mui.min.js"></script>
		<script src="../lib/zepto.min.js"></script>
		<script>
			mui.init({
				swipeBack: true //启用右滑关闭功能
			});
			mui('.mui-scroll-wrapper').scroll();
			$().ready(function() {
				$("button").on("tap", function() {
					mui.openWindow({
						id: "ordering",
						url: "ordering.jsp?ceshi=1",
						show: {
							aniShow: aniShow
						},
						waiting: {
							autoShow: false
						}
					});
				})
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
		</script>
	</body>
</html>