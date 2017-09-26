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
  	.carousel-item img{
  		width:1000px;
  		height:500px;
  	}
  </style>
  
</head>
<body>

	<div class="container" style="margin-top:50px;margin-bottom:20px"><h3><a href="${ctx }/">返回首页</a></h3></div>
	
	<div class="container" style="width:1000px;">
	
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		  </ol>
		  
		  <div class="carousel-inner" role="listbox">
		  
		    <div class="carousel-item active">
		      <a href="">
		      	<img src="${ctx }/resources/images/1.jpg" width="100%" height="100%"></a>
		        <div class="carousel-caption d-none d-md-block">
		          <h3>八十天环游地球</h3>
		          <p>福克确实是个道地的英国人，但也许不是伦敦人。你在交易所里从来看不到他，银行里也见不着他，找遍伦敦商业区的任何一家商行也碰不上他。不论在伦敦的哪个港口，或是在伦敦的什么码头，从未停泊过船主名叫福克的船只。这位绅士也没有出席过任何一个行政管理委员会。不论在律师公会中，不论在伦敦四法学会的中院、内院、林肯院、或是格雷院,都从未听到过他的名字。此外,他从来也没有在大法官法庭、女皇御前审判厅、财政审计法院、教会法院这些地方打过官司。</p>
		        </div>
		    </div>
		    
		    <div class="carousel-item">
		      <a href="">
		      	<img src="${ctx }/resources/images/2.jpg" width="100%" height="100%"></a>
		        <div class="carousel-caption d-none d-md-block">
		          <h3>海底两万里</h3>
		          <p>法拉古舰长是一位优秀海员，完全配得上他指挥的这：只战舰。他的船跟他融为一体，他是船的灵魂。关于那条鲸鱼类动物的问题，他心中并不存在什么疑问，他不许在船上讨论有无这只动物的问题。他相信这动物的存在就像许多老实妇女相信有海怪一样，完全是出于信仰，而不是由于理智。这怪物是有的，他发誓要把它从海上清除出去。他像罗得岛的骑士，像杜端尼。德·哥森去迎击骚扰他海岛的大蛇。不是法拉古舰长杀死独角鲸，就是独角鲸弄死法拉古舰长，没有什么中间路线。</p>
		        </div>
		    </div>
		    
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
	
	</div>

  <script type="text/javascript" src="${ctx }/resources/js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/tether.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/bootstrap.min.js"></script>
</body>
</html>
