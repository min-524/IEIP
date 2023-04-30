<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>list2</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>멘토 점수 조회</h2>
	<table border=1>
		<tr>
			<td>채점번호</td>
			<td>참가번호</td>
			<td>참가자명</td>
			<td>생년월일</td>
			<td>점수</td>
			<td>평점</td>
			<td>멘토명</td>
		</tr>
		<%
		try{
			request.setCharacterEncoding("UTF-8");
			String sql = "select serial_no, ar.artist_id, artist_name, birth, score, mento_name " +
						 "from tbl_artist_201905 ar, tbl_mento_201905 me, tbl_point_201905 po " +
						 "where ar.artist_id = po.artist_id and me.mento_id = po.mento_id";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				String date = rs.getString(4).substring(0, 4) + "년" + rs.getString(4).substring(4, 6) + "월" + rs.getString(4).substring(6, 8) + "일";
				Integer so = rs.getInt(5);
				String as = "";
				if(so >= 90){
					as = "A";
				} else if(so >= 80){
					as = "B";
				} else if(so >= 70){
					as = "C";
				} else if(so >= 60){
					as = "D";
				} else{
					as = "F";
				}
			%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=date %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=as %></td>
				<td><%=rs.getString(6) %></td>
			</tr>
			<% 
			}
		} catch(Exception e){
			e.printStackTrace();
		}	
		%>
	</table>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>