<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	margin: 0;
}
ul{
	margin-top: 10px;
	padding-left: 10px;
	padding-right: 10px;
	list-style-type: none;
	display: inline-block;
}
ul li{
	text-align: center;
	display: inline-block;
}

.menu input{
	vertical-align: middle;
	margin-top: 10px;
	margin-bottom: 10px;
}

.menuTable{
	margin: 0 auto;
}
.secondMenuTable{
	margin: 0 auto;
}

.menu{
	background-color: #252525;
}
.menu:hover{
	cursor: pointer;
}
.menu3:hover{
	cursor: pointer;
}
.menu1{
	font-size: 23px;
	height: 15px;
	color: white;
}
.menu2{
	padding-left: 370px;
	font-size: 12px;
	color: white;
	background-color: #252525;
}
.menu3{
	justify-content: center;
	margin-left: auto;
	margin-right: auto;
	height: 20px;
	font-size: 14px;
	font-weight: bold;
	width: 1100px;
	color: #656565;
	background-color: white;
	letter-spacing: -0.3px;
}
.menu3 li{
	padding-left: 10px;
	padding-right: 10px;
}
.search{
	margin-left: 10px;
	width: 250px;
	height: 20px;
	margin-bottom: 3px;
}
a{
	text-decoration: none;
	color: white;
}

.drop {
    position: relative;
    display: inline-block;
}

.drop:hover .dropDiv {
    color: black;
}

.drop:hover .dropdown {
    display: block;
}

.dropdown {
    display: none;
    position: absolute;
    background-color: #FFFFFF;
    border: 1px solid #DFDFDF;
    width: 160px;
    padding: 5px;
}

.dropdown a:hover {
    color: black;
}

.dropdown a {
    color: black;
    padding-left: 9px;
    padding-top: 7px;
    padding-bottom: 7px;
    font-size: 11px;
    font-weight: normal;
    letter-spacing: -0.5px;
    text-align: left;
    display: block;
}


</style>
</head>
<body>
<div>
	<div class="menu">
		<table class="menuTable">
			<colgroup>
				<col span="50%">
				<col span="50%">
			</colgroup>
			<tr>
				<td>
					<span class="menu1">
						<a href="template.jsp"><b>STYLE</b> MAN</a>
						<input type="text" class="search">
					</span>
				</td>
				<td>
					<ul class="menu2">
						<li>즐겨찾기</li>
						<li>ㅣ</li>
						<li>로그인</li>
						<li>ㅣ</li>
						<li><a href="template.jsp?contentPage=join.jsp">회원가입</a></li>
						<li>ㅣ</li>
						<li>장바구니</li>
						<li>ㅣ</li>
						<li>주문조회</li>
						<li>ㅣ</li>
						<li>고객센터</li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
	<div>
		<table class="secondMenuTable">
			<tr>
				<td>
					<ul class="menu3">
						<li><font color="#5A2F7B">BEST</font></li>
						<li><font color="#5A2F7B">NEW 5%</font></li>
						<li>OUTER</li>
						<li>SUIT</li>
						<li>TEE/TOP</li>
						<li class="drop">
							<div class="dropDiv">PANTS</div>
							<div class="dropdown">
								<a href="template.jsp">슬랙스</a>
								<a href="template.jsp">면바지</a>
								<a href="template.jsp">밴딩 / 스판팬츠</a>
								<a href="template.jsp">청바지 / 데님</a>
								<a href="template.jsp">데미지진</a>
								<a href="template.jsp">기모팬츠</a>
								<a href="template.jsp">트레이닝</a>
								<a href="template.jsp">반바지</a>
							</div>
						</li>
						<li>SHIRTS</li>
						<li><font color="#49B499">1+1</font></li>
						<li>KNIT / CARDIGAN</li>
						<li>SHOES</li>
						<li>BAG</li>
						<li>ACC</li>
						<li><font color="#5A2F7B">BIG SIZE</font></li>
						<li>OUTLET</li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>