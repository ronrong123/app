<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	"use strict"; //변수선언(var,let 변수선언을 반드시 해야함)
	
	//v1 = 10; 전역변수
	var v1 = 10; 
	function f1(){
		{
			//let i1 = 10; 블록변수
			var i1 = 10; //지역변수
		}
		v1 = 20;				
		console.log(i1)
	}
	
	function f2(){
		v1 = 30;		
		console.log(i1);
	}
</script>
</head>
<body>

</body>
</html>