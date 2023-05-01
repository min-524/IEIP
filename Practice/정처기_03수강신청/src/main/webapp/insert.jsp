<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet">
<script type="text/javascript" src="check.js"></script>
<meta charset="UTF-8">
<title>insert</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>교과목 추가</h2>
	<form name="frm" method="post" action="action.jsp">
		<table border=1>
			<tr>
				<td>과목코드</td>
				<td><input type="text" name="c_code"></td>
			</tr>
			<tr>
				<td>과목명</td>
				<td><input type="text" name="c_name"></td>
			</tr>
			<tr>
				<td>학점</td>
				<td><input type="text" name="score"></td>
			</tr>
			<tr>
				<td>담당강사</td>
				<td>
					<select name="teacher">
						<option value="">담당강사선택</option>
						<option value="1">김교수</option>
						<option value="2">이교수</option>
						<option value="3">박교수</option>
						<option value="4">우교수</option>
						<option value="5">최교수</option>
						<option value="6">임교수</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>요일</td>
				<td>
					<input type="radio" name="code" value="1">월
					<input type="radio" name="code" value="2">화
					<input type="radio" name="code" value="3">수
					<input type="radio" name="code" value="4">목
					<input type="radio" name="code" value="5">금
				</td>
			</tr>
			<tr>
				<td>시작시간</td>
				<td><input type="text" name="start"></td>
			</tr>
			<tr>
				<td>종료시간</td>
				<td><input type="text" name="end"></td>
			</tr>
			<tr>
				<td colspan=2 style="text-align : center">
					<input type="button" value="추가" onclick="addCheck()">
					<input type="button" value="목록" onclick="list.jsp">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>