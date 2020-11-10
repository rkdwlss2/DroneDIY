<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<html>
   <body>
   <%@Language="VBScript" CODEPAGE="65001" %>
   <%
      Response.Charset="utf-8"
	  Session.codepage="65001"
	  Response.codepage="65001"
	  Response.ContentType="text/html;charsetp=utf-8"
	  %>
	<%
      Response.write "session ID: "& session.sessionID &" <br/>"
	  Response.write "session timeout: "& session.timeout &" <br/>"
	  session.timeout=30
	  response.write "현재 session timeout: " & session.timeout & "<br/>"
	  session.abandon
	  %>
    <body>
</html>	