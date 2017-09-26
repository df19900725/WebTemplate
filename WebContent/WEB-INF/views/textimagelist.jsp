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
  	.utilize_text{
  		margin-left:0px;
  	}
  	
  	.text-content{
  		margin-top:10px;
  		height:190px;
  	}
  	.text-content p{
  		line-height:25px;
  	}
  	.fa{
  		color:#788087
  	}
  	.utilize_text a{
  		color:#788087
  	}
  	.col-user{
  		width:100px;
  		margin-left:20px;
  	}
  	.text-utilization{
  		color:#888;
  	}
  	
  	.text-utilization a{
  		color:#888;
  		text-decoration: none;
  	}
  	.text-utilization a:hover{
  		color:#e41d1d
  	}
  	div[class*=text-]{
  		padding:0 15px;
  	}
  	p{
  		font-size:14px;
  	}
  	.text-utilization{
  		font-size:14px;
  	}
  	.fa-clock-o{
  		color:#0099CC
  	}
  	.fa-user{
  		color:#009966
  	}
  </style>
</head>
<body>

	<div class="container" style="margin-top:50px;margin-bottom:20px"><h3><a href="${ctx }/">返回首页</a></h3></div>

	<div class="container">
		<div class="row">
			
			<div class="col-sm-auto">
				<img class="card-img-top rounded" src="${ctx }/resources/images/1.jpg" alt="Card image cap" width="250px" height="250px">
			</div>
			
			<div class="col" style="padding-left:20px">
				<div class="row text-header">
					<h4><a href="">合肥工业大学</a></h4>
				</div>
				
				<div class="row text-content">
					<p class="text-justify">合肥工业大学是一所教育部直属的全国重点大学、国家“211工程”重点建设高校和“985工程”优势学科创新平台建设高校，是教育部、工业和信息化部与安徽省共建高校。学校创建于1945年，1960年被中共中央批准为全国重点大学。刘少奇、朱德、邓小平等老一辈无产阶级革命家先后来校视察指导工作。1979年，邓小平同志亲笔题写了“合肥工业大学”校名；1997年，原合肥工业大学与安徽工学院合并组成新的合肥工业大学；1998年，重新划转教育部管理。建校以来，学校以民族振兴和社会进步为己任，深怀“工业报国”之志，秉承“厚德、笃学、崇实、尚新”的校训，恪守“勤奋、严谨、求实、创新”的校风，发扬“艰苦奋斗、自强不息、追求卓越、勇攀高峰”的光荣传统，形成了鲜明的办学特色，成为国家人才培养、科学研究、社会服务和文化传承创新的重要基地。</p>
				</div>
				
				<div class="row text-utilization">
					<div class="col-sm-auto">
						<ul class="list-inline">
							<li class="list-inline-item"><span class="fa fa-clock-o"></span></li>
							<li class="list-inline-item">2017年09月25日 14:47:35</li>
						</ul>
					</div>
					
					<div class="col-sm-auto col-user">
						<ul class="list-inline">
							<li class="list-inline-item"><span class="fa fa-user"></span></li>
							<li class="list-inline-item"><a href="">小木</a></li>
						</ul>
					</div>
					
					<div class="col-sm-auto col-tag">
						<ul class="list-inline">
							<li class="list-inline-item"><span class="fa fa-tag"></span></li>
						  <li class="list-inline-item"><a href="">高校</a></li>
						  <li class="list-inline-item">/</li>
						  <li class="list-inline-item"><a href="">211工程</a></li>
						  <li class="list-inline-item">/</li>
						  <li class="list-inline-item"><a href="">合工大</a></li>
						</ul>
					</div>
					
					<div class="col-sm"></div>
				</div>
			
			</div>
		
		</div>
		
		<hr/>
  	
  </div>
  
  <div class="container">
		<div class="row">
			
			<div class="col-sm-auto">
				<img class="card-img-top rounded" src="${ctx }/resources/images/2.jpg" alt="Card image cap" width="250px" height="250px">
			</div>
			
			<div class="col" style="padding-left:20px">
				<div class="row text-header">
					<h4><a href="">合肥工业大学</a></h4>
				</div>
				
				<div class="row text-content">
					<p class="text-justify">合肥工业大学是一所教育部直属的全国重点大学、国家“211工程”重点建设高校和“985工程”优势学科创新平台建设高校，是教育部、工业和信息化部与安徽省共建高校。学校创建于1945年，1960年被中共中央批准为全国重点大学。刘少奇、朱德、邓小平等老一辈无产阶级革命家先后来校视察指导工作。1979年，邓小平同志亲笔题写了“合肥工业大学”校名；1997年，原合肥工业大学与安徽工学院合并组成新的合肥工业大学；1998年，重新划转教育部管理。建校以来，学校以民族振兴和社会进步为己任，深怀“工业报国”之志，秉承“厚德、笃学、崇实、尚新”的校训，恪守“勤奋、严谨、求实、创新”的校风，发扬“艰苦奋斗、自强不息、追求卓越、勇攀高峰”的光荣传统，形成了鲜明的办学特色，成为国家人才培养、科学研究、社会服务和文化传承创新的重要基地。</p>
				</div>
				
				<div class="row text-utilization">
					<div class="col-sm-auto">
						<ul class="list-inline">
							<li class="list-inline-item"><span class="fa fa-clock-o"></span></li>
							<li class="list-inline-item">2017年09月25日 14:47:35</li>
						</ul>
					</div>
					
					<div class="col-sm-auto col-user">
						<ul class="list-inline">
							<li class="list-inline-item"><span class="fa fa-user"></span></li>
							<li class="list-inline-item"><a href="">小木</a></li>
						</ul>
					</div>
					
					<div class="col-sm-auto col-tag">
						<ul class="list-inline">
							<li class="list-inline-item"><span class="fa fa-tag"></span></li>
						  <li class="list-inline-item"><a href="">高校</a></li>
						  <li class="list-inline-item">/</li>
						  <li class="list-inline-item"><a href="">211工程</a></li>
						  <li class="list-inline-item">/</li>
						  <li class="list-inline-item"><a href="">合工大</a></li>
						</ul>
					</div>
					
					<div class="col-sm"></div>
				</div>
			
			</div>
		
		</div>
		
		<hr/>
  	
  </div>

  <script type="text/javascript" src="${ctx }/resources/js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/tether.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/bootstrap.min.js"></script>
</body>
</html>
