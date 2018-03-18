<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var = "ctx" value="${pageContext.request.contextPath }" />

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
  
  <style type="text/css">
  	li.active{
  		border-bottom:2px solid #0277bd
  	}
  	.navbar-nav{
  		min-width:899px;
  		font-size:13px;
  	}
  	.navbar-nav li{
  		min-width:104px;
  		text-align:center;
  	}
  	.nav-item{
  		font-weight: 400px;
	    font-size: 14px/44px;
	    color: #61616;
	    font: 500 14px/44px Roboto,sans-serif;
	    height: 48px;
  	}

  </style>
</head>
<body>

	<div class="container" style="margin-top:50px"><h3><a href="${ctx }/">返回首页</a></h3></div>
	
	<div class="container">
		<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
		  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <a class="navbar-brand" href="#">数据学习</a>
		  <div class="collapse navbar-collapse" id="navbarNavDropdown">
		    <ul class="navbar-nav">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">原创博客 <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">论文笔记</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">数据推荐</a>
		      </li>
		      <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Dropdown link
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
		          <a class="dropdown-item" href="#">Action</a>
		          <a class="dropdown-item" href="#">Another action</a>
		          <a class="dropdown-item" href="#">Something else here</a>
		        </div>
		      </li>
		    </ul>
		  </div>
		</nav>
	</div>

  <script type="text/javascript" src="${ctx }/resources/js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/tether.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/bootstrap.min.js"></script>
  
  <script>
  	$(".nav-item").not('.active').hover(function(){ 
  		$(this).toggleClass('active'); 
  	})
  </script>
</body>
</html>
