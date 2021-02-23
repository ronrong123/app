<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button id="btn" onclick="loadMovie()">박스오피스조회</button>
	<div id="result"></div>
	<div id="info"></div>
	<script>
	function loadInfo(movieCd){
	//코드에 해당하는 영화의 상세정보를 조회 - 감독, 출연배우 ...
		console.log(movieCd);
		var xhttp = new XMLHttpRequest();
		xhttp.onload = function(){
			//parse
			name1 = JSON.parse(xhttp.responseText);
			//for 이름만 출력
			for(mvname of name1.boxOfficeResult.dailyBoxOfficeList){	
				if(mvname.movieCd == movieCd){
					document.getElementById("info").innerHTML += "<div>" + "제목: " + mvname.movieNm +
																", " + "개봉일: " + mvname.openDt + 
																", 코드: " + mvname.movieCd +  ", 관람등급: " + mvname.watchGradeNm +"</div>";
					}
				//영화정보에서 
			}
		}
		var url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221";
		xhttp.open("get", url);
		xhttp.send();
	}
		function loadMovie(){
			var xhttp = new XMLHttpRequest();
			xhttp.onload = function(){
				//parse
				name1 = JSON.parse(xhttp.responseText);
				//for 이름만 출력
				for(mvname of name1.boxOfficeResult.dailyBoxOfficeList){					
					document.getElementById("result").innerHTML += "<div onclick=loadInfo('" + mvname.movieCd + "')>" + mvname.movieNm + "</div>";
					//영화정보에서 
				}
			}
			var url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221";
			xhttp.open("get", url);
			xhttp.send();
		}
	</script>
</body>
</html>