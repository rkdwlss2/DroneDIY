<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<html>
   <head>
      <title> 드론 구성품 검색 </title>
      <link rel="stylesheet" type="text/css" href = "searchStyle.css">
      <link rel="stylesheet" type="text/css" href = "menuStyle.css">
     <script>
      function move(){
            document.location.href="boardtest.asp";
            return false;
         }
         function movenew(){
            document.location.href="newpart.asp";
            return false;
         }
         function moveorder(){
            document.location.href="ordered.asp";
            return false;
         }
		 function movepart(){
            document.location.href="search.asp";
            return false;
         }
    </script>
   </head>
   <body>
      <hr> 
      <div id="menu"; align = "center">
         <input type = "button" id = "menu1" value = "부품주문" style= "width: 150px; height: 50px" onclick="movepart()"  >
         <input type = "button" id = "menu2" value = "질문게시판" style= "width: 150px; height: 50px " onclick="move()" >
         <input type = "button" id = "menu3" value = "신규부품신청" style= "width: 150px; height: 50px"  onclick="movenew()">
         <input type = "button" id = "menu4" value = "주문내역" style= "width: 150px; height: 50px"  onclick="moveorder()">
              </div> 
      <hr>