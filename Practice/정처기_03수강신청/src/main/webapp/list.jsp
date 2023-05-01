<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>교과목 목록</h2>
	<form name="frm" action="i_action.jsp" method="get">
		<table border=1>
			<tr>
				<td>과목코드</td>
				<td>과목명</td>
				<td>학점</td>
				<td>담당강사</td>
				<td>요일</td>
				<td>시작시간</td>
				<td>종료시간</td>
				<td>삭제</td>
			</tr>
			<%
			try{	
				request.setCharacterEncoding("UTF-8");
				String sql = "select id, name, credit, lecturer, week, start_hour, end_hour " +
							 "from COURSE_TBL";
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()){
					String id = rs.getString(1);
					String sa = rs.getString(4);
					String gangsa = "";
					if(sa.equals("1")){
						gangsa = "김교수";
					} else if(sa.equals("2")){
						gangsa = "이교수";
					} else if(sa.equals("3")){
						gangsa = "박교수";
					} else if(sa.equals("4")){
						gangsa = "우교수";
					} else if(sa.equals("5")){
						gangsa = "최교수";
					} else if(sa.equals("6")){
						gangsa = "임교수";
					}
					String date = rs.getString(5);
					String day = "";
					if(date.equals("1")){
						day = "월요일";
					} else if(date.equals("2")){
						day = "화요일";
					} else if(date.equals("3")){
						day = "수요일";
					} else if(date.equals("4")){
						day = "목요일";
					} else if(date.equals("5")){
						day = "금요일";
					} 
					String start = rs.getString(6);
					String start_t = "";
					if(start.length() == 3 ){
						start_t = "0" + rs.getString(6).substring(0,1) + "시" + rs.getString(6).substring(1) + "분";
					} else{
						start_t = rs.getString(6).substring(0,2) + "시" + rs.getString(6).substring(2) + "분";
					}
					
					String end = rs.getString(7);
					String end_t = "";
					if(end.length() == 3 ){
						end_t = "0" + rs.getString(7).substring(0,1) + "시" + rs.getString(7).substring(1) + "분";
					} else {
						end_t = rs.getString(7).substring(0,2) + "시" + rs.getString(7).substring(2) + "분";	
					}
			%>
			<tr>
				<td><a href="modify.jsp?id=<%=id %>"><%=rs.getString(1) %></a></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=gangsa %></td>
				<td><%=day %></td>
				<td><%=start_t %></td>
				<td><%=end_t %></td>
				<td><a href="d-action.jsp?id=<%=id %>">삭제</a></td>
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