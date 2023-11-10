<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입에 성공!</h1>
<h2>회원가입 정보 : </h2>
<p> 전화번호 : <%= session.getAttribute("phn") %> </p>
<p> 이름 :<%= session.getAttribute("mname") %> </p>
<p> 이메일 :<%=session.getAttribute("memail") %> </p>

<p> 성별 : <%=session.getAttribute("gender") %> </p>

</body>
</html>