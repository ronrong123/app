<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	*{margin:0;padding:0;}
	.menu{border:1px solid black;background:#ddd;list-style:none;cursor:pointer;padding:10px;}
	.active{background:#ffcc00;color:#fff;transition:0.3s;}
</style>
<script>
	$(function(){
		//li태그에 click하면 클릭한 태그의 내용을 alert로 보이도록
		$("li.menu").on("click", function(){
			//alert($(this).html());
			$("li.menu").removeClass("active");
			$(this).addClass("active");
		})
	});
</script>
</head>
<body>
<ul>
	<li class="menu" data-num="1">게시판</li>
	<li class="menu" data-num="2">회원가입</li>
	<li class="menu" data-num="3">로그인</li>
	<li class="menu" data-num="4">QnA</li>
</ul>
</body>
</html>