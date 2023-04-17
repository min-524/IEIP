<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
<%
	request.setCharacterEncoding("UTF-8");
	String number = request.getParameter("number");
%>
	<h2>사원번호 : <%=number %> 님의 좌석예약조회</h2>
	<table border=1>
		<tr>
			<td>사원번호</td>
			<td>이름</td>
			<td>근무일자</td>
			<td>좌석번호</td>
			<td>좌석위치</td>
			<td>내선번호</td>
		</tr>
		<%
		try{
			String sql = "select em.empno, em.empname, re.resvdate, se.seatno, se.seatno, se.callno " +  
					"from tbl_emp_202108 em, tbl_resv_202108 re, tbl_seat_202108 se " + 
					"WHERE ? = em.empno AND re.seatno = se.seatno AND em.empno = re.empno";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, number);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
		%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
			<%
			}
		} catch (Exception e){
			e.printStackTrace();
		}
			%>
		</tr>
	</table>
	<div>
	<button style="margin-left:auto; margin-right:auto" onclick="window.location ='index.jsp'">돌아가기</button>
	</div>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>