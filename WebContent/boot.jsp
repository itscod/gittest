<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/index.css" rel="stylesheet" type="text/css">
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/zySearch.js"></script>
<script src="js/jquery.movebg.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="js/verificationCode.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap-hover-dropdown/2.2.1/bootstrap-hover-dropdown.js"></script>
<script type="text/javascript">
	$(function() {

		$('#slider').nivoSlider();
		$("#zySearch").zySearch({
			"width" : "400",
			"height" : "33",
			"parentClass" : "pageTitle",
			"callback" : function(keyword) {
				console.info("?");
				console.info(keyword);
			}
		});
		$(".nav").movebg({
			width : 120, /*滑块的大小*/
			extra : 40, /*额外反弹的距离*/
			speed : 300, /*滑块移动的速度*/
			rebound_speed : 400 /*滑块反弹的速度*/
		});

		$('#demo').carousel({
			interval : 3000, //自动播放4s

		});

	});
	function shown() {
		var li = document.getElementById("my");
		li.style.display = 'block' ;

	}
	function hiden() {
		var li = document.getElementById("my");
		li.style.display = 'none' ;
	}

</script>
</head>
<body style="background-color:#f3f2f0">
	<%
		//session.removeAttribute("userID");
	String role = null;
	String name=null;
	if (session.getAttribute("role") != null) {
		name= (String) session.getAttribute("username");
		role = (String) session.getAttribute("role");
	}
	%>
	<div class="container-fluid" style="background-color:white">

		<hr>
		<br />
		<div class="row clearfix">
			<div class="col-md-5 column" style="text-align:center;font-size:13px">
				可提供各种场合本地水果配送及水果礼盒定制服务！</div>
			<div class="col-md-7 column" style="text-align:center;font-size:13px">
				
				你好！
				<button type="button" class="btn btn-link" id="login"
							data-toggle="modal" data-target="#login" style="color: #000;">
							<span class="glyphicon glyphicon-log-in"></span>[请登录]
				</button>
				&nbsp;&nbsp;
				<button type="button" class="btn btn-link" id="register" style="color: #000;"
							data-toggle="modal" data-target="#register">[免费注册]
				</button>
				&nbsp;|&nbsp;
				<a href="invalidate.jsp">注销</a>
				&nbsp;&nbsp;			
				<%if(role!=null&&role.equals("管理员")) {%>
					<a href="backstageMS.jsp">后台管理</a>
				<%}%>
			
			</div>
		</div>




		<br />
		<hr>


		<div class="row clearfix">
			<div class="col-md-4 column">
				<div class="logo" style="float:right;margin-right:60px">
					<a href="index.html"><img src="images/logo.png"> </a>
				</div>
			</div>
			<div class="col-md-5 column">
				<div class="zySearch" id="zySearch"></div>
			</div>
			<div class="col-md-1 column">
				<div id="nav" style="margin-left:-70px;margin-top:27px">
					<div class="navsBox" onmouseover="shown()" onmouseout="hiden()">
						<div class="firstNav">
							<img src="images/my.jpg">我的账户<img src="images/jiantou.jpg"
								width="29px" height="31px">
						</div>
						<ul id="my" style="display:none;">
							<a href="http://localhost:8080/fruit/information.html" target="content" style="text-decoration:none;"><li class="information">修改信息></li></a>
							<a href="#" target="content" style="text-decoration:none;"><li class="order">我的订单></li></a>
							<a href="#" target="content" style="text-decoration:none;"><li class="help">帮助中心></li></a>
						</ul>
					</div>
				</div>


			</div>
			<div class="col-md-2 column">
				<div id="nav" style="margin-left:-30px;margin-top:27px">
					<div class="navsBox">
						<div class="firstNav">
							<img src="images/che.jpg">&nbsp;&nbsp;我的购物车
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="container-fluid">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="wraper">
					<div class="nav">
						<ul>
							<li class="nav-item"><a href="http://localhost:8080/fruit/boot.html">全部商品</a></li>
							<li class="nav-item cur"><a href="http://sc.chinaz.com/"
								target="_blank">首页</a></li>
							<li class="nav-item"><a href="http://sc.chinaz.com/"
								target="_blank">进口水果</a></li>
							<li class="nav-item"><a href="http://sc.chinaz.com/"
								target="_blank">国产水果</a></li>
							<li class="nav-item"><a href="http://sc.chinaz.com/"
								target="_blank">？</a></li>
							<li class="nav-item"><a href="http://sc.chinaz.com/"
								target="_blank">？</a></li>
							<li class="nav-item"><a href="http://sc.chinaz.com/"
								target="_blank">？</a></li>
						</ul>
						<!--移动的滑动-->
						<div class="move-bg"></div>
						<!--移动的滑动 end-->
					</div>
				</div>
			</div>
		</div>
		</div>
		<div style="height: 2000px;">
	<iframe src="top.jsp" name="content" id="zhuye" width="100%" height="100%" scrolling="no" frameborder="0">
	
			
	</iframe>
	</div>
	<div style="text-align:center;background-color:white">
		<p>友情链接：永隆铺超市</p>
		<p>F-R-U-I-T是一家高品质网上水果超市,可提供深圳水果同城免费配送,网上水果超市可以给您提供更好的水果网购新体验！</p>
		<p>版权所有 © 2019 F-R-U-I-T 保留所有权利 |粤ICP备14101118号-1</p>
		<br/><br>
	</div>
	
	<!-- -----------------------登录模态框（Modal）-------------------------- -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="" method="post">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">用户登录</h4>
					</div>
					<div class="modal-body">
						<p>
							账号：<input type="text" placeholder="填写用户名" name="username"/>
						</p>
						<p>
							密码：<input type="password" name="password"/>"
						</p>
					</div>
					<div class="modal-footer">
						<input type="submit" value="Login"/>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- -----------------------------end--------------------------------- -->

	<!-- -------------------------注册模态框（Modal）-------------------------- -->
	<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">用户注册</h4>
				</div>
				<form action="" method="post">
				<table border="0" style="margin: 0 0 0 25%">
					<div class="modal-body">
						<tr>
							<td>用户名：</td>
							<td>
								<input type="text" name="username" id="username"/>
								<span id="username_errorTips"></span>
							</td>
						</tr>
						<tr>
							<td>
								密&nbsp;&nbsp;码：
							</td>
							<td>
								<input name="password" type="password" maxlength="10" id="passw" />
							    <span id="pass_errorTips"></span>
							</td>
						</tr>
						<tr>
							<td>
								确认密码：
							</td>
							<td>
								<input name="passw_confirm" type="password" maxlength="10" id="passw_confirm" />
								<span id="passw_errorTips"></span>
							</td>
						</tr>
						<tr>
							<td>性别：</td>
							<td>
								<input name="sex1" type="radio"  checked />男
								<input name="sex2" type="radio" />女
							</td>
						</tr>
						<tr>
							<td>联系电话：</td>
							<td>
								<input type="text" id="phone" name="userphone"/>
								<span id="phone_errorTips"></span>
							</td>
						</tr>
						<tr>
							<td><input type="text" id="code" class="txt" placeholder="输入验证码"></td>
							<!--验证码验证-->
							<td>
								<button class="btn btn-small get-code" onclick="getCode(this)" id="J_getCode">获取验证码</button>
			            		<button class="btn btn-small reset-code" id="J_resetCode" style="display:none;">
			            		<span id="J_second">60</span>秒后重发</button>
			            		<span id="code_errorTips"></span>
							</td>
							<!--end-->
						</tr>
						<tr>
							<td>地址：</td>
							<td>
								<input type="text" name="userpress" id="press"/>
								<span id="press_errorTips"></span>
							</td>
						</tr>
					</div>
					<div class="modal-footer">
                		<button type="submit" class="btn btn-primary">提交更改</button>
           		 	</div>
				</table>
				</form>
			</div>
		</div>
	</div>
	<!-- -----------------------------end--------------------------------- -->
</body>
</html>
<style>

.carousel-item img {
	max-width: 100%;
	height: auto;
}

#nav .navsBox {
	width: 120px;
	border: 1px solid lightgray;
}

#nav .navsBox .firstNav {
	height: 36px;
	line-height: 34px;
	width: 120px;
	font-size: 13px;
	cursor: pointer;
}

#nav .navsBox ul li {
	display: block;
	height: 26px;
	line-height: 26px;
	width: 120px;
	font-size: 12px;
	text-indent: 1em;
}

#nav .navsBox ul li:hover {
	color: red;
	background-color: #f3f2f0;
}
#nav .navsBox ul li a:hover {
	color: red;
}
#nav .navsBox ul li a {
	color: #000;
}

</style>