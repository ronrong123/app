<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#btn1").on("click", function(){
		//1.post : ( url [, data ] [, success ] [, dataType ] )
			$.post("../JsonServ", function(obj){
				//var obj = JSON.parse(response);
				$("#demo").append(obj[0]);
			}, "json") //json타입을 적으면 따로 parse를 안해도됨
		//2.ajax
			$.ajax({
				url:"../JsonServ",
				success: function(obj){
					$("#demo").append(obj[1])
				},
				dataType : "json"
			});
		});
	//버튼2를 클릭하면 FindMember의 서버 결과에서 name과 첫번째 취미를 출력

		$("#btn2").on("click", function(){
		//1.post : ( url [, data ] [, success ] [, dataType ] )
			$.post("../FindMember2", function(obj){
				//var obj = JSON.parse(response);
				$("#demo").append("이름: " +obj.name + " 취미: " + obj.hobbys[0] + ", ");
			}, "json") //json타입을 적으면 따로 parse를 안해도됨
		//2.ajax
			$.ajax({
				url:"../FindMember2",
				success: function(obj){
					$("#demo").append(obj.hobbys[1])
				},
				dataType : "json"
			});
		});
	});
</script>
</head>
<body>
	<div id="demo">
	<h2>The XMLHttpRequest Object</h2>
	</div>
	<button type="button" id="btn1">JsonServ</button>
	<button type="button" id="btn2">FindMember</button>
</body>
</html>