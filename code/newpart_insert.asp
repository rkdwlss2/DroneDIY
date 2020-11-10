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

    Dim k,txt,nowdate,id,yes
	
	sql2 = "SELECT COUNT(*) AS A FROM 신규부품"
	Set Rs2 = Dbcon.Execute(sql2)
	session("Ncount")=Rs2("A")
	
	number=session.contents("Ncount")+1
	k=request("kinds")
    txt=request("txt")
    id=session.contents("ID")
	yes="0"
	
	sql="Insert into 신규부품 (신규부품번호, 부품종류, 요구내역, 요청일자, 회원ID, 승인여부) values ('{number}','{kinds}','{txt}','{nowdate}','{id}','{yes}')"
	sql = Replace(sql,"{number}",number)
	sql = Replace(sql,"{kinds}",k)
	sql = Replace(sql,"{txt}",txt)
	sql = Replace(sql,"{nowdate}",now())
	sql = Replace(sql,"{id}",id)
	sql = Replace(sql,"{yes}",yes)
	
	Set Rs=Dbcon.Execute(sql)
	
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
	session("Ncount")=session("Ncount")+1
	response.write "<script> alert('신청완료.'); </script>"
	response.write "<script> document.location.href='newpart.asp'; </script>"
%>	
