<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<!DOCTYPE html>
<html lang="en">
   <head>
     <meta charset="UTF-8">
     <meta name="veiwport" content="width-device-width, initial-scale=1">
      <title> 드론 구성품 검색 </title>
      <link rel="stylesheet" type="text/css" href = "searchStyle.css">
      <link rel="stylesheet" type="text/css" href = "menuStyle.css">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
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
       
       function movecomment(){
            document.location.href="cookie_test2.asp";
            return false;
         }
    </script>
    <style type="text/css">
    body{
        font-family:"맑은 고딕";
        font-size:0.9em;
        color:#666;
}
    a{
        text-decoration:none;
        color:#09f;
}
    a:hover{

        text-decoration:underline;
}
    caption{
        display:none; /*안보이게 설정, 
                              화면에 보이지는 않지만 스크린리더리로 읽어짐.*/
        
    }
    table{
        width:80%;
      margin:auto;
        border-collapse:collapse;
        border-top:2px solid #8d8d8d;

}
    th{
        padding:10px 8px; /*padding: vertical horizontal;*/
        background:#f9f9f9;
        color:#666;
        border-bottom:1px solid #8d8d8d;
    }
    
    td{
        padding:10px 8px; /*padding: vertical horizontal;*/
        text-align:center;
        line-height:1.25em;
        color:#666;
        border-bottom:1px solid #8d8d8d;
    }

    td.article{ /*article 클래스가 적용된 열만 좌측 정렬*/
        text-align:left;
    }
     
   
  </style>

   </head>
   <body>
      <hr> 
      <div id="menu"; align = "center">
         <input type = "button" id = "menu1" value = "부품주문" style= "width: 150px; height: 50px" onclick="movepart()" >
         <input type = "button" id = "menu2" value = "질문게시판" style= "width: 150px; height: 50px " onclick="move()" >
         <input type = "button" id = "menu3" value = "신규부품신청" style= "width: 150px; height: 50px"  onclick="movenew()">
         <input type = "button" id = "menu4" value = "주문내역" style= "width: 150px; height: 50px"  onclick="moveorder()">
         <input type = "button" id = "menu5" value = "장바구니" style= "width: 150px; height: 50px"  onclick="movecomment()">       
       </div> 
      <hr>
     