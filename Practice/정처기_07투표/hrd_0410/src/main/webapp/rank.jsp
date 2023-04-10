<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbco.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet">
<title>Rank</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h1>후보자등수</h1>
	<table border=1>
		<tr>
			<td>후보번호</td>
			<td>성명</td>
			<td>총투표건수</td>
		</tr>
		<%
		request.setCharacterEncoding("UTF-8");
		try{
			String sql = "select me.m_no, m_name, count(vo.m_no) " +
					"from TBL_202005 vo, TBL_MEMBER_202005 me " +
					"WHERE me.m_no = vo.m_no " +
					"group by me.m_no, m_name " +
					"ORDER BY count(vo.m_no) DESC";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
			%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
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