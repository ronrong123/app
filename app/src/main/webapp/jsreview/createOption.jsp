<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function addFruit(){
		//input tag의 값을 select의 option 태그 만들어서 추가
		var op = document.createElement("option");
		op.innerHTML = document.getElementById("fruit").value;
		document.getElementById("list").add(op);
		var table = document.getElementById("tbl");
		row = table.insertRow();
		cell = row.insertCell();
		cell.innerText = document.getElementById("fruit").value;
		document.getElementById("fruit").value = "";	
		//테이블 집어넣기
	}
</script>
</head>
<body>
	<input id="fruit">
	<button type="button" onclick="addFruit()">등록</button>
	<select id ="list" style="width:100px" size="10">		
	</select>
	<table id="tbl" border="1"></table>
</body>
</html>