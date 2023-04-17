<%@ include file="db.jsp"%>
<%@ page import="java.sql.*" %>
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
	<h2>부서별근무일수집계	</h2>
	<table border=1>
		<tr>
			<td>사원번호</td>
			<td>이름</td>
			<td>부서명</td>
			<td>근무일수</td>
		</tr>
		<%
		try{
			request.setCharacterEncoding("UTF-8");
			String sql = "select em.empno, empname, deptcode, count(resvdate) " +
					"from TBL_EMP_202108 em, TBL_RESV_202108 re " + 
					"WHERE em.empno = re.empno " +
					"GROUP BY em.empno, empname, deptcode " +
					"ORDER BY empno";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
			String name = "";
			String deptcode = rs.getString(3);
			if(deptcode.equals("10")) name = "영업팀";
			else if(deptcode.equals("20")) name = "총무팀";
			else if(deptcode.equals("30")) name = "구매팀";
		%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=name %></td>
			<td><%=rs.getString(4) %></td>
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