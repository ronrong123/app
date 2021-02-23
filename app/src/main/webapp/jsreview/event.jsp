<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){ //document ready
	$("#btnAdd").on("click", function(){ //직접이벤트
		$("#result").append($("<li>").html("JSP")
									.css("color", "#ffcc00")
									.attr("id", "book")
									.prop("alt", "text")
									.data("num", "10"));		
	});	
	$("ul").on("click", "li", function(){ //그룹이벤트(위임)
		$(event.target).remove();
		console.log(this);
	});
});

/* $(document).bind("ready", function(){
	$("#btnAdd").bind("click", function(){
		$("#result").append($("<li>").html("JSP"));		
	});	
}); */

/* //페이지 로드 이벤트
	window.addEventListener("load", function(){
		document.getElementsByTagName("ul")[0].addEventListener("click", function(event){
			//this.remove();
			event.target.parentNode.removeChild(event.target); //실제 이벤트를 발생한 Tag
		});
		document.getElementById("btnAdd").addEventListener("click", function(){
			//li태그 생성
			var li = document.createElement("li");
			li.innerHTML = "자바";
			document.getElementById("result").appendChild(li);
		});	
	}); */

</script>
</head>
<body>
	<button type="button" id="btnAdd">추가</button>
	<ul id="result">
		<li>스프링</li>
	</ul>
</body>
</html>