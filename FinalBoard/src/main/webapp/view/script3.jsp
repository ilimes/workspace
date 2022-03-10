<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" class="myInput" value="1"><br>
<input type="text" class="myInput" value="2"><br>
<input type="text" class="myInput" value="3"><br>

<script type="text/javascript">
	//클래스로 태그 선택
	//클래스는 복수로 들고온다 (getElements <- )는것을 기억해야한다. 
	const tag = document.getElementsByClassName('myInput');
	//그래서 출력도 배열로!
	alert(tag[2].value);
	
	const tag1 = document.getElementsByTagName('input');
	//input태그 3개의 모든 value값을 차례대로 alert으로 출력
	//var 옛날거 -> const + let
	for(let i = 0 ; i < tag1.length ; i++){
		//alert(tag1[i].value);
	}
	
	/* tag1.foreach(function(element, index){
		console.log(index + " " + element);
	}); */
	
	//쿼리셀렉터 - 태그의 선택을 css처럼 할 수 있게 해 줌.
	document.querySelector('#java'); //id가 java인 태그를 선택
	
	document.querySelector('.java'); //class가 java인 첫번째 태그를 선택
	document.querySelectorAll('.java'); //class가 java인 모든 태그를 선택

	document.querySelector('table'); //table 태그를 선택
	document.querySelectorAll('table'); //table 태그를 선택

	document.querySelector('div > table'); //div 태그 안에 자식인 table 태그를 선택
	document.querySelectorAll('hi, input'); 
	document.querySelectorAll('input[type="text"]'); 
	
</script>

</body>
</html>