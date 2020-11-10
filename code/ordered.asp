<!-- #include virtual="/header2.asp" -->
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
	
	Dim id
    id = session.contents("ID")
	sql = "SELECT 부품명,가격,주문날짜 FROM 주문내역,포함,부품 WHERE 주문내역.주문번호 = 포함.주문번호 AND 부품.부품번호=포함.부품번호 AND 회원ID='{id}'"
	sql = Replace(sql,"{id}",id)
	Set Rs = Dbcon.Execute(sql)
	
	sql2 = "SELECT SUM(부품.가격) AS 합산 FROM 주문내역,포함,부품 WHERE 주문내역.주문번호 = 포함.주문번호 AND 부품.부품번호=포함.부품번호 AND 회원ID='{id}' group by 주문날짜 "
	Set Rs2 = Dbcon.Execute(sql2)
	sql2 = Replace(sql2,"{id}",id)
	
    response.write("<div id='content'>")
    response.write "<table>"
    response.write "<colgroup>"
    response.write "<col width='10%'/>"
    response.write "<col width='*'/>"
    response.write "<col width='14%'/>"
    response.write "</colgroup>"
    response.write "<thead>"
    response.write "<th scope='주문날짜'>주문날짜</th>" 
    response.write "<th scope='부품명'>부품명</th>"
    response.write "<th scope='가격'>가격</th>"
    response.write "</thead>"
    response.write "<tbody>"
	
	do while not(RS.Eof)
	          response.write "<tr>"
              response.write "<td>" & Rs("주문날짜") & "</td>"
              response.write "<td class='article'>" 
              response.write Rs("부품명") & "</a></td>"
              response.write "<td>" & Rs("가격") & "</td>"
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