<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<title>회원가입</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/login";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userId").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return false;
				}else{
					var regExp=/^[A-Za-z0-9_\-]{5,20}$/;
					if(regExp.test($("#userId").val())==false){
						alert("ID 형식이 올바르지 않습니다. 5자리에서 20자리입니다,영어 숫자만 허용됩니다. 예 : kang1234");
						return false;
					}
					
				}
				
				if($("#userName").val()==""){
					alert("성명을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
				
				if($("#phoneNum").val()==""){
					alert("휴대폰번호를 입력해주세요.");
					$("#phoneNum").focus();
					return false;
				}else{
					var idExp =/(01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$/;
					if(idExp.test($("#phoneNum").val())==false){
						alert("휴대폰 번호 형식이 올바르지 않습니다. 예 : 01023456789");
						return false;
					}
					
				}
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}else{
				/*	var passExp=/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{8,16}$/
					if (passExp.test($("#userPass").val())==false){
						alert("비밀 번호 형식이 올바르지 않습니다. 8자리에서 16자리로 맞추세요. 소문자 대문자 특수기호만 포함됩니다. 예 : dfsdddd##");
						return false;
					}*/
				}
				if($("#email").val()==""){
					alert("email를 입력해주세요.");
					$("#email").focus();
					return false;
				}else{
					var exptext=/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
					if (exptext.test($("#email").val())==false){
						alert("이메일형식이 올바르지 않습니다."); 
						return false;
					}
					
				}
				if($("#address").val()==""){
					alert("address를 입력해주세요.");
					$("#address").focus();
					return false;
				}
			});
			
				
			
		})
	</script>
	<body>
		<section id="container">
			<form action="/member/register" method="post">
				<div class="form-group has-feedback">
					<label class="control-label" for="userId">아이디</label>
					<input class="form-control" type="text" id="userId" name="userId" />
				</div>
				
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">성명</label>
					<input class="form-control" type="text" id="userName" name="userName" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="phoneNum">휴대폰번호</label>
					<input class="form-control" type="text" id="phoneNum" name="phoneNum" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userPass">패스워드</label>
					<input class="form-control" type="password" id="userPass" name="userPass" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="email">이메일</label>
					<input class="form-control" type="text" id="email" name="email" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="address">주소</label>
					<input class="form-control" type="text" id="address" name="address" />
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원가입</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</form>
		</section>
		
	</body>
	
</html>
