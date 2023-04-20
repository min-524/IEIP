<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>cust</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>회원정보조회</h2>
	<table border=1>
		<tr>
			<td>수강월</td>
			<td>회원번호</td>
			<td>회원명</td>
			<td>강의명</td>
			<td>강의장소</td>
			<td>수강료</td>
			<td>등급</td>
		</tr>
		<%
		try{
		request.setCharacterEncoding("UTF-8");
		
		String sql = "select cl.regist_month, cl.c_no, me.c_name, te.class_name, cl.class_area, cl.tuition, me.grade " +
				     "from TBL_CLASS_202201 cl, TBL_MEMBER_202201 me, TBL_TEACHER_202201 te " +
					 "WHERE me.c_no = cl.c_no AND cl.teacher_code = te.teacher_code";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			String date = rs.getString(1).substring(0,4) + "년" + rs.getString(1).substring(4, 6) + "월";
		%>
		<tr>
			<td><%=date %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td>\ <%=rs.getString(6) %></td>
			<td><%=rs.getString(7) %></td>
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