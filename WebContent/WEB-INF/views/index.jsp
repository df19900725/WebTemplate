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
  <style>
  	.row{
  		margin-top:20px;
  	}
  </style>
</head>
<body>

	<div class="container" style="padding:20px">
		<div class="row">
			<div class="col"><h3><a href="${ctx }/signin">登录注册页</a></h3></div>
			<div class="col"><h3><a href="${ctx }/navbar">导航栏页面</a></h3></div>
			<div class="col"><h3><a href="${ctx }/footer">底部栏页面</a></h3></div>
			<div class="col"><h3><a href="${ctx }/textlist">文本列表页</a></h3></div>
			<div class="col"><h3><a href="${ctx }/textimagelist">图片文本页</a></h3></div>
			<div class="col"><h3><a href="${ctx }/imagecarousel">图片轮动页</a></h3></div>
			
		</div>
		
		<div class="row">
			<div class="col"><h3><a href="${ctx }/searchbar">搜索框页面</a></h3></div>
			<div class="col"><h3><a href="${ctx }/card">Card页面</a></h3></div>
		</div>
  	
  </div>

  <script type="text/javascript" src="${ctx }/resources/js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/tether.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/bootstrap.min.js"></script>
</body>
</html>
