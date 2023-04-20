<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>money</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>강사매출현황</h2>
	<table border=1>
		<tr>
			<td>강사코드</td>
			<td>강의명</td>
			<td>강사명</td>
			<td>총매출</td>
		</tr>
		<%
		try{
			request.setCharacterEncoding("UTF-8");
		
			String sql = "select cl.teacher_code, class_name, teacher_name, sum(tuition) " +
					"from TBL_CLASS_202201 cl, TBL_TEACHER_202201 te " +
					"WHERE cl.teacher_code = te.teacher_code " +
					"GROUP BY cl.teacher_code, class_name, teacher_name " +
					"ORDER BY teacher_code";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
		%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td>\ <%=rs.getString(4) %></td>
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