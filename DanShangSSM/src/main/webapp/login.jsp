<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title></title>
    <link rel="stylesheet" href="css/common.css"/>
    <link rel="stylesheet" href="css/login.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
    <div id="login"></div>
    <div class="login_bg">
        <div id="logo">
            <img style="border-radius:70%;" src="images/logo.png" alt=""/>
        </div>
        <form>
            <div class="userName">
                <lable>用户名：</lable>
                <input type="text" name="name" id="name" placeholder="请输入用户名" pattern="[0-9]{11}" required/>
             <span id="tishi1"> </span>
            </div>
            <div class="passWord">
                <lable>密&nbsp;&nbsp;&nbsp;码：</lable>
                <input type="password" name="password" id="password"  placeholder="请输入密码" pattern="[0-9A-Za-z]{6,25}" required/>
                 <span id="tishi"> </span>
            </div>
            <div class="choose_box">
                <div>
                    <input type="checkbox" checked="checked" name="checkbox"/>
                    <lable>记住密码</lable>
                </div>
                <a href="newPassword.html">忘记密码</a>
            </div>
            <div class="login_btn" id="login_btn">登&nbsp;&nbsp;录</div>
            <script type="text/javascript">
            $("#name").blur(function(){
            	var name1 = $("#name").val();
            	$.ajax({
            		type:"post",
            		url:"user/logincheck",
            		dataType:"json",
            		data:{name:name1},
            		async:true,
            		success:function(data){
            			if(data=="2"){
            				$("#tishi1").html("账号不存在！");
            				$("#tishi1").css("color","red");
            			}else{
            				$("#tishi1").html("账号正确");
            				$("#tishi1").css("color","green");
            			}
            		}
                });
            })
            
            
            
            $("#login_btn").click(function(){
            	var name1 = $("#name").val();
                var password1 = $("#password").val();
            	$.ajax({
            		type:"post",
            		url:"user/login",
            		dataType:"json",
            		data:{name:name1,password:password1},
            		async:true,
            		success:function(data){
            			if(data=="2"){
            				$("#tishi").html("密码不正确！");
            				$("#tishi").css("color","red");
            			}else{
            				window.location.href='index.html';
            			}
            		}
                });
            })
            	
			</script>
            
            
			<div style="margin-top:10px">
			<a class="login_btn" href="register.html">新&nbsp;&nbsp;手&nbsp;&nbsp;注&nbsp;&nbsp;册</a>
			</div>
        </form>
        <div class="other_login">
            <div class="other"></div>
            <span>其他方式登录</span>
            <div class="other"></div>
        </div>
        <div class="other_choose">
            <a href="">
                <img src="images/qq.png" alt=""/>
            </a>
            <a href="">
                <img src="images/wx.png" alt=""/>
            </a>
            <a href="">
                <img src="images/wb.png" alt=""/>
            </a>
        </div>
    </div>
</body>
</html>