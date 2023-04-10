<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vote</title>
<link href="style.css" rel="stylesheet">
<script type="text/javascript" src="check.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h1 style="text-align : center"> 투표하기 </h1>
	<form name="frm" action="action.jsp" method="post">
		<table border=1 >
			<tr>
				<td>주민번호</td>
				<td><input type="text" name="jumin">예 : 8906153154726</td>
			</tr>
			<tr>
				<td>성명</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>투표번호</td>
				<td>		
					<select name="number">
						<option value="0"></option>
						<option value="1">김후보</option>
						<option value="2">이후보</option>
						<option value="3">박후보</option>
						<option value="4">조후보</option>
						<option value="5">최후보</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>투표시간</td>
				<td><input type="text" name="time"></td>
			</tr>
			<tr>
				<td>투표장소</td>
				<td><input type="text" name="place"></td>
			</tr>
			<tr>
				<td>유권자확인</td>
				<td>
					<input type="radio" value="Y" name="check">확인
					<input type="radio" value="N" name="check">미확인
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align : center">
					<input type="submit" value="투표하기" onclick="return addCheck()"> 
					<input type="submit" value="다시하기" onclick="return reset()">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>