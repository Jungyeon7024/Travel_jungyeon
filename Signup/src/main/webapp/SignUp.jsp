


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<title>회원가입</title>

</head>
<body>
<h1>회원가입</h1>
<form action="SignUpServlet" method="post" >

		
		

		<label for = "mname" >이름 : <em> * </em> </label>
		<input type = "text" id ="mname" name="mname" required><br>
				
		<label for = "mid">아이디 : <em> * </em> </label>
		<input type = "text" id = "mid" name = "mid" required><br>
		
		<label for = "password">비밀번호 :<em> * </em> </label>
		<input type = "password" id = "password" name = "password" required><br>
		
							
		<label for = "phn"> 전화번호 : <em> * </em> </label>
		<input type = "number" id = "phn" name = "phn" required><br>
		
		
		<label for = "mbirth">생년월일 : </label>
		<input type = "date" id = "mbirth" name = "mbirth" ><br>
		
		
		<label for = "memail">이메일 : </label>
		<input type = "email" id = "memail" name = "memail" ><br>
		
						
		<p>
		<label for = "gender">성별 : </label>
	
		 
              <input type="radio" name="gender" value="man">남
              <input type="radio" name="gender" value="woman">여
           
		
		</p>
		  	<button  type="submit" onclick="Validation()"> 회원 가입</button>
            <input type="reset" onclick="alert('초기화 했습니다.')" value="다시 입력">
<script>
function Validation()	{
		
	 
	
	
		var password = document.getElementById("password")
		var mid = document.getElementById("mid")
		var mname = document.getElementById("mname")
		var phn = document.getElementById("phn")
		
		 
		 
		 
		 var regPassword = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{10,12}$/;
	
		 if(mname.value == ""){
	            alert("이름을 입력하세요.")
	            mname.focus();
	            
	            return false;
	        }
		 
		 
		 
		 
		 if(mid.value == ""){
	            alert("아이디를 입력하세요.")
	            mid.focus();
	            
	            return false;
	        }
		
		 		 	 		 
		 		 
		 if(password.value == ""){
	            alert("비밀번호를 입력하세요.")
	            password.focus();
	            
	            return false;
	        }
	        
	        else if(!regPassword.test(password.value)){
	            alert("10~12자 영문 대소문자, 숫자, 특수문자를 이용해 입력하세요.")
	            password.focus();
	        
	            return false;
	        }
	        else if(password.value == mid.value){
	            alert("아이디와 동일한 비밀번호를 사용할 수 없습니다.")
	            password.focus();
	            return false;
	        }
		 
		 
		 if(phn.value == ""){
	            alert("전화번호를 입력하세요.")
	            phn.focus();
	            
	            return false;
	        }
		 return true; //
		// document.signUpForm.submit();
		 
}







</script>



</form> 





</body>








</html>