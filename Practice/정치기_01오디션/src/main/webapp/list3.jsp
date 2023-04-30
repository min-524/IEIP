<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>list3</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<table border=1>
		<tr>
			<td>참가번호</td>
			<td>참가자명</td>
			<td>총점</td>
			<td>평균</td>
			<td>등수</td>
		</tr>
		<%
		try{
			request.setCharacterEncoding("UTF-8");
			String sql = "SELECT po.artist_id, artist_name, sum(score), TO_CHAR(avg(score), '99.99'), rank() over (ORDER by sum(score) desc) " + 
						 "FROM TBL_POINT_201905 po, TBL_ARTIST_201905 ar " +
						 "WHERE ar.artist_id = po.artist_id " +
						 "GROUP BY po.artist_id, artist_name";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				
		%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
		</tr>
		<%
			}
		} catch (Exception e){
			e.printStackTrace();
		}
		%>
	</table>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>