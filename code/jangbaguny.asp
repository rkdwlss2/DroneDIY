<%@Language="VBScript" CODEPAGE="65001"%>

<%
   batn = request.cookies("bat") 
   framen = request.cookies("Frame")
   pron = request.cookies("Pro")
   motn = request.cookies("Mot")
   camn = request.cookies("Cam")
   zeroone = request.cookies("zeroone")
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   
   if Dbcon.state<> 1 Then
                    Response.Write "데이터베이스에 연결 X<br/>"
					Response.end
	End if	

    Dim number,nowdate,id,bnum,fnum,pnum,mnum,cnum
	
	sqln1 = "SELECT * FROM 부품 WHERE 부품명 = '{name}'"
	sqln1 = Replace(sqln1,"{name}",batn)
	Set Rsn1 = Dbcon.Execute(sqln1)
	
	sqln2 = "SELECT * FROM 부품 WHERE 부품명 = '{name}'"
	sqln2 = Replace(sqln2,"{name}",framen)
	Set Rsn2= Dbcon.Execute(sqln2)
	
	sqln3 = "SELECT * FROM 부품 WHERE 부품명 = '{name}'"
	sqln3 = Replace(sqln3,"{name}",pron)
	Set Rsn3 = Dbcon.Execute(sqln3)
	
	sqln4 = "SELECT * FROM 부품 WHERE 부품명 = '{name}'"
	sqln4 = Replace(sqln4,"{name}",motn)
	Set Rsn4 = Dbcon.Execute(sqln4)
	
	sqln5 = "SELECT * FROM 부품 WHERE 부품명 = '{name}'"
	sqln5 = Replace(sqln5,"{name}",camn)
	Set Rsn5 = Dbcon.Execute(sqln5)
		
	sql1 = "SELECT COUNT(*) AS A FROM 주문내역"
	Set Rs1 = Dbcon.Execute(sql1)
	session("Ocount")=Rs1("A")
	
	number=session.contents("Ocount")+1
    id=session.contents("ID")
	
	sql="Insert into 주문내역 values ({number},'{zeroone}','{nowdate}','{id}')"
	sql = Replace(sql,"{number}",number)
	sql = Replace(sql,"{zeroone}",zeroone)
	sql = Replace(sql,"{nowdate}",now())
	sql = Replace(sql,"{id}",id)
	Set Rs=Dbcon.Execute(sql)
	
	sql2="Insert into 포함  values ({number},{partn},1)"
	sql2 = Replace(sql2,"{number}",number)
	sql2 = Replace(sql2,"{partn}",Rsn1("부품번호"))
	Set Rs2=Dbcon.Execute(sql2)
	
	sql3="Insert into 포함  values ({number},{partn},1)"
	sql3 = Replace(sql3,"{number}",number)
	sql3 = Replace(sql3,"{partn}",Rsn2("부품번호"))
	Set Rs3=Dbcon.Execute(sql3)
	
	sql4="Insert into 포함  values ({number},{partn},1)"
	sql4 = Replace(sql4,"{number}",number)
	sql4 = Replace(sql4,"{partn}",Rsn3("부품번호"))
	Set Rs5=Dbcon.Execute(sql4)
	
	sql5="Insert into 포함  values ({number},{partn},1)"
	sql5 = Replace(sql5,"{number}",number)
	sql5 = Replace(sql5,"{partn}",Rsn4("부품번호"))
	Set Rs5=Dbcon.Execute(sql5)
	
	sql6="Insert into 포함  values ({number},{partn},1)"
	sql6 = Replace(sql6,"{number}",number)
	sql6 = Replace(sql6,"{partn}",Rsn5("부품번호"))
	Set Rs6=Dbcon.Execute(sql6)
	
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
	session("Qcount")=session("Qcount")+1
	response.write "<script> alert('작성완료.'); </script>"
	response.write "<script> document.location.href='boardtest.asp'; </script>"
  
%>

