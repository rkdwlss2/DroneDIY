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
	
    Dim id,pw
    id=request("LoginID")
    pw=request("LoginPW")
    
	sql = "SELECT * FROM 회원 WHERE 회원ID='{LoginID}' AND 비밀번호='{LoginPW}'"
	sql = Replace(sql,"{LoginID}",id)
	sql = Replace(sql,"{LoginPW}",pw)
	Set Rs = Dbcon.Execute(sql)
	
	if(Rs.Eof) then
	   response.write "<script> alert('잘못입력하거나 없는 회원입니다.'); </script>"
	   response.write "<script> document.location.href='login.asp'; </script>"
	else
	   session("ID")=Rs("회원ID")
	   session("이름")=Rs("이름")
	   response.redirect("myhome.asp")
	end if
 
	Dbcon.Close()
	Set Dbcon = Nothing
	Set Rs = Nothing
%>


