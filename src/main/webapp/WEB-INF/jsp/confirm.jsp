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
<script type="text/javascript">
	function newlogin(){
		window.location.href="<%=getServletContext().getContextPath() %>/user/newlogin";
	}
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


<title>计算机等级考试系统-登录确认</title>
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
		
		<div class="row text-center" style="margin-top:100px;margin-bottom:300px;">
			<form action="<%=getServletContext().getContextPath() %>/question/show" method="post">
				<h4>请考生核对个人信息,如有错误请重新输入准考证号！</h4>
				<font size="2">(点击确认后，考试开始！)</font><br><br><br>
				准考证号：${sessionScope.user.getId()}<br>
				姓名：${sessionScope.user.getName()}<br>
				身份证号：${sessionScope.user.getIDNumber()}<br>
				考试类型：${sessionScope.user.getExamtype()}<br><br>
				<input class="btn btn-info" type="submit" value="确认" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="btn btn-info" type="button" onclick="newlogin()" >取消</button>
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