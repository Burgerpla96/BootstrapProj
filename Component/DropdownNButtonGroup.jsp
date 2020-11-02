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
    <title>DropdownNButtonGroup.jsp</title>

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
  			<h1>Dropdown & ButtonGroup<small>링크들의 목록을 보여주기 위한 토글이 가능한 컨텍스트 메뉴</small></h1>
  		</div>
  		<h2>Dropdown Menu</h2>
  		<div class="row">
  			<div class="col-xs-offset-1 col-md-offset-1 col-md-5">
  				<!-- dropdown class div 생성 -->
				<div class="dropdown">
					<!-- dropdown-toggle, data-toggle="dropdown" button 생성 -->
					<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						Dropdown Menu <span class="caret"></span>
					</button>
					<!-- class="dropdown-menu" ul 생성 -->
					  
					<ul class="dropdown-menu">
					<!-- 우측 배치 -->
					<!--
					<ul class="dropdown-menu dropdown-menu-right">
					-->
						<!-- 각 항목에 a tag로 감싸기  안 하면 글씨 정렬이 이상해짐-->
						<li><a href="#">Menu1</a></li>
						<li><a href="#">Menu2</a></li>
						<li><a href="#">Menu3</a></li>
						<li class="divider"></li>
						<li class="disabled"><a href="#">Menu4</a></li>
					</ul>
				</div>
			</div>
  		</div>
  		
  		<!-- 행과 행 사이의 여백용 -->
  		<!--  
  		<div class="clearfix">
  			<span>&nbsp;</span>
  		</div>
  		-->
  		<h2>Dropup Menu</h2>
  		<div class="row">
  			<div class="col-xs-offset-1 col-md-offset-1 col-md-5">
  				<!-- class="dropup"만 처음 감싸는 것만 다르고 나머지는 같다. -->
  				<div class="dropup">
	  				<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						Dropup Menu <span class="caret"></span>
					</button>	
					<ul class="dropdown-menu">
						<li><a href="#">Menu_1</a></li>
						<li><a href="#">Menu_2</a></li>
						<li><a href="#">Menu_3</a></li>
						<li class="divider"></li>
						<li class="disabled"><a href="#">Menu_4</a></li>
					</ul>
				</div>
  			</div>
  		</div>
  		
  		<h2>Button Group</h2>
  		<div class="row">
  			<div class="col-xs-offset-1 col-md-offset-1 col-md-5">
  				<div class="btn-group btn-group-sm">
  					<button class="btn btn-default">First</button>
					<button class="btn btn-default">Second</button>
					<button class="btn btn-default">Third</button>
  				</div>
  			</div>
  			<div class="col-xs-offset-1 col-md-offset-1 col-md-4">
  				<div class="btn-group btn-group-xs">
  					<button class="btn btn-default">First</button>
					<button class="btn btn-default">Second</button>
					<button class="btn btn-default">Third</button>
  				</div>
  			</div>
  		</div>
  		
  		<h2>분할된 버튼 드롭다운</h2>
  		<div class="row">
  			<div class="col-xs-offset-1 col-md-offset-1 col-md-5">
				<div class="btn-group">
					<button type="button" class="btn btn-danger">Menu</button>
					<button type="button" class="btn btn-success dropdown-toggle" 
						data-toggle="dropdown">
						<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
					</ul>
				</div>
			</div>
  		</div>
			
  		
  	</div><!-- container -->
  

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    
    <script src="<c:url value="/Bootstrap/js/bootstrap.min.js"/>"></script>
  </body>
</html>