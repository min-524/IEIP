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
	<h2>선수 조회</h2>
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
			String sql = "SELECT player_id, player_name, player_position, player_date, team_name " +
						 "FROM tbl_player_20221205 pl, tbl_team_20221205 te " +
						 "WHERE pl.team_id = te.team_id " +
						 "ORDER BY player_id";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				String posit = "";
				if(rs.getString(3).equals("GK")){
					posit = "골키퍼";
				} else if(rs.getString(3).equals("DF")){
					posit = "수비수";
				} else if(rs.getString(3).equals("MF")){
					posit = "미드필더";
				} else if(rs.getString(3).equals("FW")){
					posit = "공격수";
				}
				String val = rs.getString(1);
				 
		%>
		<tr>
			<td><a href="modify.jsp?id=<%=val%>"><%=val %></a></td>
			<td>☞ <%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=posit %></td>
			<td><%=rs.getString(5) %></td>
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