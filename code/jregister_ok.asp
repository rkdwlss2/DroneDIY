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

    Dim id,pw,pw2,name,number
	
    id=request("registerID")
    pw=request("registerPW")
    name=request("registerName")
    number=request("phoneNumber")

   
   sql="Insert into 직원 values ('{id}','{name}','{number}','{pw}')"
   sql = Replace(sql,"{id}",id)
   sql = Replace(sql,"{name}",name)
   sql = Replace(sql,"{number}",number)
   sql = Replace(sql,"{pw}",pw)

  	Set Rs=Dbcon.Execute(sql)
   
   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
%>   
<script>
    document.location.href="jregister.asp";
</script>