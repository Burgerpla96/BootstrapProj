<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>Grid02.jsp</title>

<!-- 부트스트랩 -->

<link href="<c:url value="/Bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
.row div {
	background-color: gray;
	outline: 1px red solid;
	height: 100px;
	line-height: 100px;
	text-align: center;
}
</style>
</head>

<body>
	<div class="page-header">
		<h1 id="display_width">해상도</h1>
	</div>
	<!-- 
		.col-xs-* : 항상 가로로 배치
		.col-sm-* : 767px이하부터 세로로 표시
		.col-md-* : 991px이하부터 세로로 표시
		.col-lg-* : 1199px이하부터 세로로 표시
	
	 -->
	<!-- 고정폭(fixed-width) -->
	<div class="container">
		<!-- 
		992px이상에서는 첫번째div가 8칸 두번째가 4칸 =가로배치
		그보다 작을때는 첫이 12칸 두번째가 6칸 =세로배치
		 -->
		<div class="row">
			<div class="col-xs-12 col-md-8">.col-xs-12 .col-md-8</div>
			<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
		</div>

		<!-- 컬럼들은 모바일에서 50% 너비로 시작하고 데스크탑에서는 33.3% 너비가 됩니다 -->
		<div class="row">
			<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
			<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
			<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
		</div>
		
		<!-- 항상 그리드 유지 영역을 1:1로 분할 -->
		<div class="row">
			<div class="col-xs-6">col-xs-6</div>
			<div class="col-xs-6">col-xs-6</div>
		</div>
		<!-- 항상 영역을 3등분  -->
		<div class="row">
			<div class="col-xs-4">col-xs-4</div>
			<div class="col-xs-4">col-xs-4</div>
			<div class="col-xs-4">col-xs-4</div>
		</div>
		
		<!-- 
		문제,응용하기
		992px이상에서는 4칸차지 가로배치
		그보다 작을때는 div하나가 12칸씩 차지하는 레이아웃(총3개 div사용) 
		-->
		<div class="row">
			<div class="col-xs-12 col-md-4">col-xs-12 col-md-4</div>
			<div class="col-xs-12 col-md-4">col-xs-12 col-md-4</div>
			<div class="col-xs-12 col-md-4">col-xs-12 col-md-4</div>
		</div>
		
		
	</div>


	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="<c:url value="/Bootstrap/js/bootstrap.min.js"/>"></script>
	<script>
		window.onresize = function() {
			$('#display_width').html(window.innerWidth);
		};
	</script>




</body>
</html>