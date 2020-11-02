<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- Bootstrap 부트스트랩  -->
<!-- http://bootstrapk.com/css/#forms-horizontal -->
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>Form.jsp</title>

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
  	<!-- 
  	모든 텍스트 기반의 <input>,<textarea> 그리고 <select>요소
  	.form-control 부여시 기본적으로 width: 100%;
  	최적의 여백을 위해 .form-group 으로 라벨과 콘트롤을 감싸자
  	
  	인라인 폼: 입력 콘트롤이나 셀렉트 콘트롤은 부트슽랩에서 기본적으로 width: 100%;다.
  	인라인 폼내에서 그것을 width: auto; 로 초기화했다.
  	<form class="form-inline">
  		<div class="form-group">
  	
  	<label class="checkbox-inline">
  	
  	<label class="radio-inline">
  	
  	수평폼: 그리드행 역할은 .form-group으로 한다.
  	<form class="form-horizontal">
  		 <div class="form-group">
  	
  	폼컨트롤 크기 조정
  	세로폭: input-*
  	가로폭: col-*-8 
  	한꺼번에 적용할때는 form-group 의 form-group-*를 적용
  	-->
  
  
  	<div class="container">
		<div class="page-header">
			<h1>
				form<small>폼 연습</small>
			</h1>
		</div>
		<h3>기본(Basic) form</h3>
		<div class="row">
			<div class="col-md-offset-1 col-md-10">
				<form>
					<div class="form-group ">
						<label for="email">이메일 주소</label> 
						<input type="email"
							class="form-control" id="email"
							placeholder="이메일을 입력하세요">
					</div>
					<div class="form-group">
						<label for="password">암호</label> <input
							type="password" class="form-control" id="password"
							placeholder="암호">
					</div>
					<div class="form-group">
						<label >파일 업로드</label>
						<!-- input type="file"에는 form-control 부여하지 말자(어색함) --> 
						<input type="file" >
						<!-- p tag에  class="help-block" 하면 흐려지고 여백준다.-->
						<p class="help-block">여기에 블록레벨 도움말 예제</p>
					</div>
					<!-- checkbox할 div에 쿨래스는 form-group이 아니라 checkbox -->
					<div class="checkbox">
						<!-- 아래 형식 유지하고 폼 요소 -->
						<label> <input type="checkbox"> 아이디 저장 </label>
					</div>
					<!-- 
					<button type="submit" class="btn btn-default">제출</button>
					-->
					<div class="form-group">
						<input type="submit" class="btn btn-success" value="제출">
					</div>
					
				</form>
			</div>
		</div>
		<!-- row -->
		
		
		<h3>Inline form</h3>
		<!--
		가로 배치 
		form-inline 를 추가하세요. 이것은 최소 768px 의 뷰포트 내의 폼에만 적용됩니다.
		인라인 폼의 width는 auto다. 자동으로 결정된다.
		-->
		
		<!-- 
		콘트롤 크기조절
		.input-lg 같은 클래스를 사용하여 높이를 설정하세요. 
		그리고 .col-lg-* 같은 그리드 열 클래스를 사용하여 너비를 설정하세요.
		 -->
		 
		<div class="row">
			<div class="col-md-offset-1 col-md-10">
				<form class="form-inline">
					<div class="form-group">
						<label>이름</label> 
						<input type="text" class="form-control input-sm">
					</div>
					<div class="form-group">
						<label>비밀번호</label> 
						<input type="password" class="form-control input-sm">
					</div>
					<div class="form-group">
						<label>이메일</label> 
						<input type="email" class="form-control input-sm" >
					</div>
					<!-- button을 div class="form-group"으로 감싸서 아래 여백주기 -->
					<div class="form-group">
						<button type="submit" class="btn btn-default input-sm">확인</button>
					</div>
					
				</form>
			</div>
		</div><!-- row -->
		

		<h3>수평 폼</h3>
		<!-- 
		 수평 폼
		폼(<form> 이 아니어도 됨)에 .form-horizontal 를 추가하여 
		라벨들과 폼콘트롤들의 그룹들을 정렬하기 위해 부트스트랩의 미리정의된 
		그리드 클래스(col-*-*) 들을 사용하세요.
		그리드행 역할은 .form-group 가 하기 때문에 .row 는 필요가 없습니다.
		
		레이블과 폼요소에 col-*-*을 지정해야 수평폼이 완성된다. 
		미지정시 기본 폼 배치와 같다.
		-->
		<div class="row">
			<div class="col-md-offset-1 col-md-10">
				<form class="form-horizontal">
					<div class="form-group">
						<!-- div class="row"와 같다. -->
						<!-- label에 col-sm-2과 control-label도 주기 정렬-->
						<label class="col-sm-2 control-label">아이디</label>
						<div class="col-sm-4">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<!-- div class="row"와 같다. -->
						<!-- label에 col-sm-2과 control-label도 주기 정렬-->
						<label class="col-sm-2 control-label">암호</label>
						<div class="col-sm-4">
							<input type="password" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<!-- div class="row"와 같다. -->
						<!-- label에 col-sm-2과 control-label도 주기 정렬-->
						<label class="col-sm-2 control-label">제목</label>
						<div class="col-sm-8">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">파일 업로드</label>
						<div class="col-sm-8">
							<input type="file" />
							<p class="help-block">이미지 파일만 업로드하세요.</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">성별</label>
						<div class="col-sm-4">
							<!-- 가로배치 -->
						 
							<div class="radio-inline ">
								<label><input type="radio" name="gender"/>남자</label>
							</div>
							<div class="radio-inline ">
								<label><input type="radio" name="gender"/>여자</label>
							</div>
							<div class="radio-inline disabled">
								<label><input type="radio" name="gender" disabled/>트랜스젠더</label>
							</div>
							
							<!-- 세로배치 -->
							<!-- 
							<div class="radio ">
								<label><input type="radio" name="gender" />남자</label>
							</div>
							<div class="radio ">
								<label><input type="radio" name="gender" />여자</label>
							</div>
							<div class="radio disabled">
								<label><input type="radio" name="gender" disabled/>트랜스젠더</label>
							</div>
							-->
						</div>

					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">관심사항</label>
							<div class="col-sm-4">
								<label class="checkbox-inline"> 
									<input type="checkbox" > 연예인 
								</label> 
								
								<label class="checkbox-inline"> 
									<input type="checkbox" > 예능 
								</label>
								
								<label class="checkbox-inline">
									<input type="checkbox" > 영화
								</label>
							</div>
						</label>
					</div>
					
					
					
					<div class="form-group">
						<label class="col-sm-2 control-label">학력</label>
						<div class="col-sm-3">
							<select class="form-control input-sm">
								<option>학력을 선택하세요</option>
								<option>초등학교</option>
								<option>중학교</option>
								<option>고등학교</option>
								<option>대학교</option>
							</select>
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="col-sm-2 control-label">자기소개</label>
						<!-- 중첩 컬럼사용 -->
						<div class="col-sm-10">
							<div class="row">
								<div class="col-sm-8">
									<textarea rows="5" class="form-control"></textarea>
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-4">
							<div class="checkbox">
								<label><input type="checkbox">아이디 저장</label>
							</div>
						</div>
					</div>
					
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-4">
							<button class="btn btn-primary">확인</button>
						</div>
					</div>
					
				</form>
			</div>
		</div><!-- row -->



	</div><!-- container -->
  

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    
    <script src="<c:url value="/Bootstrap/js/bootstrap.min.js"/>"></script>
  </body>
</html>