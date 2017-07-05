<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">	
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="SHORTCUT ICON" href="<%= request.getContextPath()%>/images/e.png"/>

<script>
</script>

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

<title>计算机等级考试系统-登录界面</title>
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
		<div  style="margin-top:100px;margin-bottom:300px;">
			<div class="row text-center">
				<h3>登录界面</h3>
			</div>
			<form action="<%=getServletContext().getContextPath() %>/user/login" method="post">
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<div class="row text-center">
							<br><br>
							<font size=3>准考证号:</font>
							<input type="text" id="id" name="id"  required oninvalid="setCustomValidity('请输入准考证号')" oninput="setCustomValidity('')" /> 
							<a href="<%=getServletContext().getContextPath() %>/user/newregister" ><small>报考</small></a>
						</div>
						
					</div>
					<div class="col-sm-4"></div>
				</div>
				<div class="row text-center">
					<br><br>
					<input class="btn btn-success" type="submit" style="width:100px" value="登录" /><br>
				</div>
			</form>
		</div>
		<!-- 以下是底部导航栏 -->
		<nav class="navbar navbar-default navbar-fixed-bottom " style="height:10px;">
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