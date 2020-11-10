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
				document.location.href="text.asp";
			}
			function movenew(){
				document.location.href="newpart.asp";
				return false;
			}
			function moveorder(){
				document.location.href="order.asp";
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
        width:800px;
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
         <input type = "button" id = "menu1" value = "부품주문" style= "width: 150px; height: 50px"  >
         <input type = "button" id = "menu2" value = "질문게시판" style= "width: 150px; height: 50px " onclick="move()" >
         <input type = "button" id = "menu3" value = "신규부품신청" style= "width: 150px; height: 50px"  onclick="movenew()">
         <input type = "button" id = "menu4" value = "주문내역" style= "width: 150px; height: 50px"  onclick="moveorder()">
       </div> 
      <hr>
	  <div class="dataTbl1">
    
        <table summary="공지사항 목록입니다.">

            <!--표의 제목-->
            <caption>공지사항</caption>

            <colgroup> 
               <!--col태그는 표에서 하나 이상의 td태그에 대해 속성값을 정의-->
               <!-- 여기서는 각 열의 크기를 지정-->
                <col width="10%"/>
                <col width="*"/>  <!--나머지 크기-->
                <col width="14%"/>
            </colgroup>

            <!--테이블 머리말 부분-->
            <thead>
                <th scope="번호">번호</th> 
                <th scope="제목">제목</th>
                <th scope="등록일">등록일</th>

            </thead>

            <!--테이블 내용 부분-->
            <tbody>
                <tr>
                    <td>33</td>
                    <td class="article"><a href="#none" onclick="move()">공지사항 내용</a></td>
                    <td>2013-07-14</td>
                </tr>
                <tr>
                    <td>32</td>
                    <td class="article"><strong><a href="#none" onclick="move()">공지사항 내용</a></strong></td>
                    <td>2013-07-14</td>
                </tr>
                <tr>
                    <td>31</td>
                    <td class="article"><a href="#none" onclick="move()">공지사항 내용</a></td>
                    <td>2013-07-14</td>
                </tr>
                <tr>
                    <td colspan="3">등록된 질문이 없습니다</td>
                </tr>
            </tbody>

            <!--테이블 꼬리말-->
            <tfoot>
                
            </tfoot>
        </table>

    </div>
	<input type="button" id="boardbutton" value="글쓰기" onclick="move()">
		<div class="container">
			<div class="row">
				<div class="col">
<div class="text-center">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
			</ul>
							</div>
			</div>
		</div>
</div>


   </body>
</html>