window.onload = function submitcheck(){
   document.registerform.register.onclick = 
   function submitcheck(){
	   
      var registerForm = document.registerform;
      var id = registerForm.registerID.value;
      var pw = registerForm.registerPW.value;
      var pw_ok = registerForm.registerPW2.value;
      var name = registerForm.registerName.value;
      var phoneNumber = registerForm.phoneNumber.value;
	  var address=registerForm.registerAddress.value;
	  var email=registerForm.registerEmail.value;
      var submitButton = registerForm.register.value;
      var regex;
      
      if(id==""){alert("ID를 입력해주세요."); return false;}
      if(pw==""){alert("비밀번호를 입력해주세요."); return false;}
      if(pw_ok==""){alert("비밀번호 확인을 입력해주세요."); return false;}
      if(name==""){alert("이름을 입력해주세요."); return false;}
      if(phoneNumber==""){alert("전화번호를 입력해주세요."); return false;}
      
      if(pw!=pw_ok){alert("비밀번호와 비밀번호 확인이 다릅니다."); return false;}
      
      regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
      if(regex.test(email) ==false){
         alert("잘못된 이메일입니다.");
         return false;
      }
      
      regex=/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
      if(regex.test(phoneNumber) == false){
         alert("잘못된 전화번호입니다.");
         return false;
      }
      alert("회원가입 완료")
	  return true;
   }
}

