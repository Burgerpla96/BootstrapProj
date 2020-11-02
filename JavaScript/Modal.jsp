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
    <title>Modal.jsp</title>

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
  			<h1>모달(Modals)<small>modal.jsp</small></h1>
  		</div>
  		<h2>Modal 띄우기 기본</h2>
  		<button class="btn btn-success" data-toggle="modal" data-target="#basic-modal">Modal 띄우기</button>
  		<!-- 모달창 시작 -->
  		<div class="modal fade" id="basic-modal">
  			<div class="modal-dialog">
  				<div class="modal-content">
  					<div class="modal-header">
  						<button class="close" data-dismiss="modal"><span>&times;</span></button>
  						<h4 class="modal-title">Basic Modal</h4>
  					</div>
  					<div class="modal-body">
  						<h2>Modal Body</h2>
  						<p>WOW 모데루 바디이무니다.<br/>재밌어요.</p>
  					</div>
  					<div class="modal-footer">
  						<button class="btn btn-info" data-dismiss="modal">Close</button>
  					</div>
  					
  				</div>
  			</div>
  		</div>
  		<!-- 모달 창 끝 -->
  		
		
		<h2>크기옵션: modal-lg, modal-sm</h2>  		
  		<button class="btn btn-success" data-toggle="modal" data-target="#large-modal">Large Modal 띄우기</button>
  		<button class="btn btn-primary" data-toggle="modal" data-target="#small-modal">Small Modal 띄우기</button>
  		<!-- 큰 모달창 -->
  		<div class="modal fade" id="large-modal">
  			<div class="modal-dialog modal-lg">
  				<div class="modal-content">
  					<div class="modal-body">
  						<button class="close" data-dismiss="modal">
  							<span>&times;</span>
  						</button>
  						<h2>예쁜 그림</h2>
  						<img alt="그림" src="../Images/land1.jpg">
  					</div>
  				</div>
  			</div>
  		</div>
  		<!-- 큰 모달창 끝-->
  		
  		<!-- 작은 모달창 -->
  		<div class="modal fade" id="small-modal" data-backdrop="static">
  			<div class="modal-dialog modal-sm">
  				<div class="modal-content">
  					<div class="modal-body">
  						<button class="close" data-dismiss="modal">
  							<span>&times;</span>
  						</button>
  						<h2>연습</h2>
  						<p>화이팅</p>
  						
  					</div>
  				</div>
  			</div>
  		</div>
  		<!-- 작은 모달창 끝-->
  		
  		<!-- 자스로 모달 제어 -->
  		<!-- 자스로 backdrop제어-->
		<div class="modal fade" id="js-modal">
  			<div class="modal-dialog">
  				<div class="modal-content">
  					<div class="modal-header">
  					<!-- data-dismiss 속성(닫기 기능) 제거: 자스로 제어 -->
  						<button class="close" id='close'><span>&times;</span></button>
  						<h4 class="modal-title">Basic Modal</h4>
  					</div>
  					<div class="modal-body">
  						<h2>Modal Body</h2>
  						<p>WOW 모데루 바디이무니다.<br/>재밌어요.</p>
  					</div>
  					<div class="modal-footer">
  						<button class="btn btn-info" data-dismiss="modal">Close</button>
  					</div>
  					
  				</div>
  			</div>
  		</div>
  		<h2>자스로 모달창 띄우고 닫기</h2>
  		<!-- 자스로 모달 제어 -->
  		<!-- data-target 제거 -->
  		<button class="btn btn-warning" id="btnModal">
  			자바스크립트
  		</button>
  		
  		
  		
  	</div><!-- container -->
  

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    
    <script src="<c:url value="/Bootstrap/js/bootstrap.min.js"/>"></script>
    
    <script>
    	$(function(){
    		//자스로 backdrop구현
    		//$(css처럼 가져오기) -- #id .class
    		//backdrop:'static'이여야 modal밖을 눌러도 꺼지지 않는다.
    		$("#js-modal").modal({backdrop:'static',show:'false'});
    		
    		$('#btnModal').on('click',function(e){
				console.log('button click');    			
    			$('#js-modal').modal('show');
    			//[5초후 자동으로 닫기]
    			/*
    			setTimeout(() => {
    				$('#js-modal').modal('hide');
    			}, 1000);
    			*/
    			
    		});
    		
    		$('#close').on('click',function(){
    			$("#js-modal").modal('hide');
    		});
    		
    		
    	});
    
    </script>
    
    
    
    
  </body>
</html>