<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<title>ȸ������</title>

</head>
<body>
<h1>ȸ������</h1>
<form action="SignUpServlet" method="post" id = "joinform">

		
		

		<label for = "mname" >�̸� : <em> * </em> </label>
		<input type = "text" id ="mname" name="mname" required><br>
				
		<label for = "mid">���̵� : <em> * </em> </label>
		<input type = "text" id = "mid" name = "mid" required><br>
		
		<label for = "password">��й�ȣ :<em> * </em> </label>
		<input type = "password" id = "password" name = "password" required><br>
		
							
		<label for = "phn"> ��ȭ��ȣ : <em> * </em> </label>
		<input type = "number" id = "phn" name = "phn" required><br>
		
		
		<label for = "mbirth">������� : </label>
		<input type = "date" id = "mbirth" name = "mbirth" ><br>
		
		
		<label for = "memail">�̸��� : </label>
		<input type = "email" id = "memail" name = "memail" ><br>
		
						
		<p>
		<label for = "gender">���� : </label>
	
		 
              <input type="radio" name="gender" value="man">��
              <input type="radio" name="gender" value="woman">��
           
		
		</p>
		  <button  type="button" onclick="Validation()">ȸ�� ����</button>
            <input type="reset" onclick="alert('�ʱ�ȭ �߽��ϴ�.')" value="�ٽ� �Է�">
</form> 
<script>
function Validation()	{
		
		var password = document.getElementById("password")
		var mid = document.getElementById("mid")
		var mname = document.getElementById("mname")
		var phn = document.getElementById("phn")
		
		 
		 
		 
		 var regPassword = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{10,12}$/;
	
		 if(mname.value == ""){
	            alert("�̸��� �Է��ϼ���.")
	            mname.focus();
	            
	            return false;
	        }
		 
		 
		 
		 
		 if(mid.value == ""){
	            alert("���̵� �Է��ϼ���.")
	            mid.focus();
	            
	            return false;
	        }
		
		 		 	 		 
		 		 
		 if(password.value == ""){
	            alert("��й�ȣ�� �Է��ϼ���.")
	            password.focus();
	            
	            return false;
	        }
	        
	        else if(!regPassword.test(password.value)){
	            alert("10~12�� ���� ��ҹ���, ����, Ư�����ڸ� �̿��� �Է��ϼ���.")
	            password.focus();
	        
	            return false;
	        }
	        else if(password.value == mid.value){
	            alert("���̵�� ������ ��й�ȣ�� ����� �� �����ϴ�.")
	            password.focus();
	            return false;
	        }
		 
		 
		 if(phn.value == ""){
	            alert("��ȭ��ȣ�� �Է��ϼ���.")
	            phn.focus();
	            
	            return false;
	        }
		 
		
		 document.joinForm.submit();
	       
}







</script>




</body>








</html>