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
  <%-- <link href="${ctx }/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> --%>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  <link href="${ctx }/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="${ctx }/resources/css/main.css" rel="stylesheet" type="text/css" />
  
  <style type="text/css">
  	.image-shadow:hover{
         z-index: 2; /*设置在顶层显示*/
         -webkit-box-shadow: 0 15px 30px rgba(0,0,0,0.1);    /*添加阴影*/
         box-shadow: 0 15px 30px rgba(0,0,0,0.1);
         -webkit-transform: translate3d(0, -2px, 0);     /*向上浮动*/
         transform: translate3d(0, -2px, 0);
         
     }
     a.overlay { width: 100%; height:100%; position: absolute; }
  </style>
</head>
<body>

	<div class="container" style="margin-top:50px;margin-bottom:20px"><h3><a href="${ctx }/">返回首页</a></h3></div>
	
	<div class="container" style="padding:20px">
		
		<div class="row">
			<div class="col">
				<div class="card image-shadow" style="width: 20rem; border:0px;">
					<a class="overlay" href=""></a>
				  <img class="card-img-top" src="${ctx }/resources/images/1.jpg" alt="Card image cap">
				  <div class="card-body">
				    <h4 class="card-title">Card title</h4>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
				  </div>
			  </div>
			</div>
			
			<div class="col">
				<div class="card image-shadow" style="width: 20rem; border:0px;">
					<a class="overlay" href=""></a>
				  <img class="card-img-top" src="${ctx }/resources/images/2.jpg" alt="Card image cap">
				  <div class="card-body">
				    <h4 class="card-title">Card title</h4>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
				  </div>
			  </div>
			</div>
			
			<div class="col">
				<div class="card image-shadow" style="width: 20rem; border:0px;">
					<a class="overlay" href=""></a>
				  <img class="card-img-top" src="${ctx }/resources/images/3.jpg" alt="Card image cap">
				  <div class="card-body">
				    <h4 class="card-title">Card title</h4>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
				  </div>
			  </div>
			</div>
  	</div>
  </div>

  <script type="text/javascript" src="${ctx }/resources/js/jquery-3.2.1.min.js"></script>
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>
