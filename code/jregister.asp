<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<html>
    <head>
        <link href='css/reset.css' rel='stylesheet' type='text/css'>
       <style>
           #header {background:gray;}
              #header ul{text-align:right}
                 #header ul li {display:inline-block}
          #content {background:white;}
            #footer {background:gray;}       
      </style>
     
    <script>
      function move(){
            document.location.href="joblogin.asp"
            return false;
         }
    </script>
   </head>    
   <body>
   <div id="header">
           <ul>
               <li>&nbsp</li>
         </ul>
   </div>      


<div id="content">
   <script src="jregisterok.js"> </script>
   <form name="registerform" action="jregister_ok.asp" method="post" onsubmit="return submitcheck();">
   <table>
        <tr>
              <td> 직원번호 </td>
            <td><input type="text" name="registerID" placeholder="직원번호를 입력해주세요"/></td>
      </tr>

        <tr>
              <td> 비밀번호 </td>
            <td><input type="text" name="registerPW" placeholder="PW를 입력해주세요"/></td>
      </tr>
      <tr>
              <td> 비밀번호 확인 </td>
            <td><input type="text" name="registerPW2" placeholder="PW를 다시 입력해주세요"/></td>
      </tr>
      <tr>
              <td> 이름 </td>
            <td><input type="text" name="registerName" placeholder="이름을 입력해주세요"/></td>
      </tr>
      <tr>
              <td> 휴대전화번호 </td>
            <td><input type="text" name="phoneNumber" placeholder="01x-xxxx-xxxx 형식으로 입력"/></td>
      </tr>
   
    
    </table>
   <input type="submit" value="가입하기"  name="register" />
</form>
</div>   
<div id="footer">
<input type="button" value="이전화면" onclick="move()"/>
</div>
</body>
</html>