<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link href="styles.css" rel="stylesheet" />
</head>
<body>
<form action="SignUpServlet" method="post">
		<label for = "mno"> 회원번호 :</label>
		<input type = "text" id = "mno" name = "mno" required><br>
		
		<label for = "mname" >이름 :</label>
		<input type = "text" id ="mname" required><br>
		
		<label for = "memail">이메일 : </label>
		<input type = "email" id = "memail" name = "memail" required><br>
		
		<label for = "mbirth">생년월일 : </label>
		<input type = "date" id = "mbirth" name = "mbirth" required><br>
		
		<label for = "mid">아이디 : </label>
		<input type = " mid" id = "mid" name = "mid" required><br>
		
		<label for = "password">비밀번호 : </label>
		<input type = "password" id = "password" name = "password" required><br>
		
		<p>
		<label for = "gender">성별 : </label>
	
		 
              <input type="radio" name="gender" value="man">남
              <input type="radio" name="gender" value="woman">여
           
		
		</p>
		
		<input type ="submit" value = "가입">
</form> 

</body>
</html>