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
		$("#btn").on("click", function(){
			var param = "userid=" + $("#userid").val();
			var url = "../FindName";
			//1. load
			//$("#demo").load(url + "?" + param);
			//2. post, get get( url [, data ] [, success ] [, dataType ] )
			param = {userid : $("#userid").val(), dept : "개발"}; //?userid = aaa&dept=개발
			$.post(url, param, function(response){
				$("#demo").append("post: " + response);
			}); 
			//jquery에서는 get,post 사용법 동일 
			//3. ajax : 다른건 비동기라 동기식을 하려면 ajax를 씀
			$.ajax(url, {
				async : true, //true:비동기(동시에처리됨), false:동기(ajax부터 처리되고 처리됨)
				success : function(response){
						$("#demo").append("ajax: " + response);
						},
				data : param
			});
		});	
	});
</script>
</head>
<body>
<div id="demo">
<h2>The XMLHttpRequest Object</h2>
</div>
<input id="userid">
<button type="button" id="btn">Change Content</button><br>
</body>
</html>