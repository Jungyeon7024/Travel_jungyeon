<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>ȸ�����Կ� ����!</h1>
<h2>ȸ������ ���� : </h2>
<p>ȸ����ȣ : <%= session.getAttribute("mno") %> </p>
<p> �̸� :<%= session.getAttribute("mname") %> </p>
<p> �̸��� :<%=session.getAttribute("memail") %> </p>

<p> ���� : <%=session.getAttribute("gender") %> </p>

</body>
</html>