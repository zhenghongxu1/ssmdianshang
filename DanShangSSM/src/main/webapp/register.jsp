<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="viewport" content="height=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0">
    <title></title>
    <link rel="stylesheet" href="css/common.css"/>
    <link rel="stylesheet" href="css/register.css"/>
      <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
    <div class="register">
        <div class="regTop">
            <span>用户注册</span>
            <a class="back" href="login1.html">&lt;&nbsp;返回</a>
        </div>
        <div class="content">
            <div class="point">
                <span>注册成功后，手机号也可为登录账号。</span>
            </div>
            <form action="">
                <div class="message">
                    <input type="tel" id="tel"  name="name" placeholder="输入手机号" pattern="[0-9]{11}" required/>
                    <input type="password" id="password" placeholder="请输入6-25位密码" pattern="[0-9A-Za-z]{6,25}" required/>
                    <input type="password" id="newpassword" placeholder="请再次输入密码" pattern="[0-9A-Za-z]{6,25}" required/>
                    <input type="text" id="code" placeholder="输入验证码" pattern="[0-9]{6}" required/>
					<div id="tishi1" style="width: 33%; height:42px; padding: 2% 1%; margin: 5%; font-size: 1em; color: #909093; ">
					欢迎您注册！
					</div>
                    <div class="icons">
                        <b><img src="images/zc-1.jpg" alt=""/></b>
                        <b><img src="images/zc-2.jpg" alt=""/></b>
                        <b><img src="images/zc-3.jpg" alt=""/></b>
                        <b><img src="images/zc-3.jpg" alt=""/></b>
                    </div>
                    <a class="code" href="" required>获取验证码</a>
                </div>
                <div class="agree">
                    <input type="checkbox"/><span>&nbsp;同意&nbsp;</span><a href="">《注册协议》</a>
               
                </div>
                <div class="submit" id="register"    type="submit">注册</div>
                 <script type="text/javascript">
               /*   进行注册传值 */
                 $("#register").click(function(){
                	 alert("aaa");
                 	var name1 = $("#tel").val();
                 	var password1 = $("#password").val();
                 	var code1 = $("#code").val();
                 	$.ajax({
                 		type:"post",
                 		url:"user/register",
                 		dataType:"json",
                 		data:{name:name1,password:password1},
                 		async:true,
                 		success:function(data){
                 			if(data=="2"){
                 				$("#tishi1").html("账号正确");
                 				$("#tishi1").css("color","green");
                 			}else{
                 				$("#tishi1").html("账号存在");
                 				$("#tishi1").css("color","red");
                 			}
                 		}
                     });
                 })
                 
            /*     对用户名的是否存在进行判断 */
            $("#tel").blur(function(){
            	var name1 = $("#tel").val();
            	$.ajax({
            		type:"post",
            		url:"user/logincheck",
            		dataType:"json",
            		data:{name:name1},
             		async:true,
             		success:function(data){
             			if(data=="2"){
             				$("#tishi1").html("账号正确");
             				$("#tishi1").css("color","green");
             			}else{
             				$("#tishi1").html("账号存在");
             				$("#tishi1").css("color","red");
             			}
             		}
                 });
             })
            
			</script>
            </form>
        </div>
    </div>
</body>
</html>