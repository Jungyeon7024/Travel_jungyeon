<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
    <h1>��۾���</h1>
    <div class="comment">
        <input id="commentInput" placeholder="����ۼ��ϱ�">
        <button onclick="addComment()">�ۼ��Ϸ�</button>
        <div id="comments">
            <!-- ����� ǥ�õ� ���-->
        </div>
    </div>
</body>
<foot></foot>
<script>
    function addComment(){
        const commentInput = document.getElementById("commentInput");
        const commentText = commentInput.value;

        if(commentText.trim() ===""){
            alert("����� �ۼ����ּ���.");
            return;
        }



        const commentsBox = document.getElementById("comments");

        const commentDIV = document.createElement("div");
        commentDIV.className ="comment";
        commentDIV.textContent = commentText;

        commentsBox.appendChild(commentDIV);
        commentInput.value= " ";
    }
</script>
</html>