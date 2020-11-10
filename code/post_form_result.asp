<%
Response.Charset="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html; charset=utf-8"
%>
<%
  id=request.form("id")
  pw=request.form("pw")
%>
<html>
	<head>
		<title> 간단한 Form 예제의 결과 </title>
	</head>

   	<body>
	<p>사용자 입력 정보</p>
	  이름   :<%=id%> <br/>
	  암호   :<%=pw%>
	</body>
</html>	