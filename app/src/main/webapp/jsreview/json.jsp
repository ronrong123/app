<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="result"></div>
	<script>
		var empList = [
					{id:100, name:"scott", hiredate:"2020/01/01"},
					{id:101, name:"홍길동", hiredate:"2020/01/01"},
					{id:102, name:"김유신", hiredate:"2020/01/01"}
					]
		//사원의 이름을 div에 출력x
		for(var i=0;i<empList.length;i++){
			document.getElementById("result").innerHTML += empList[i].name + "<br>";						
		}
		for(filed of empList){
			document.getElementById("result").innerHTML += filed.name + "<br>";
		}
		
		//부서정보를 저장
		var depts =[
					{department_id:10, department_name:"Administration", manager_id:200, location_id:1700},
					{department_id:20, department_name:"Marketing", manager_id:201, location_id:1800}
					];
		
		var member = {name:"hong", hobbys:["독서","달리기"]};
		//첫번째 취미 출력		
		document.getElementById("result").innerHTML += "<br>취미: " + member.hobbys[0];
		var members = [
						{name:"hong", hobbys:["독서","달리기"]},
						{name:"hong", hobbys:["스키","달리기"]}	
					  ];
		//두번째 회원의 첫번째 취미
		document.getElementById("result").innerHTML += "<br>취미: " + members[1].hobbys[0];
		
		</script>
</body>
</html>