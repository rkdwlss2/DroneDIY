<% Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Application("dbConnect")

sql="EXEC sp_helpdb;"
Set Rs=Dbcon.Execute(sql)

do while not(Rs.Eof)
   response.write(Rs("name") & "")
   response.write(RS("db_size") & "")
   response.write(RS("Owner") & "")
   response.write(RS("dbid") & "")
   response.write(RS("created") & "")
   response.write("<br/>")
   Rs.movenext
Loop

Dbcon.Close()
Set Dbcon=Noting
Set Rs=Nothing
%>