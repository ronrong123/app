<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>homework3_array.jsp</title></head>
<body>
<input type="text" id="userno">
<input type="text" id="username">
<input type="text" id="userId">
<input type="text" id="userRegDate">
<div id="result">1,홍길동,hong,2019/12/01</div>
<div id="show"></div>
<script>
	//div의 값을 콤마(,)로 분리하여 각각의 텍스트필드에 출력
	var str = document.getElementById("result").innerHTML;
	var afterStr = str.split(',');
	document.getElementById("userno").value = afterStr[0];
	document.getElementById("username").value = afterStr[1];
	document.getElementById("userId").value = afterStr[2];
	document.getElementById("userRegDate").value = afterStr[3];
	//sprit: String을 잘라서 배열로 변경
	
</script>
</body>
</html>