<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>선수별 홈그라운드 조회</h2>
	<table border=1>
		<tr>
			<td>선수ID</td>
			<td>선수이름</td>
			<td>포지션</td>
			<td>선수등록일</td>
			<td>팀 이름</td>
		</tr>
		<%
		try{
			request.setCharacterEncoding("UTF-8");
			String sql = "SELECT player_name, player_position, team_name, stadium_name, seat_count " +
						 "FROM TBL_PLAYER_20221205 pl, TBL_STADIUM_20221205 st, TBL_TEAM_20221205 te " +
					     "WHERE pl.team_id = te.team_id AND st.stadium_id = te.stadium_id AND seat_count >= 30000 ";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				String seat = rs.getString(5).substring(0, 2) + "," + rs.getString(5).substring(2, 5) + "개";
				String posit = "";
				if(rs.getString(2).equals("GK")){
					posit = "골키퍼";
				} else if(rs.getString(2).equals("DF")){
					posit = "수비수";
				} else if(rs.getString(2).equals("MF")){
					posit = "미드필더";
				} else if(rs.getString(2).equals("FW")){
					posit = "공격수";
				}
		%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=posit %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=seat %></td>
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