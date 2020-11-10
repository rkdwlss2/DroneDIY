window.onload = function () {
	
	document.Myscript.menu1.onclick = function moveOrder(){
		location.href = "http://localhost:8080/search.asp";
	};
	
	document.Myscript.menu2.onclick = function moveQnA(){
		location.href = "http://localhost:8080/home.asp";
	};

	document.Myscript.signUpButton.onclick = function moveSignUp(){
		location.href = "http://localhost:8080/signUpOption.asp";
	};
	
	

};
