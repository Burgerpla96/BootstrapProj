<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>Navigation.jsp</title>

    <!-- 부트스트랩 -->
    
    <link href="<c:url value="/Bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  	<div class="container">
  		<div class="page-header">
  			<h1>Navigation<small>navigation menu test</small></h1>
  		</div>
  		<div class="row">
  			<div class="col-md-12">
  				<h2>Navigation: Tabs style</h2>
  				<ul class="nav nav-tabs">
  					<li><a href="#">Menu1</a></li>
  					<li class="active"><a href="#">Menu2</a></li>
  					<li><a href="#">Menu3</a></li>
  				</ul>
  			</div>
  		</div>
  		
  		<div class="row">
  			<div class="col-md-12">
  				<h2>Navigation: Pills style</h2>
  				<ul class="nav nav-pills">
  					<li><a href="#">Menu1</a></li>
  					<li class="active"><a href="#">Menu2</a></li>
  					<li><a href="#">Menu3</a></li>
  				</ul>
  			</div>
  		</div>
  	
  		<div class="row">
  			<div class="col-md-6">
  				<h2>Navigation: 양쪽 정렬-Justified</h2>
  				<ul class="nav nav-pills nav-justified">
  					<li><a href="#">Menu1</a></li>
  					<li class="active"><a href="#">Menu2</a></li>
  					<li><a href="#">Menu3</a></li>
  				</ul>
  			</div>
  		</div>
  		
  		<div class="row">
  			<div class="col-md-12">
  				<h2>Navigation: use Dropdown</h2>
  				<ul class="nav nav-tabs">
  					<li><a href="#">Menu1</a></li>
  					<!-- 1) li에 dropdown class 부여 -->
  					<li class="active dropdown">
  					<!-- 2) a tag 에 class="dropdown-toggle" data-toggle="dropdown" 주기 -->
  						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
  							Menu2<span class="caret"></span></a>
  						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
  					</li>
  					<li><a href="#">Menu3</a></li>
  					<!-- 문제 menu를 dropup으로 만들기 -->
  					<li class="active dropup">
  						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
  							Menu4<span class="caret"></span></a>
  						<ul class="dropdown-menu">
  							<li><a href="#">UpMenu1</a>
  							<li><a href="#">UpMenu2</a>
  							<li class="divider"></li>
  							<li class="disabled"><a href="#">UpMenu3</a>
  						</ul>
  					</li>
  				</ul>
  			</div>
  		</div>
  		
  	
  	</div><!-- container -->
  

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    
    <script src="<c:url value="/Bootstrap/js/bootstrap.min.js"/>"></script>
  </body>
</html>