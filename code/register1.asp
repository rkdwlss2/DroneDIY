<!-- #include virtual="/header.asp" -->
<%@Language="VBScript" CODEPAGE="65001"%>
<%
Response.Charset="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html; charset=utf-8"
%>

<div id="content">
   <form action="register_ok.asp" method="get">
   <table>
        <tr>
	           <td> ID </td> 
			   <td><input type="text" name="registerID" placeholder="LoginID"/></td>
		</tr>
        <tr>
	           <td> 비밀번호 </td> 
			   <td><input type="text" name="registerPW" placeholder="Password"/></td>
		</tr>
		<tr>
	           <td> 비밀번호 확인 </td> 
			   <td><input type="text" name="registerPW2" placeholder="Password"/></td>
		</tr>
		<tr>
	           <td> 이름 </td> 
			   <td><input type="text" name="registerName" placeholder="홍길동"/></td>
		</tr>
		<tr>
	           <td> 휴대폰번호 </td> 
			   <td><input type="text" name="registerNumber" placeholder="010-1234-5678"/></td>
		</tr>
		<tr>
	           <td> 이메일 </td> 
			   <td><input type="text" name="registerMail" placeholder="abcd@naver.com"/></td>
		</tr>
		<tr>
	           <td> 주소 </td> 
			   <td><input type="text" name="address" placeholder="인천시 미추홀구 용현동"/></td>
		</tr>
        <!-- <tr>
		
		       <td> 취미 </td>
			   <td>
			      <input type="checkbox" name="groupCheckbox" value="0"> 책읽기
				  <input type="checkbox" name="groupCheckbox" value="1"> 댄스
				  <input type="checkbox" name="groupCheckbox" value="2"> 작곡
				  <input type="checkbox" name="groupCheckbox" value="3"> 프로그래밍
			   </td>
		</tr>
        <tr>
		       <td> 직업 </td>
			   <td><select name="job"><option>대학생</option><option>대학원생</option><option>기타</option></select></td>
		</tr>
		-->
		
    </table>
	<input type="submit" onclick= "move()" value="회원가입"/>
</form>
</div>	
<!-- #include virtual="/footer.asp" -->		