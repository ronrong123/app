<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="demo">
<h2>The XMLHttpRequest Object</h2>
</div>
<input id="userid">
<button type="button" onclick="loadDoc()">Change Content</button><br>

<script>
function loadDoc() {
	//1. XHR객체를 생성
  var xhttp = new XMLHttpRequest();
	//2. 콜백함수
  xhttp.onreadystatechange = function() {
	if(this.readyState < 4){
		document.getElementById("demo").innerHTML = "loading...";
		}
	else if (this.readyState == 4) { //응답완료
		if(this.status == 200){	//OK
	      document.getElementById("demo").innerHTML = this.responseText; //responseXML
		}else{
			document.getElementById("demo").innerHTML = this.status + " error";
		}
    }
  };
  //3. 요청준비(url)
  var param = "userid=" + document.getElementById("userid").value;
  xhttp.open("POST", "../FindName"); //false를 적으면 동기식(ajax가 실행되고 다른게 실행됨)으로, true는 비동기 (기본이 비동기)
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  //세번째 인수: 비동기여부(true)
  //4. 요청시작
  xhttp.send(param);
  document.getElementById("demo").innerHTML += "ajax send";
}
</script>
</body>
</html>