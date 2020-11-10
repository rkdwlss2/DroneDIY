<!-- #include virtual="/header2.asp" -->

<%@Language="VBScript" CODEPAGE="65001"%>
<%
Response.Charset="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html; charset=utf-8"
%>
<%
    num = request.cookies("Qnumber")
	
    Set Dbcon = Server.CreateObject("ADODB.Connection")
    Dbcon.Open Application("dbConnect")
   
    if Dbcon.state<> 1 Then
                    Response.Write "데이터베이스에 연결 X<br/>"
					Response.end
	End if		
	
	sql = "SELECT 작성시간,답변내역,이름 FROM 답변댓글,직원 WHERE 답변댓글.직원번호 = 직원.직원번호 AND 문의번호 = {num}"
	sql = Replace(sql,"{num}",num)
	Set Rs = Dbcon.Execute(sql)
	
    response.write("<div id='content'>")
    response.write "<table>"
    response.write "<colgroup>"
    response.write "<col width='10%'/>"
    response.write "<col width='*'/>"
    response.write "<col width='14%'/>"
    response.write "</colgroup>"
    response.write "<thead>"
    response.write "<th scope='작성시간'>작성시간</th>" 
    response.write "<th scope='답변내역'>답변내역</th>"
    response.write "<th scope='직원명'>직원명</th>"
    response.write "</thead>"
    response.write "<tbody>"
	
	do while not(RS.Eof)
	          response.write "<tr>"
              response.write "<td>" & Rs("작성시간") & "</td>"
              response.write "<td class='article'>" 
              response.write Rs("답변내역") & "</a></td>"
              response.write "<td>" & Rs("이름") & "</td>"
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