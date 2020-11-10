<%@Language="VBScript" CODEPAGE="65001"%>
<!-- #include virtual="/header2.asp" -->
<%
Response.Charset="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html; charset=utf-8"
%>
<script>
   var java
   function mylist(n,a,s){
     alert("장바구니에 담았습니다.")   
     document.cookie=a+'='+s;
   }    
</script>

<%
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim a ,frame,pro,mot,cam,bat
   if Dbcon.state<> 1 Then
                    Response.Write "데이터베이스에 연결 X<br/>"
               Response.end
   End if   
   
   frame="프레임"
   pro="프로펠러"
   mot="모터"
   cam="카메라"
   bat="배터리"
   response.write("<div id='content'>")
   response.write("<table border = 1px>")
   
   response.write("<tr>")
   response.write("<td> 부품명 </td>")
   response.write("<td> 가로 </td>")
   response.write("<td> 세로 </td>")
   response.write("<td> 높이 </td>")
   response.write("<td> 무게 </td>")
   response.write("<td> 가격 </td>")
   
    if request("Frame") = frame Then
      sql = "SELECT * FROM 부품,프레임 WHERE 부품.부품번호 = 프레임.부품번호"
      response.write("<td> 팔길이 </td>")
      response.write("<td> 색상 </td>")
   elseif request("Pro") = pro then
       sql = "SELECT * FROM 부품,프로펠러 WHERE 부품.부품번호 = 프로펠러.부품번호"
      response.write("<td> 재질 </td>")
      response.write("<td> 색상 </td>")
    elseif request("Mot") = mot then
       sql = "SELECT * FROM 부품,모터 WHERE 부품.부품번호 = 모터.부품번호"
      response.write("<td> KV </td>")
      response.write("<td> 파워 </td>")
    elseif request("Cam") = cam then
       sql = "SELECT * FROM 부품,카메라 WHERE 부품.부품번호 = 카메라.부품번호"
      response.write("<td> 렌즈 </td>")
      response.write("<td> 화소 </td>")
    elseif request("Bat") = bat then
        sql = "SELECT * FROM 부품,배터리 WHERE 부품.부품번호 = 배터리.부품번호"   
      response.write("<td> 용량 </td>")
      response.write("<td> 전압 </td>")
   end if
   
   response.write("</tr>")
   Set Rs = Dbcon.Execute(sql)
   
   
   do while not(RS.Eof)    
              response.write("<tr>")
           response.write("<td>" & Rs("부품명") & "</td>")
           response.write("<td>" & Rs("가로") & "</td>")
           response.write("<td>" & Rs("세로") & "</td>")
           response.write("<td>" & Rs("높이") & "</td>")
           response.write("<td>" & Rs("무게") & "</td>")
           response.write("<td>" & Rs("가격") & "</td>")
            if request("Frame") = frame Then                 
                   response.write("<td>" & Rs("팔길이") & "</td>")
                   response.write("<td>" & Rs("색상") & "</td>")
               a="Frame"
              elseif request("Pro") = pro then       
                   response.write("<td>" & Rs("재질") & "</td>")
                   response.write("<td>" & Rs("색상") & "</td>")
               a="Pro"
               elseif request("Mot") = mot then     
                   response.write("<td>" & Rs("KV") & "</td>")
                   response.write("<td>" & Rs("파워") & "</td>")
               a="Mot"
               elseif request("Cam")= cam then  
                   response.write("<td>" & Rs("렌즈") & "</td>")
                   response.write("<td>" & Rs("화소") & "</td>")
               a="Cam"
               elseif request("Bat") = bat then      
                  response.write("<td>" & Rs("용량") & "</td>")
                  response.write("<td>" & Rs("전압") & "</td>")
              a="bat"
              end if        

%>            
   <td> <input type= "button" name="<%=Rs("부품명") %>" value="담기" onclick="mylist('<%=Rs("부품번호") %>','<%=a%>','<%=Rs("부품명") %>')"/> <td>
  

<%   
           response.write("</tr>")
           Rs.movenext
   Loop
    
     request.cookies("mylist")
     response.write "</ul>"                
     response.write "</div>"
     
   Dbcon.Close()
   Set Dbcon = Nothing
   Set Rs = Nothing
   
%>
</div>
</body>
</html>
