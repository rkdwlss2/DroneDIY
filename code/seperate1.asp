<%@Language="VBScript" CODEPAGE="65001"%>
<%
Response.Charset="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html; charset=utf-8"
%>
<html>
	<head>
		<title>스파게티 코드</title>
	</head>
	<body>
		<!-- sperate1.asp를 실행하라. -->
		<form method='post' action='seperate1_ok.asp'>
			<!-- 아래의 데이터를 갖고 -->
			<input type='text' name='x' value='3'/>
			<input type='text' name='y' value='10'/>
			<input type='submit' name='subButton' value="더하기"/>
		</form>
	</body>
</html>