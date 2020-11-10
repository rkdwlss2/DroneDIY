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
	
    Dim num,pw
    num=request("EMPNUM")
    pw=request("EMPPW")
    
	sql = "SELECT * FROM 직원 WHERE 직원번호={EMPNUM} AND 비밀번호='{EMPPW}'"
	sql = Replace(sql,"{EMPNUM}",num)
	sql = Replace(sql,"{EMPPW}",pw)
	Set Rs = Dbcon.Execute(sql)
	
	if(Rs.Eof) then
	   response.write "<script> alert('잘못입력하거나 없는 직원입니다.'); </script>"
	   response.write "<script> document.location.href='login.asp'; </script>"
	else
	   session("EMPnum")=Rs("직원번호")
	   response.redirect("myhome.asp")
	end if
 
	Dbcon.Close()
	Set Dbcon = Nothing
	Set Rs = Nothing
%>


