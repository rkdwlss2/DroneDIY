<!-- #include virtual="/header2.asp" -->
<%@Language="VBScript" CODEPAGE="65001"%>
<%
Response.Charset="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html; charset=utf-8"
%>

<script>
   var java
   function comm(n){
      document.cookie='Qnumber'+'='+n;
	  document.location.href="comment.asp"
   }
</script>

<%
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   
   if Dbcon.state<> 1 Then
                    Response.Write "데이터베이스에 연결 X<br/>"
					Response.end
	End if	
	
	Dim Qnum
	
	sql = "SELECT * FROM 문의"
	Set Rs = Dbcon.Execute(sql)
	
    response.write("<div id='content'>")
    response.write "<table>"
    response.write "<colgroup>"
    response.write "<col width='10%'/>"
    response.write "<col width='*'/>"
    response.write "<col width='14%'/>"
    response.write "</colgroup>"
    response.write "<thead>"
    response.write "<th scope='번호'>번호</th>" 
    response.write "<th scope='제목'>제목</th>"
    response.write "<th scope='등록일'>등록일</th>"
    response.write "</thead>"
    response.write "<tbody>"
	
	response.write "<form name=form1 action=login.asp method='post'>"
	do while not(RS.Eof)
	response.write "<tr>"
    response.write "<td>" & Rs("문의번호") & "</td>"
    response.write "<td class='article'>" 
	%>
	<a href="#none" onclick = "comm(<%=Rs("문의번호")%>)"> <%=Rs("문의내역")%> </a></td>
    <%
	response.write "<td>" & Rs("작성시간") & "</td>"
    response.write "</tr>"
			  Rs.movenext
	Loop
	
	response.write "</tbody>"
	response.write("</table>")
	response.write("</div>")
	
	sql2 = "SELECT COUNT(*) AS A FROM 문의"
	Set Rs2 = Dbcon.Execute(sql2)
	session("Qcount")=Rs2("A")
	
	Dbcon.Close()
	Set Dbcon = Nothing
	Set Rs = Nothing
	response.write "<input type='button' id='boardbutton' value='글쓰기' onclick=document.location.href='text.asp'>"
%>