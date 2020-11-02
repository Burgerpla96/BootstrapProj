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
<title>Grid04.jsp</title>

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
		<h2>반응형 유틸리티: visible-*-* </h2>
		<h3>행에 적용하기</h3>
		<hr/>
		<h5>visible-*-* 미적용</h5>
		<div class="row">
			<div class="col-xs-4">col-xs-4</div>
			<div class="col-xs-4">col-xs-4</div>
			<div class="col-xs-4">col-xs-4</div>
		</div>
		
		<!-- 1200이상  767이하에서는 안보임 -->
		<!-- block한 곳에서만 보인다. -->
		<h5>visible-*-* 적용</h5>
		<div class="row visible-md-block visible-sm-block">
			<div class="col-xs-4">col-xs-4</div>
			<div class="col-xs-4">col-xs-4</div>
			<div class="col-xs-4">col-xs-4</div>
		</div>
		
		<!-- 992에서 1199해상도에서만 보인다. -->
		<h3>컬럼에 적용하기</h3>
		<div class="row">
			<div class="col-md-4">col-md-4: 1번 컨텐츠</div>
			<div class="col-md-4 visible-md-block">col-md-4: 2번 컨텐츠</div>
			<div class="col-md-4">col-md-4: 3번 컨텐츠</div>
		</div>
		
		<h1>반응형 컬럼 초기화 하기</h1>
		<!-- 
		아래는 sm모드 이상일때는 3:3:3:3으로 등분되어 1행이고
		sm미만 일때는 6:6 6:6으로 등분되어 두 행이 된다.
		 -->
		<div class="row">
			<div class="col-xs-6 col-sm-3">1번째 컬럼</div>
			<div class="col-xs-6 col-sm-3">2번째 컬럼</div>
			<div class="col-xs-6 col-sm-3">3번째 컬럼</div>
			<div class="col-xs-6 col-sm-3">4번째 컬럼</div>
		</div>
		
		<h2>clearfix와 반응형 유틸리티 조합 전</h2>
		<div class="row">
			<div class="col-xs-6 col-sm-3">1번째 컬럼.col-xs-6 .col-sm-3
			Resize your viewport or check it out on your phone for an example.</div>
			<div class="col-xs-6 col-sm-3">2번째 컬럼</div>
			<div class="col-xs-6 col-sm-3">3번째 컬럼</div>
			<div class="col-xs-6 col-sm-3">4번째 컬럼</div>
		</div>
		
		<h2>clearfix와 반응형 유틸리티 조합 후</h2>
		<div class="row">
			<div class="col-xs-6 col-sm-3">1번째 컬럼.col-xs-6 .col-sm-3
			Resize your viewport or check it out on your phone for an example.</div>
			<div class="col-xs-6 col-sm-3">2번째 컬럼</div>
			<!-- 별도 내용을 표시한 div가 아닌 모양을 유지하기 위한 div -->
			<!-- xs일때는 clearfix가 적용된다. -->
			<div class="clearfix visible-xs-block"></div>
			<div class="col-xs-6 col-sm-3">3번째 컬럼</div>
			<div class="col-xs-6 col-sm-3">4번째 컬럼</div>
		</div>
		
		<h2>응용문제:</h2>
		<!-- 
		왼쪽에  4칸비우고 뒤에 8칸을 차지하는 div를 만들고
		위의 8칸짜리 div안에 컬럼 중첩을 사용해서 4칸짜리 div하나를 만들어라 단, 그 4칸짜리가 
		가운데 배치되도록 md모드 적용
		-->
		<div class="row">
			<div class="col-md-8 col-md-push-4">
				start col-md-8 col-md-push-4
				<div class="row">
					<div class="col-md-4 col-md-push-4">col-md-4 col-md-push-4</div>
				</div>
				end col-md-8 col-md-push-4
			</div>		
		</div>
		
		<abbr title="attribute">attr</abbr>
	</div>
	
	
	<!--  
	<p class="text-left">좌측정렬된 텍스트.</p>
	<p class="text-center">중앙정렬된 텍스트.</p>
	<p class="text-right">우측정렬된 텍스트.</p>
	<p class="text-justify">양쪽정렬된 텍스트.</p>
	<p class="text-nowrap">그냥 텍스트.</p>
	
	<p class="text-lowercase">Lowercased text.</p>
	<p class="text-uppercase">Uppercased text.</p>
	<p class="text-capitalize">Capitalized text.</p>
	-->
	
	

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