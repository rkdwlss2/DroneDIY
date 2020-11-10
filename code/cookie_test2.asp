 <!-- #include virtual="/header2.asp" -->


   <style type="text/css">
     table{
        width:70%;
        border-collapse:collapse;
        border-top:2px solid #8d8d8d;

}
 th, td {
    border-bottom: 1px solid #8d8d8d;
   padding: 10px;
  }
   </style>
 <script type="text/javascript">
      <!--   alert(document.cookie);-->
      <!--   document.write(document.cookie);-->
        var getCookie = function(name){
              var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
              return value? value[2] : null;
          }
       
         var is_bat=getCookie('bat'); 
         var bat_number=getCookie('batnumber')
       document.write('<table>');
       
       
       document.write('<tr>');
       document.write('<td>부품종류</td>');
       document.write('<td>부품명</td>');
       document.write('</tr>');
       
       document.write('<tr>');
         document.write('<td>Battery</td>');
       document.write('<td>'+is_bat+'</td>');
       document.write('</tr>');

         
         var is_Frame=getCookie('Frame');
       var Frame_number=getCookie('Framenumber')
       document.write('<tr>');
         document.write('<td>Frame</td>');
       document.write('<td>'+is_Frame+'</td>');
         document.write('</tr>');
       

         var is_Pro=getCookie('Pro');
       var Pro_number=getCookie('Pronumber')
       document.write('<tr>');
         document.write('<td>프로펠러</td>');
       document.write('<td>'+is_Pro+'</td>');
       document.write('</tr>');
       

         var is_Mot=getCookie('Mot');
       var Mot_number=getCookie('Motnumber')
       document.write('<tr>');
         document.write('<td>모터</td>');
       document.write('<td>'+is_Mot+'</td>');
       document.write('</tr>');
       

         var is_Cam=getCookie('Cam');
       var Cam_number=getCookie('Camnumber')
       document.write('<tr>');
         document.write('<td>카메라</td>');
       document.write('<td>'+is_Cam+'</td>');
       document.write('</tr>');
       
       document.write('</table>');
       
      
</script>

<select id='cho' size='6' onchange='selected()'>
    <option value='' selected>-- 선택 --</option>
    <option value='0'>부품주문하기</option>
    <option value='1'>조립주문하기</option>
	
</select>

<input type="button" value="주문하기" onclick = document.location.href='jangbaguny.asp'>

<script>
function selected() {
   var obj = document.getElementById('cho');
   var index = obj.selectedIndex;
   var value = obj.options[index].value;
   document.cookie='zeroone='+value;
}
</script>



