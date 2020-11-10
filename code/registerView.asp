<!-- #include virtual="/header.asp" -->
<%@Language="VBScript" CODEPAGE="65001"%>
<%
Response.Charset="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html; charset=utf-8"
%>

<%
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   
   if Dbcon.state<> 1 Then
                    Response.Write "데이터베이스에 연결 X<br/>"
					Response.end
	End if	
	
	sql = "SELECT * FROM 회원"
	Set Rs = Dbcon.Execute(sql)
	
	response.write("<div id='content'>")
	response.write("<table border = 1px>")
	
	response.write("<tr>")
	response.write("<td> 아이디 </td>")
	response.write("<td> 이름 </td>")
	response.write("<td> 휴대폰번호 </td>")
	response.write("<td> 이메일 </td>")
	response.write("<td> 주소 </td>")
	response.write("</tr>")
	
	do while not(RS.Eof)
	          response.write("<tr>")
			  response.write("<td>" & Rs("회원ID") & "</td>")
			  response.write("<td>" & Rs("이름") & "</td>")
			  response.write("<td>" & Rs("휴대폰번호") & "</td>")
			  response.write("<td>" & Rs("이메일") & "</td>")
			  response.write("<td>" & Rs("주소") & "</td>")
			  response.write("</tr>")
			  Rs.movenext
	Loop
	
	
	response.write("</table>")
	response.write("</div>")
	
	Dbcon.Close()
	Set Dbcon = Nothing
	Set Rs = Nothing
%>

<!-- #include virtual="/footer.asp"-->	