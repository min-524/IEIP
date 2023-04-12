<%@ include file="dbconnect.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet">
<script type="text/javascript" src="check.js"></script>
<title>Insert</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
<h1> 홈쇼핑 회원 등록 </h1>
	<form name="frm" action="action.jsp" method="post">
	<input type="hidden" name="mode" value="insert">
		<table border=1>
		<%
			request.setCharacterEncoding("UTF-8");
			
			String custno = "";
			try{
				String sql = "select max(custno) +1 as custno from member_tbl_02";
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				rs.next();
		%>
			<tr>
				<td>회원번호(자동발생)</td>
				<td><input type="text" name="id" value=<%=rs.getString(1) %>></td>
			</tr>
			<tr>
				<td>회원성명</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>회원전화</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>회원주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td><input type="text" name="joindate"></td>
			</tr>
			<tr>
				<td>고객등급[A:VIP,B:일반,C:직원]</td>
				<td><input type="text" name="grade"></td>
			</tr>
			<tr>
				<td>도시코드</td>
				<td><input type="text" name="city"></td>
			</tr>
			<tr>
				<td colspan=2>
					<input type="submit" value="등록" onclick="return addCheck()">
					<input type="submit" value="조회" onclick="search()">
				</td>
			</tr>
		</table>
		<%
			} catch (Exception e){
				e.printStackTrace();
			}
		%>
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>