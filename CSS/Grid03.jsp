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
<title>Grid03.jsp</title>

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
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<h2>column offset하기</h2>
			</div>
		</div>

		<div class="row">
			<!-- 첫번째 4칸, 4칸비우고(offset), 두번째 4칸 -->
			<div class="col-md-4">.col-md-4</div>
			<div class="col-md-4 col-md-offset-4">.col-md-4 .col-md-offset-4</div>
		</div>

		<div class="row">
			<div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
			<div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
		</div>
		<!-- 가운데 배치 효과 -->
		<div class="row">
			<div class="col-md-6 col-md-offset-3">.col-md-6 .col-md-offset-3</div>
		</div>
		<!-- 세로로 붙게되면 offset은 보이지 않게 된다. -->
		<!-- 응용: 왼쪽에 2칸비우고 가운데 배치-->
		<div class="row">
			<div class="col-md-8 col-md-offset-2">.col-md-8 .col-md-offset-2</div>
		</div>
		
		<h2>column 중첩하기: column안에 행배치</h2>
		<div class="row">
			<div class="col-sm-9">
				Level 1: .col-sm-9
				<div class="row">
					<div class="col-xs-8 col-sm-6">Level 2: .col-xs-8 .col-sm-6</div>
					<div class="col-xs-4 col-sm-6">Level 2: .col-xs-4 .col-sm-6</div>
				</div>
			</div>
		</div>
		
		<h2>컬럼 순서정하기</h2>
		<!-- 
		push: 지정칸수만큼 오른쪽으로 밀기 
		pull: 지정 칸수 만큼 왼쪽으로 당기기 -->
		<div class="row">
			<div class="col-md-9 col-md-push-3">.col-md-9 .col-md-push-3</div>
			<div class="col-md-3 col-md-pull-9">.col-md-3 .col-md-pull-9</div>
		</div>
		
		<h3>첫번째 div 5칸, 두번째 div 2칸 배치</h3>
		<div class="row">
			<div class="col-md-5">col-md-5</div>
			<div class="col-md-2">col-md-2</div>
		</div>
		<h3>응용: 두번째 div를 뒤로 첫번째 div보내기</h3>
		<div class="row">
			<div class="col-md-5 col-md-push-7">col-md-5 col-md-push-7</div>
			<div class="col-md-2">col-md-2</div>
		</div>
		
		<h2>offset과 push차이</h2>
		<div class="row">
			<div class="col-md-2">col-md-2</div>
			<div class="col-md-8 col-md-offset-2">col-md-8</div>
		</div><!-- offset-3이면 라인이 넘어간다. 총 수가 13이 되어서 -->
		<div class="row">
			<div class="col-md-2">col-md-2</div>
			<div class="col-md-8 col-md-push-3">col-md-8</div>
		</div>
		<!-- push는 칸이 찌그러진다. -->
		
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