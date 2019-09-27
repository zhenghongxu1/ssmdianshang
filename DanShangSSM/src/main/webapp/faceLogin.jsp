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
		<script type="text/javascript" src="js/jquery.min.js"></script>
		    <style>
        * {
            margin: 0;
            padding: 0;
        }

        html, body {
            width: 100%;
            height: 100%;
        }

        body {
            background: url(img/bg.jpg) no-repeat center;
        }

        h1 {
            color: #fff;
            text-align: center;
            line-height: 80px;
        }

        .media {
            width: 534px;
            height: 400px;
            margin: 40px auto 0;
            transform-style: preserve-3d;
            transform: perspective(600px) rotateY(25deg);
        }

        #register {
            width: 200px;
            height: 50px;
            background: #0089ff;
            margin: 60px auto 0;
            text-align: center;
            line-height: 50px;
            color: #fff;
            /*      color: red;*/
            border-radius: 16px;
            transform-style: preserve-3d;
            transform: perspective(600px) rotateY(25deg) rotateZ(-10deg);
            cursor:pointer;

        }
    </style>
	</head>
<body>
<!--autoplay="true"-->
<div class="media">
    <video id="myVideo" height="534" width="400" src="" autoplay></video>
    <canvas id="myCanvas" height="534" width="400"></canvas>
</div>
<!--创建一个注册的按钮-->
<form action="register.do" id="registerForm">
    用户名: <input type="text" name="username"><br>
    密码 :<input type="text" name="password"><br>
    <input type="hidden" name="faceToken" id="faceToken" value=""><br>
    备注字段:<input type="text" name="other"><br>
    <input type="button" id="toUpPic" value="上传图片">
    <input type="button" id="register" value="注册">
</form>
<!--<div id="login">注册</div>-->
<script>
    //这里写的是网页脚本
    //调用摄像头获取媒体视频流
    /***
     * 默认的写法:navigator.getUserMedia
     * 火狐:navigator.mozGetUserMedia
     * 微软:navigator.msGetUserMedia
     * 谷歌:navigator.webkitGetUserMedia
     *
     * @type {((constraints: MediaStreamConstraints, successCallback: NavigatorUserMediaSuccessCallback, errorCallback: NavigatorUserMediaErrorCallback) => void) | *}
     */
    var getUserMedia = (navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia);

    var video = document.getElementById("myVideo");
    /***
     * 四个参数 getUserMedia.call(navigator,{video:true,audio:false},function(){},function(){});
     *  1.要调用的对象
     *  2.约束对象:eg:只调用视频
     *  3.调用成功的方法
     *  4.调用失败的方法
     */
    getUserMedia.call(navigator, {video: true, audio: false}, function (localMediaStream) {
        //这里是调用成功的方法,如果调用成功,将视频流对象传到myVideo,localMediaStream是传入的视频流对象

        /*document.getElementById("myVideo").src= window.URL.createObjectURL(localMediaStream);
        * 上一行的代码已经过时了
        * */
        try {
            video.src = window.URL.createObjectURL(localMediaStream);
        } catch (e) {
            //执行的是这段代码
            video.srcObject = localMediaStream;
        }
        /***
         * 下面三行代码可以代替了video的autoplay属性
         */
        /*        video.onloadedmetadata = function () {
                    video.play();
                }*/

    }, function (e) {
        console.log("获取摄像头失败", e);//通过控制台将我们的错误信息打印
    });

    //获取登陆按钮
    var btn_register = document.getElementById("register");
    var toUpPic = document.getElementById("toUpPic");
    //获取canvas对象
    var canvas = document.getElementById("myCanvas");
    //获取上下文对象
    var context = canvas.getContext("2d");
    //登陆按钮绑定点击事件
    toUpPic.onclick = function () {
        //点击登录按钮获取面部信息,(点击登录按钮的时候将图像画到)
        // context.drawImage(video,x轴开始位置,y轴开始位置,x轴结束位置,y轴结束位置);
        context.drawImage(video, 0, 0, 534, 400);
        //image/png 表示画成什么格式
        var imgSrc = document.getElementById("myCanvas").toDataURL("image/png");
        console.log(imgSrc)
        // var Baseimg=imgSrc.split(",")[1];
        $.post("getFaceToken.do", {imgSrc: imgSrc}, function (faceToken) {
            alert(faceToken);
            if (faceToken) {
                $("#faceToken").val(faceToken);
            } else {
                alert("登录失败,请重新扫描");
            }
        });


    }
    btn_register.onclick=function () {
        $("#registerForm").submit();
    }
</script>
























    <style>
        * {
            margin: 0;
            padding: 0;
        }
        html, body {
            width: 100%;
            height: 100%;
        }
        body {
            background: url(img/bg.jpg) no-repeat center;
        }
        h1 {
            color: #fff;
            text-align: center;
            line-height: 80px;
        }
        .media {
            width: 534px;
            height: 400px;
            margin: 40px auto 0;
            transform-style: preserve-3d;
            transform: perspective(600px) rotateY(25deg);
        }
        #login {
            width: 200px;
            height: 50px;
            background: #0089ff;
            margin: 60px auto 0;
            text-align: center;
            line-height: 50px;
            color: #fff;
            /*      color: red;*/
            border-radius: 16px;
            transform-style: preserve-3d;
            transform: perspective(600px) rotateY(25deg) rotateZ(-10deg);
            cursor: pointer;
        }
    </style>





<!--autoplay="true"-->
  <div class="media">
    <video id="myVideo" height="534" width="400" src="" autoplay></video>
    <canvas id="myCanvas" height="534" width="400"></canvas>
  </div>
  <!--创建一个登陆的按钮-->
  <div id="login">登陆</div>
  <script>
    //这里写的是网页脚本
    //调用摄像头获取媒体视频流
    /***
     * 默认的写法:navigator.getUserMedia
     * 火狐:navigator.mozGetUserMedia
     * 微软:navigator.msGetUserMedia
     * 谷歌:navigator.webkitGetUserMedia
     * @type {((constraints: MediaStreamConstraints, successCallback: NavigatorUserMediaSuccessCallback, errorCallback: NavigatorUserMediaErrorCallback) => void) | *}
     */
    var getUserMedia = (navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia);
    var video = document.getElementById("myVideo");
    /***
     * 四个参数 getUserMedia.call(navigator,{video:true,audio:false},function(){},function(){});
     *  1.要调用的对象
     *  2.约束对象:eg:只调用视频
     *  3.调用成功的方法
     *  4.调用失败的方法
     */
    getUserMedia.call(navigator, {video: true, audio: false}, function (localMediaStream) {
        //这里是调用成功的方法,如果调用成功,将视频流对象传到myVideo,localMediaStream是传入的视频流对象
        /*document.getElementById("myVideo").src= window.URL.createObjectURL(localMediaStream);
        * 上一行的代码已经过时了
        * */
        try {
            video.src = window.URL.createObjectURL(localMediaStream);
        } catch (e) {
            //执行的是这段代码
            video.srcObject = localMediaStream;
        }
    }, function (e) {
        console.log("获取摄像头失败", e);//通过控制台将我们的错误信息打印
    });
    //获取登陆按钮
    var btn_login = document.getElementById("login");
    //获取canvas对象
    var canvas=document.getElementById("myCanvas");
    //获取上下文对象
    var context = canvas.getContext("2d");
    //登陆按钮绑定点击事件
    btn_login.onclick = function () {
        //点击登录按钮获取面部信息,(点击登录按钮的时候将图像画到)
        // context.drawImage(video,x轴开始位置,y轴开始位置,x轴结束位置,y轴结束位置);
        context.drawImage(video, 0, 0, 534, 400);
        //image/png 表示画成什么格式
        var imgSrc = document.getElementById("myCanvas").toDataURL("image/png");
        alert(imgSrc);
        // var Baseimg=imgSrc.split(",")[1];
        $.post("login.do",{imgSrc:imgSrc},function (result) {
            if(result){
                location.href="success.jsp";
            }else{
                alert("登录失败,请重新扫描");
            }
        })
    }
  </script>





</body>

</html>