<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet">
<script type="text/javascript" src="check.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>근무좌석예약</h2>
	<form name="frm" action="action.jsp" method="post">
		<table border=1>
			<tr>
				<td>예약번호</td>
				<td><input type="text" name="num1">예)20211001</td>
			</tr>
			<tr>
				<td>사원번호</td>
				<td><input type="text" name="num2">예)1001</td>
			</tr>
			<tr>
				<td>근무일자</td>
				<td><input type="text" name="date">예)20211231</td>
			</tr>
			<tr>
				<td>좌석번호</td>
				<td><input type="text" name="num3">예)S001~S009</td>
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