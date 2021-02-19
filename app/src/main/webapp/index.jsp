<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<style>
		
	</style>
</head>
<body>
<h2>Hello World!</h2>
	<div id="result">Click!</div>
	<div id ="result2">event</div>
	<script>
		var div = document.getElementById("result");
		var div2 = document.getElementById("result2");
			//onclick : event type, function : handler, e: event객체
			div.onclick = clickHandler;
			div2.onclick = clickHandler;
			// e: event객체(이벤트와 관련된 모든 정보)
		 function clickHandler(e){
			    // 이벤트가 발생한 대상
			console.log(e.target.id, e.clientX, e.clientY);
		}
	</script>
</body>
</html>
