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
		<label for = "mno"> ȸ����ȣ :</label>
		<input type = "text" id = "mno" name = "mno" required><br>
		
		<label for = "mname" >�̸� :</label>
		<input type = "text" id ="mname" required><br>
		
		<label for = "memail">�̸��� : </label>
		<input type = "email" id = "memail" name = "memail" required><br>
		
		<label for = "mbirth">������� : </label>
		<input type = "date" id = "mbirth" name = "mbirth" required><br>
		
		<label for = "mid">���̵� : </label>
		<input type = " mid" id = "mid" name = "mid" required><br>
		
		<label for = "password">��й�ȣ : </label>
		<input type = "password" id = "password" name = "password" required><br>
		
		<p>
		<label for = "gender">���� : </label>
	
		 
              <input type="radio" name="gender" value="man">��
              <input type="radio" name="gender" value="woman">��
           
		
		</p>
		
		<input type ="submit" value = "����">
</form> 

</body>
</html>