<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet">
<title>list</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>강사조회</h2>
	<table border=1>
		<tr>
			<td>강사코드</td>
			<td>강사명</td>
			<td>강의명</td>
			<td>수강료</td>
			<td>강사자격취득일</td>			
		</tr>
		<%
		try{
			request.setCharacterEncoding("UTF-8");
			String sql = "select teacher_code, teacher_name, class_name, class_price, teacher_regist_date " +
						 "from TBL_TEACHER_202201";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				String date = "20" + rs.getString(5).substring(0, 2) + "년" +
							  rs.getString(5).substring(2, 4) + "월" + rs.getString(5).substring(4,6) + "일";
				
			%>
				<tr>
					<td><%=rs.getString(1) %></td>	
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td>\ <%=rs.getString(4) %></td>
					<td><%=date %></td>
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