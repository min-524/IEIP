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
<title>index</title>
</head>
<%
	try{
		request.setCharacterEncoding("UTF-8");
		String sql = "SELECT max(player_id) + 1 " +
					 "FROM tbl_player_20221205";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
%>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>선수 등록</h2>
	<form action="action.jsp" method="post" name="frm">
		<table border=1>
			<tr>
				<td>선수ID</td>
				<td><input type="text" name="p_id" value="<%=rs.getString(1) %>"></td>
			</tr>
			<tr>
				<td>선수이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>포지션</td>
				<td>
					<input type="radio" name="position" value="GK">골키퍼
					<input type="radio" name="position" value="DF">수비수
					<input type="radio" name="position" value="MF">미드필더
					<input type="radio" name="position" value="FW">공격수
				</td>
			</tr>
			<tr>
				<td>선수등록일</td>
				<td><input type="text" name="date"></td>
			</tr>
			<tr>
				<td>소속일</td>
				<td>
					<select name="team">
						<option value="K00">무소속</option>
						<option value="K01">울산현대</option>
						<option value="K02">삼성블루윙즈</option>
						<option value="K03">스틸러스</option>
						<option value="K04">유나이티드</option>
						<option value="K05">현대모터스</option>
						<option value="K06">FC부산소마고</option>
						<option value="K07">드래곤즈</option>
						<option value="K08">일화천마</option>
						<option value="K09">FC서울</option>
						<option value="K10">시티즌</option>
						<option value="K11">경남FC</option>
						<option value="K12">광주상무</option>
						<option value="K13">강원FC</option>
						<option value="K14">제주유나이티드FC</option>
						<option value="K15">대구FC</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan=2 style="text-align : center">
					<input type="button" value="추가" onclick="addCheck()">
					<input type="button" value="취소" onclick="res()">
				</td>	
			</tr>
		</table>
	<%
	} catch(Exception e){
		e.printStackTrace();
	}
	%>
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>