<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var = "ctx" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="zh">
<head>
  <title>网站代码示例</title>
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
		.fa-search{
			font-size: 20px;
	    margin-left: 10px;
	    top: 8px;
	    position: absolute;
	    color: #77909c;
		}
		#searchbox input{
			padding-left:50px;
			width:300px;
		}
		#searchbox input:focus{
			width:600px;
		}
  	.active{
  		background-color:#EEEEEE
  	}
  </style>
  
</head>
<body>

	<div class="container" style="margin-top:50px;margin-bottom:20px"><h3><a href="${ctx }/">返回首页</a></h3></div>
	
	<div class="container">
		<div></div>
		<form class="devsite-search-form" action="" method="GET" id="top-search">
			<div id="searchbox" class="devsite-searchbox">
				<input class="form-control" placeholder="搜索" type="text" name="q" value="" autocomplete="off">
				<span class="fa fa-search"></span>
			</div>
		</form>
	</div>

  <script type="text/javascript" src="${ctx }/resources/js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/tether.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/bootstrap.min.js"></script>
  
  <script type="text/javascript">
  	$("#searchbox").hover(function(){ 
  		$(this).children("input").toggleClass('active');
  	})
  </script>
</body>
</html>
