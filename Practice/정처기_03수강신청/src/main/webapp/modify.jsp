<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet">
<script type="text/javascript" src="check.js"></script>
<meta charset="UTF-8">
<title>modify</title>
	<%
		try{
		request.setCharacterEncoding("UTF-8");  
		String id = request.getParameter("id");
		String sql = "SELECT * " +
					 "FROM COURSE_TBL " +
				 	 "WHERE id = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		String ss = rs.getString(4);
		String aa = rs.getString(5);
		String start = rs.getString(6);
		String start_t = "";
		if(start.length() == 3 ){
			start_t = "0" + rs.getString(6);
		} else {
			start_t = rs.getString(6);
		}
	%>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>교과목 수정</h2>
	<form name="frm" action="i-action.jsp" method="post">
		<table border=1>
			<tr>
				<td>과목코드</td>
				<td><input type="text" name="c_code" value="<%=rs.getString(1) %>"></td>
			</tr>
			<tr>
				<td>과목명</td>
				<td><input type="text" name="c_name" value="<%=rs.getString(2) %>"></td>
			</tr>
			<tr>
				<td>학점</td>
				<td><input type="text" name="score"  value="<%=rs.getString(3) %>"></td>
			</tr>
			<tr>
				<td>담당강사</td>
				<td>
					<select name="teacher">
						<option value=""></option>
						<option value="1" <%if(ss.equals("1")) out.print("SELECTED"); %>>김교수</option>
						<option value="2" <%if(ss.equals("2")) out.print("SELECTED"); %>>이교수</option>
						<option value="3" <%if(ss.equals("3")) out.print("SELECTED"); %>>박교수</option>
						<option value="4" <%if(ss.equals("4")) out.print("SELECTED"); %>>우교수</option>
						<option value="5" <%if(ss.equals("5")) out.print("SELECTED"); %>>최교수</option>
						<option value="6" <%if(ss.equals("6")) out.print("SELECTED"); %>>임교수</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>요일</td>
				<td>
					<input type="radio" name="code" value="1" <%if(aa.equals("1")) out.print("checked"); %>>월
					<input type="radio" name="code" value="2" <%if(aa.equals("2")) out.print("checked"); %>>화
					<input type="radio" name="code" value="3" <%if(aa.equals("3")) out.print("checked"); %>>수
					<input type="radio" name="code" value="4" <%if(aa.equals("4")) out.print("checked"); %>>목
					<input type="radio" name="code" value="5" <%if(aa.equals("5")) out.print("checked"); %>>금
				</td>
			</tr>
			<tr>
				<td>시작시간</td>
				<td><input type="text" name="start" value="<%=start_t %>"></td>
			</tr>
			<tr>
				<td>종료시간</td>
				<td><input type="text" name="end" value="<%=rs.getString(7) %>"></td>
			</tr>
			<tr>
				<td colspan=2 style="text-align : center">
					<input type="button" value="추가" onclick="addCheck2()">
					<input type="button" value="목록" onclick="list.jsp">
				</td>
			</tr>
		</table>
		<%
		} catch(Exception e){
			e.printStackTrace();
		}
		%>
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>