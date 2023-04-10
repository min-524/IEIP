<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "dbco.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href = "style.css" rel = "stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
<h2>투표검수조회</h2>
<table border="1">
	<tr>
		<td>성명</td>
		<td>생명월일</td>
		<td>소속정당</td>
		<td>학력</td>
		<td>주민번호</td>
		<td>지역구</td>
		<td>유권자 확인</td>
	</tr>
	<%
		try{
			String sql="select v_name, v_jumin, v_jumin, v_jumin, m_no, v_time, v_confirm "+
						"from tbl_202005 ";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs= pstmt.executeQuery();
			String jumin = rs.getString(2);
			String check = jumin.substring(6,7);
			Integer year = 0;
			String birth="";
			int age;
			String gender;
			if(check.equals("1")|| check.equals("2")){
				year=Integer.parseInt(jumin.substring(0, 2))+1900;
			}
			else if(check.equals("3") || check.equals("4")){
				year=Integer.parseInt(jumin.substring(0, 2))+2000;
			}
			age = 2023 - year;
			if(check.equals("1") || check.equals("3")){
				gender="남";
			}
			else{
				gender="여";
			}
			while(rs.next()){
				%>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=jumin.substring(0,2)+"년"+jumin.substring(2,4)+"월" %></td>
					<td><%="만" + age+"세" %></td>
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(5) %></td>
					<td><%=rs.getString(6) %></td>
					<td><%=rs.getString(7) %></td>
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