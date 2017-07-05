<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">	
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="SHORTCUT ICON" href="<%= request.getContextPath()%>/images/e.png"/>
<title>计算机等级考试系统-成绩界面</title>
<style type="text/css">
	.navbar-brand {
		height: 40px;
		padding-top: 10px;
	}
	.navbar {
		min-height: 20px;
	}
	#examtype{
		width:175px;
		padding:0 7%;
    	margin: 0;
	}
	#regist{
		width:100px;
	}
</style>
</head>
<body>
	<div class="container" style="background-color:#f8f8f8">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<div class="row">
				 <!-- Brand and toggle get grouped for better mobile display -->
					<div class="col-sm-4">
						<div class="navbar-header">
						  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						    <span class="sr-only">Toggle navigation</span>
						    <span class="icon-bar"></span>
						    <span class="icon-bar"></span>
						    <span class="icon-bar"></span>
						  </button>
						<a class="navbar-brand" >计算机等级考试系统</a>
						</div>
					  </div>
					 <div class="col-sm-4">
					  	
					  </div>
					 <div class="col-sm-3">
					</div>
				</div>
			</div>
		</nav>
		<!-- 以上是导航栏 -->
		<div class="row" style="margin-top:100px;margin-bottom:300px;">
			<div class="col-sm-4">
			</div>
			<div class="col-sm-4">
				<h4 class="text-uppercase">您的成绩为:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.t_grade.getGrade()}分/满分40分</h4>
			</div>
			<div class="col-sm-4">
			</div>
		</div>
		<!-- 以下是底部导航栏 -->
		<nav class="navbar navbar-default navbar-fixed-bottom ">
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						系统版本：V1.0
					</div>
					<div class="col-sm-4">
					
					</div>
					<div class="col-sm-4 text-right">
					<span id="nowTime"></span>
					</div>
				</div>
			</div>
		</nav>
	</div>
</body>
<script>
	setInterval("document.getElementById('nowTime').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
</script>
</html>