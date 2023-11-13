


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" type="text/css" href="StyleSH.css">
<meta charset="UTF-8">

<title>회원가입</title>

</head>


    
<form action="SignUpServlet" method="post" >
   
<body>
<section>
 <h1>회원가입</h1>
        
        
        
        <div>
		<label for = "mname" >이름 : <em> * </em> </label>
		<input type = "text" id ="mname" name="mname" required>
	
        
        </div>
        
        
       	

    <div>
		<label for = "mid">아이디 : <em> * </em> </label>
		<input type = "text" id = "mid" name = "mid" required>
		
		
    </div>
         
         
         <div>
		<label for = "password">비밀번호 :<em> * </em> </label>
	    <input type = "password" id = "password" name = "password" required>
    </div>
        <div>			
		<label for = "phn"> 전화번호 : <em> * </em> </label> 
		<input type = "number" id = "phn" name = "phn" required><br>
    </div>

        <div>
            <label for = "memail">이메일 : </label><br>
            <input type = "email" id = "memail" name = "memail" ><br>
        </div>



        <br>
        




        <p>
		<label for = "mbirth">생년월일 : </label>
		<input type = "date" id = "mbirth" name = "mbirth" >
        </p>
		
        
		
        
						
		<p>
		<label for = "gender">성별 : </label>
	
		 
              <input type="radio" name="gender" value="man">남
              <input type="radio" name="gender" value="woman">여
           
            </p>
		  	
        
           
        
            <o>
            <button  type="submit" onclick="Validation()"> 회원 가입</button>
            <button type="reset" onclick="alert('초기화 했습니다.')">다시 입력</button>
        	</o>
       </section>     

</body>	




     
            
<script>


function Validation()	{
		
	 
	
	
		var password = document.getElementById("password")
		var mid = document.getElementById("mid")
		var mname = document.getElementById("mname")
		var phn = document.getElementById("phn")
		var mbirth = document.getElementById("mbirth")
		 
		 var regphn = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/
		 
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
		 
		 if(mbirth.value == ""){
	            alert("생년월일을 입력하세요")
	            mbirth.focus();
	            
	            return false;
	        }
		
		 
		 
		 return true; //
		// document.signUpForm.submit();
		 
		 
		 
		 
}







</script>



</form>














</html>