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
	
	Dim Qnum
	
	sql = "SELECT * FROM 신규부품"
	Set Rs = Dbcon.Execute(sql)
	
	response.write("<div id='content'>")
	response.write("<table border = 1px>")
    response.write("<tr>")
	response.write("<td> 신규부품번호 </td>")
	response.write("<td> 부품종류 </td>")
	response.write("<td> 요구내역 </td>")
	response.write("<td> 요청일자 </td>")
	response.write("<td> 회원ID </td>")
	response.write("<td> 승인여부 </td>")
	
	response.write "<form name=form1 action=login.asp method='post'>"
	do while not(RS.Eof)
	          response.write "<tr>"
              response.write("<td>" & Rs("신규부품번호") & "</td>")
			  response.write("<td>" & Rs("부품종류") & "</td>")
			  response.write("<td>" & Rs("요구내역") & "</td>")
			  response.write("<td>" & Rs("요청일자") & "</td>")
			  response.write("<td>" & Rs("회원ID") & "</td>")
			  if Rs("승인여부") <> 1 then
			     response.write "<td> <input type='button' value='승인'/> </td>"			     
			  else			    
				 response.write("<td>" & Rs("승인여부") & "</td>")
			  end if
              response.write "</tr>"
			  Rs.movenext
	Loop
	
	response.write "</tbody>"
	response.write("</table>")
	response.write("</div>")
	
	Dbcon.Close()
	Set Dbcon = Nothing
	Set Rs = Nothing
%>