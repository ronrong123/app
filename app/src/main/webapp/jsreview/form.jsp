<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function validateForm() {
	  var x = document.forms["myForm"]["fname"].value;
	  if (x == "") {
	    alert("Name must be filled out");
	    return false;
	  }
	 /*  var j = document.forms["myForm"]["job"].value;
	  var j = document.forms[0].elements[1].value; */
	  //var j = document.getElementsByName("job")[0].value;
	  //var j = document.myForm.job.value;
	  var j = document.myForm.job.selectedIndex;
	  //value, selectedIndex
	  if(j <= 0){
		    alert("job must be select");
		    return false;
	  }
	  //체크박스 과제
	  //체크된 갯수가 하나이상인지 체크 (for)
	  var check = document.myForm.hobby;
	  var count = 0;
	  for(var i=0;i<check.length;i++){
		  if(check[i].checked == true){
			  count ++;
		  }
	  }
	  if(count == 0){
		  alert("하나는 선택하세요");
		    return false;
	  }
	  
	  document.forms["myForm"].submit();
	  //form에 submit이 없고 button type 경우 function에서 적어줘야함 
	}
</script>
</head>
<body>
	<form name="myForm" action="action_page.jsp" method="post">
	Name: <input type="text" name="fname"><br>
	
	<select name="job">
		<option value="">선택</option>
		<option value="dgn">디자이너</option>
		<option value="pgm">프로그래머</option>		
	</select><br>
	취미 : 
	<input type="checkbox" name="hobby" value="read">독서
	<input type="checkbox" name="hobby" value="jog">달리기<br>
	<button type="button" onclick="validateForm()">등록</button>
	</form>
</body>
</html>