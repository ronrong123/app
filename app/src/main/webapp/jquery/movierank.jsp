<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
//버튼을 클릭하면 박스오피스 정보를 조회해서 영화제목과 영화코드를 rank div에 출력(ajax)
	$(function(){
		$("#rank div").on("click", function(){
			var urlStr = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221";
			$.ajax({
				url: urlStr,
				success : function(obj){
					for(mvstr of obj.boxOfficeResult.dailyBoxOfficeList){
						$("#rank").append("<div>" + "영화제목: " + mvstr.movieNm + ", " + " 영화코드: " + mvstr.movieCd + "</div>");
					}
				},
				dataType : "json"
			});		
		})
		$("#btn").on("click", function(){
			var urlStr = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221";
			$.ajax({
				url: urlStr,
				success : function(obj){
					for(mvstr of obj.boxOfficeResult.dailyBoxOfficeList){
						$("#rank").append("<div>" + "영화제목: " + mvstr.movieNm + ", " + " 영화코드: " + mvstr.movieCd + "</div>");
					}
				},
				dataType : "json"
			});		
		})
	})
</script>
</head>
<body>
	<button id="btn">박스오피스조회</button>
	<div id="rank"></div>
	<div id="info"></div>
</body>
</html>