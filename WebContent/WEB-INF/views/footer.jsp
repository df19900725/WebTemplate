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
  	.footer_info{
  		margin-top:20px;
  		color:#cfd8dc;
  		font-size:14px;
  	}
  	.footer_info_head{
  		color:white
  	}
  	.footer_left_value{
  		margin-left:5px;
  	}
  	.footer_info a{
  		color:#cfd8dc;
  		text-decoration: none;
  	}
  	.footer_info a:hover {
  		color:white
  	}
  	.fa{
  		color:#cfd8dc
  	}
  	.footer_bottom{
  		border-top:1px solid white;
  		padding-top:5px;
  		margin-top:10px;
  		font-size:14px;
  		color:#cfd8dc
  	}
  </style>
</head>
<body>

	<div class="container" style="margin-top:50px;margin-bottom:20px"><h3><a href="${ctx }/">返回首页</a></h3></div>
	
	<div class="container" style="background-color:#212121;padding:10px">
		<div class="container">
      <div class="row">
        <div class="col-sm">
          <div class="footer_info_head">
            <span>关于我们</span>
          </div>
          <div class="footer_info">
            <span class="fa fa-info-circle"></span><span class="footer_left_value"><a href="">网站信息</a></span>
          </div>
          <div class="footer_info">
            <span class="fa fa-link"></span><span class="footer_left_value"><a href="">友情链接</a></span>
          </div>
          <div class="footer_info">
            <span class="fa fa-user-secret"></span><span class="footer_left_value"><a href="">隐私条例</a></span>
          </div>
          <div class="footer_info">
            <span class="fa fa-book"></span><span class="footer_left_value"><a href="">使用条款</a></span>
          </div>
        </div>
        <div class="col-sm">
          <div class="footer_info_head">
            <span>联系我们</span>
          </div>
          <div class="footer_info">
            <span class="fa fa-envelope"></span><span class="footer_left_value">datalearner@aliyun.com</span>
          </div>
          <div class="footer_info">
            <span class="fa fa-address-card"></span><span class="footer_left_value">合肥市屯溪路193号</span>
          </div>
          <div class="footer_info">
            <span class="fa fa-weibo"></span><span class="footer_left_value"><a target="_blank" href="http://weibo.com/5888339116/profile?topnav=1&wvr=6">新浪微博</a></span>
          </div>
          <div class="footer_info">
            <span class="fa fa-twitter"></span><span class="footer_left_value"><a href="">Twitter</a></span>
          </div>
        </div>
        
        <div class="col-sm">
          <div class="footer_info_head">
            <span>版块介绍</span>
          </div>
          
          <div class="footer_info">
            <span class="fa fa-file-text"></span><span class="footer_left_value">原创博客</span>
          </div>
          <div class="footer_info">
            <span class="fa fa-sticky-note-o"></span><span class="footer_left_value">论文笔记</span>
          </div>
          <div class="footer_info">
            <span class="fa fa-bars"></span><span class="footer_left_value">网址导航</span>
          </div>
          <div class="footer_info">
            <span class="fa fa-database"></span><span class="footer_left_value">数据推荐</span>
          </div>
        </div>
        
        <div class="col-sm">
          <div class="footer_info_head">
            <span>数据学习官方网站</span>
          </div>
          
          <div class="footer_info">©2014-2017 Datalearner.com</div>
          
          <div class="footer_info">数据学习网站版权所有</div>
          
        </div>
      </div>
      
      <div class="container text-center footer_bottom" style="">分享知识 连接未来  | 皖ICP备13016373号-2</div>
    </div>
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
