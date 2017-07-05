<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="SHORTCUT ICON" href="<%= request.getContextPath()%>/images/e.png"/>
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<meta charset="UTF-8">
		<title>计算机等级考试系统-管理员登录</title>
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">	
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<style type="text/css">
			body{
				background-image:url(<%= request.getContextPath()%>/images/body.jpg);
				background-size:100%
			}
		</style>
	</head>
	<body>
		<div class=" container " style="margin-top:15px">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-8">
				<font color="white" size="5">登录界面</font>
				</div>
				<div class="col-sm-3" >
				<!-- <a  href="register.html" ><font color="white" size="2">立即注册</font></a> -->
				</div>
			</div>
			
			
			<div class="row" style="margin-top:80px">
				<div class="col-sm-4"></div>
				<div class="col-sm-3">
					<div class="input-group" >
						<form action="<%=getServletContext().getContextPath() %>/manage/verify" method="post">
							<input id="username" name="username" type="text" class="form-control" placeholder="用户名" />
							
							<input id="password" name="password" style="margin-top:10px;margin-bottom:10px" type="password" class="form-control" placeholder="密码"/>
							
							<input type="submit"  class="btn btn-success btn-block" onclick="" value="登录"/>
						</form>
					</div>
				</div>
				<div class="col-sm-4"></div>
			</div>
			
		</div>
	</body>
</html>