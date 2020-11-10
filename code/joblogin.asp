<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<html>
    <head>
        <link href='css/reset.css' rel='stylesheet' type='text/css'>
       <style>
           #header {background:white;}
              #header ul{text-align:center}
			  #header ul{font-family:verdana}
			  #header ul{font-size:180%}
                 #header ul li {display:inline-block}
		   #header2 {background:gray;}
              #header2 ul{text-align:right}
                 #header2 ul li {display:inline-block}
          #content {background:white;}
            #footer {background:gray;} 
			p{
				text-align:center;
			}			
      </style>
      <script>
      </script>
   </head>    
   <script>
			function move(){
				document.location.href="firstpage.asp";
			}
			function movejregister(){
				document.location.href="jregister.asp";
			}
   </script>
   <body>
   <div id="header">
           <ul id="title">
               <li>드론 DIY 쇼핑몰</li>

         </ul>
	</div>
	<div id="header2">
		 <ul id="right">
		      <li> &nbsp</li>
		 
		 
		 </ul>
	
   </div>      


<div id="content">
   <form action="joblogin_ok.asp" method="get">
   <table>
        <tr>
              <td> 직원번호 </td>
            <td><input type="text" name="EMPNUM" placeholder="직원번호를 입력해주세요"/></td>
      </tr>
        <tr>
              <td> 비밀번호 </td>
            <td><input type="text" name="EMPPW" placeholder="PW를 입력해주세요"/></td>
      </tr>
      
    </table>
   <input type="submit" value="직원로그인" />   <input type="button" value="직원회원가입" onclick="movejregister()"/>
</form>
</div>   
<div id="footer">
<input type="submit" value="이전화면" onclick="move()"/>
</div>
</body>
</html>    