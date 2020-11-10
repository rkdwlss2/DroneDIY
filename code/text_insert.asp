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

    Dim number,txt,nowdate,id
	
	number=session.contents("Qcount")+1
    txt=request("txt")
    id=session.contents("ID")
	
	sql="Insert into 문의 values ('{number}','{txt}','{nowdate}','{id}')"
	sql = Replace(sql,"{number}",number)
	sql = Replace(sql,"{txt}",txt)
	sql = Replace(sql,"{nowdate}",now())
	sql = Replace(sql,"{id}",id)
	
	Set Rs=Dbcon.Execute(sql)
	
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
	session("Qcount")=session("Qcount")+1
	response.write "<script> alert('작성완료.'); </script>"
	response.write "<script> document.location.href='boardtest.asp'; </script>"
%>	
