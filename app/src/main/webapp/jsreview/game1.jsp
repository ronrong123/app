<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>	
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div { display: inline-block; 
	width : 100px; 
	height: 100px;
	border: 1px solid black;}
</style>

</head>
<body>
<!-- 클릭된 태그를 삭제하고 아무것도 남은게 없으면 모두 제거되었다고 메세지를 풀어줌 -->
<script>
	for(i=0; i<10; i++) {
		var div = document.createElement("div");
		div.innerHTML = i;
		div.onclick = clickHandler
		document.body.appendChild(div);
	}
	function clickHandler(e) {
		console.log(e.target.innerHTML, '클릭됨')
		this.remove();
		var len = document.getElementsByTagName("div").length;
		console.log(len + "개 남음");
		if(len == 0){
			alert("끝!");
		}
		//1to 50 게임 참고
	}
</script>
</body>
</html>