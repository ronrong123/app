<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img{transition:0.5s;}
</style>
<script>
	//모든 이미지의 크기를 100px 감소
	function toSm(){		
		//현재 이미지의 크기를 확인
		var img = document.getElementsByTagName("img");
		for(var i =0;i<img.length;i++){
			var s = img[i].width;
			img[i].style.width = parseInt(s) -100 + "px";
		}	
		//크기를 100을 빼서 크기를 지정
	}
</script>
</head>
<body>
<button type="button" onclick="toSm()">작게</button><br>
<img id="img1" style="width:500px" src="../images/1.jpg">
<img class="backimg" style="width:600px"  src="../images/2.jpg">
<img name="backimg" style="width:700px"  src="../images/4.jpg">
</body>
</html>