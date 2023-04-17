<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet">
<script type="text/javascript" src="check.js"></script>
<title>list</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>좌석예약조회</h2>
	<form method="post" name="frm" action="i-action.jsp">
		<table border=1>
			<tr>
				<td>사원번호를 입력하시오</td>
				<td><input type="text" name="number"></td>
			</tr>
			<tr>
				<td colspan=2>
					<input type="button" value="좌석예약조회" onclick="return checkAdd()">
					<input type="button" value="홈으로" onclick="return home()">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>