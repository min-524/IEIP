<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp" %>
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
<h1>회원목록 수정/조회</h1>
	<form name="frm">
		<table border=1>
			<tr>
				<td>회원번호</td>
				<td>회원성명</td>
				<td>전화번호</td>
				<td>주소</td>
				<td>가입일자</td>
				<td>고객등급</td>
				<td>거주지역</td>
			</tr>
			<%
			try{
				request.setCharacterEncoding("UTF-8");
				String sql = "select custno, custname, phone, address, joindate, grade, city " +
						 "from MEMBER_TBL_02";
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()){
				String grade = rs.getString(6);
				switch(grade){
				case "A" :
					grade = "VIP"; 
					break;
				case "B" :
					grade = "일반"; 
					break;
				case "C" :
					grade = "직원";
					break;
				}
				String date = rs.getString(5).substring(0,10);
			%>
			<tr>
				<td>
					<a href="modify.jsp?mod_custno=<%=rs.getInt(1) %>"><%=rs.getInt(1) %></a>
				</td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=date %></td>
				<td><%=grade %></td>
				<td><%=rs.getString(7) %></td>
			</tr>
			<%
				}
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