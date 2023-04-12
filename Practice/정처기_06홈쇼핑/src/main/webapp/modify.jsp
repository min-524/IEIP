	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet">
<title>Modify</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h1> 홈쇼핑 회원 등록 </h1>
	<form method="get" name="frm" action="action.jsp">
	<input type="hidden" name="mode" value="modify">
		<table border=1>
		<%
		request.setCharacterEncoding("UTF-8");
		String mod_custno = request.getParameter("mod_custno");
			
		try{
			String sql = "select custno, custname, phone, address, joindate, grade, city " +
					 "from MEMBER_TBL_02 " + 
					"WHERE custno = " + mod_custno;
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
		%>
			<tr>
				<td>회원번호(자동발생)</td>
				<td><input type="text" value=<%=mod_custno %> name="id" readonly></td>
			</tr>
			<tr>
				<td>회원성명</td>
				<td><input type="text" name="name" value=<%=rs.getString(2)%>></td>
			</tr>
			<tr>
				<td>회원전화</td>
				<td><input type="text" name="phone" value=<%=rs.getString(3)%>></td>
			</tr>
			<tr>
				<td>회원주소</td>
				<td><input type="text" name="address" value=<%=rs.getString(4)%>></td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td><input type="text" value=<%=rs.getString(5)%> name="joindate" readonly></td>
			</tr>
			<tr>
				<td>고객등급[A:VIP,B:일반,C:직원]</td>
				<td><input type="text" name="grade" value=<%=rs.getString(6)%>></td>
			</tr>
			<tr>
				<td>도시코드</td>
				<td><input type="text" name="city" value=<%=rs.getString(7)%>></td>
			</tr>
			<tr>
				<td colspan=2>
					<input type="submit" value="등록" onclick="modify()">
					<input type="submit" value="조회" onclick="search()">
				</td>
			</tr>
			<%
			} catch(Exception e){
				e.printStackTrace();
			}
			%>
			
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>