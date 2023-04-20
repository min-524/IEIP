<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>insert</title>
<script type="text/javascript" src="check.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>수강신청</h2>
	<form method="post" name="frm" action="action.jsp">
		<table border=1>
			<tr>
				<td>수강월</td>
				<td><input type="text" name="date"> 예) 202203</td>
			</tr>
			<tr>
				<td>회원명</td>
				<td>
					<select name="name" onchange="getValue(this.value)">
						<option value="">회원명</option>
						<option value="10001">홍길동</option>
						<option value="10002">장발장</option>
						<option value="10003">임꺽정</option>
						<option value="20001">성춘향</option>
						<option value="20002">이몽룡</option>
					</select>	
				</td>
			</tr>
			<tr>
				<td>회원번호</td>	
				<td><input type="text" name="num" id="num" readonly></td>
			
			</tr>
			<tr>
				<td>강의장소</td>
				<td>
					<input type="radio" name="area" value="서울본원">서울본원
					<input type="radio" name="area" value="성남본원">성남본원
					<input type="radio" name="area" value="대전본원">대전본원
					<input type="radio" name="area" value="부산본원">부산본원
					<input type="radio" name="area" value="대구본원">대구본원
				</td>
			</tr>
			<tr>
				<td>강의명</td>
				<td>
					<select name="class_name" onchange="getValue2(this.value)">
						<option value="">강의신청</option>
						<option value="100000">초급반</option>
						<option value="200000">중급반</option>
						<option value="300000">고급반</option>
						<option value="400000">심화반</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>수강료</td>
				<td><input type="text" name="tuition" id="tuition" readonly></td>
			</tr>
			<tr>
				<td colspan=2>
					<input type="button" value="등록" onclick="addCheck()">
					<input type="button" value="다시쓰기" onclick="res()">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>