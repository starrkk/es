<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="SHORTCUT ICON" href="<%= request.getContextPath()%>/images/e.png"/>
<title>计算机等级考试系统-试题</title>
<style type="text/css">
	
	.navbar-brand {
		height: 40px;
		padding-top: 15px;
	}
	.navbar {
		min-height: 20px;
	}
	.navbar-toggle {
	margin-top: 4px;
	margin-bottom: 4px;
	}

	/*还可以设置按钮上下边距：*/
	/*移动端菜单按钮*/
	.navbar-toggle {
	margin-top: 2px;
	margin-bottom: 2px;
	}

</style>
</head>
<body>
	<div class="container"  style="background-color:#f8f8f8">
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
						<a class="navbar-brand" >考生姓名:</a>
						</div>
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						  <ul class="nav navbar-nav">
						    <li class="dropdown">
						      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${sessionScope.user.getName()} <span class="caret"></span></a>
						      <ul class="dropdown-menu" style="width:1px">
						        <li><a href="<%=getServletContext().getContextPath() %>/user/logout">注销</a></li>
						        <!-- <li role="separator" class="divider"></li> -->
						      </ul>
						    </li>
						  </ul>
					  </div>
					  </div>
					 <div class="col-sm-4">
					  	<p class="navbar-text">
					  		考试时间：60分钟     剩余时间：<font id="t_m"></font><font id="t_s"></font>
					 	</p>
					  </div>
					 <div class="col-sm-3">
					  <ul class="nav navbar-nav navbar-right">
					  	<a id="takeIn" class="navbar-brand" href="<%=getServletContext().getContextPath() %>/grade/save">交卷</a>
					  </ul>
					</div>
				</div>
			</div>
		</nav>
		<!-- 以上是导航栏 -->




		
		
		<!-- 以下是具体问题 -->
		<div class="row" style="margin-top:100px;margin-bottom:300px;">
			<div class="col-sm-3" >
			</div>
			<div id="ques" class="col-sm-6" >
				<%-- <c:forEach items="${sessionScope.questionlist}" var="question" varStatus="vs" begin="0" end="40" step="4"> --%>
					<form action="<%=getServletContext().getContextPath() %>/question/show_one" method="post" >
						题目 <input type="hidden" id="i" name="i" value="${sessionScope.i }">${sessionScope.i }：${sessionScope.question.getQuestion()}<br>
						
						<input type="radio" name="q" value="A"/>A.&nbsp;&nbsp;${sessionScope.question.getA()}<br>
						<input type="radio" name="q" value="B"/>B.&nbsp;&nbsp;${sessionScope.question.getB()}<br>
						<input type="radio" name="q" value="C"/>C.&nbsp;&nbsp;${sessionScope.question.getC()}<br>
						<input type="radio" name="q" value="D"/>D.&nbsp;&nbsp;${sessionScope.question.getD()}<br>
						<%-- answer:&nbsp;${sessionScope.question.getAnswer()} --%><br><br><br>
						<input class="btn btn-info" type="submit" value="下一题" />
					</form>
					<%-- ${sessionScope.grade } --%>
					
			<%-- 	</c:forEach>  --%>		
			
			</div>
			<div class="col-sm-3" >
			</div>
		</div>
		
		<!-- 以下是底部导航栏 -->
		<nav class="navbar navbar-default navbar-fixed-bottom" style="height:10px;">
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
	function tuichu(){
		window.close();
	}
	function GetRTime(){
	var temp = ${sessionScope.millis};
	var millis = parseInt(temp);
	var nowtime = new Date();
	var t = millis - nowtime.getTime();
	var m = 0;
	var s = 0;
		if(t>0){
			m=Math.floor(t/1000/60%60);
			s=Math.floor(t/1000%60);
		}else{
			//confirm("考试时间到了，将自动交卷···");
			document.getElementById("takeIn").click();
		}
		document.getElementById("t_m").innerHTML = m + "分";
		document.getElementById("t_s").innerHTML = s + "秒";
	
	}
	setInterval(GetRTime,1000);
	setInterval("document.getElementById('nowTime').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
	
</script>
</html>