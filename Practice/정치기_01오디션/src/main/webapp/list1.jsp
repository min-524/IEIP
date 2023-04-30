<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet">
<title>list1</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>참가자 목록 조회</h2>
	<table border=1>
		<tr>
			<td>참가번호</td>
			<td>참가자명</td>
			<td>생년월일</td>
			<td>성별</td>
			<td>특기</td>
			<td>소속사</td>
		</tr>
		<%
		try{
			request.setCharacterEncoding("UTF-8");
			String sql = "select * from tbl_artist_201905";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				String date = rs.getString(3).substring(0,4) + "년" + rs.getString(3).substring(4, 6) + "월" + rs.getString(3).substring(6, 8) + "일";
				String gen = rs.getString(4);
				if(gen.equals("F")){
					gen = "여";
				} else {
					gen = "남";
				}
				String te = rs.getString(5);
				if(te.equals("1")){
					te = "보컬";
				} else if(te.equals("2")){
					te = "댄스";
				} else {
					te = "랩";
				}
		%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=date %></td>
			<td><%=gen %></td>
			<td><%=te %></td>
			<td><%=rs.getString(6) %></td>
		</tr>
		<%
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		%>
	</table>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>