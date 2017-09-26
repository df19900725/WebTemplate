<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var = "ctx" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html lang="zh">
<head>
  <title>登录</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="pragma" content="no-cache" />
  <meta http-equiv="cache-control" content="max-age=3600" />
  <meta http-equiv="expires" content="0" />
  <meta http-equiv="keywords" content="">
  <meta http-equiv="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link href="${ctx }/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="${ctx }/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="${ctx }/resources/css/main.css" rel="stylesheet" type="text/css" />
  
</head>
<body>

	<div class="container" style="margin-top:50px"><h3><a href="${ctx }/">返回首页</a></h3></div>
	<div class="container login-tab-div">
		<ul class="nav nav-tabs" id="loginTab" role="tablist">
			<li class="nav-item">
				<a class="nav-link active" id="home-tab" data-toggle="tab" href="#login" 
					role="tab" aria-controls="home" aria-expanded="true">登录</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="home-tab" data-toggle="tab" href="#register" 
					role="tab" aria-controls="home" aria-expanded="true">注册</a>
			</li>
		</ul>
		
		<div class="tab-content" id="myTabContent">
			<div id="login" class="tab-pane fade show active" role="tabpanel" aria-labelledby="login-tab">
		    <form class="form-signin" action="login" method="post">
		    
		      <label for="username" class="sr-only">Email address</label>
		      <input type="email" name="username" id="username" class="form-control" placeholder="邮件地址">
		      
		      <label for="password" class="sr-only">Password</label>
		      <input type="password" name="password" id="password" class="form-control" placeholder="密码">
		      
		      <button class="btn btn-lg btn-primary btn-block" type="submit">点击登录</button>
		    </form>
		  </div>
		  
		  <div id="register" class="tab-pane fade" role="tabpanel" aria-labelledby="register-tab">
				<form class="form-signin" onsubmit="return register()" method="post">
				
				  <label for="registerEmail" class="sr-only">Email address</label>
				  <input type="email" id="registerEmail" name="registerEmail" class="form-control" placeholder="邮件地址">
				  
				  <label for="registerPassword" class="sr-only">Password</label>
				  <input type="password" name="password" id="registerPassword" class="form-control" placeholder="密码">
				  
				  <label for="registerPassword2" class="sr-only">Password</label>
				  <input type="password" id="registerPassword2" class="form-control" placeholder="请再次输入密码">
				  
				  <button class="btn btn-lg btn-primary btn-block" onclick="submit">点击注册</button>
				</form>
		  </div>
	  </div>
  
  </div>

  <script type="text/javascript" src="${ctx }/resources/js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/tether.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/layer/layer.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/login.js"></script>
  <script type="text/javascript">
    var ctx = "${ctx}";
	</script>
  
</body>
</html>
