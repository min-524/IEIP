<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbco.jsp" %>
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
<h1> 후보조회</h1>
	<form name="frm">
		<table border=1>
			<tr>
				<td>후보번호</td>
				<td>성명</td> 
				<td>소속정당</td>
				<td>학력</td>
				<td>주민번호</td>
				<td>지역구</td>
				<td>대표전화</td>
			</tr>
			<%
			try{
				request.setCharacterEncoding("UTF-8");
				String sql = "select m_no, m_name, me.p_code, p_school, m_jumin, m_city, p_tel1, p_tel2, p_tel3 from tbl_member_202005 me, tbl_party_202005 pa WHERE me.p_code = pa.p_code ORDER BY p_code";
				
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()){
				String grade = rs.getString(4);
				switch(grade){
				case "1":
					grade = "고졸";
					break;
				case "3":
					grade = "학사";
					break;
				case "2":
					grade = "박사";
					break;
					
				}
				String ABC = rs.getString(3);
				switch(ABC){
				case "P1":
					ABC = "A정당";
					break;
				case "P2":
					ABC = "B정당";
					break;
				case "P3":
					ABC = "C정당";
					break;
				case "P4":
					ABC = "D정당";
					break;
				case "P5":
					ABC = "E정당";
					break;	
				}
				String p_tel1 = rs.getString(7);
				String p_tel2 = rs.getString(8);
				String p_tel3 = rs.getString(9);
				String p_tel = p_tel1 + "- " + p_tel2 + " - " + p_tel3;
								
			%>
			<tr>
				<td><%=rs.getString(1) %></td>
  				<td><%=rs.getString(2) %></td>
				<td><%=grade%></td>
				<td><%=ABC%></td>
				<td><%=rs.getString(5).substring(0,7) + "-" + rs.getString(5).substring(7,13) %></td>
				<td><%=rs.getString(6) %></td>
				<td><%=p_tel%></td>
			</tr>
			<%
				}
			}catch(Exception e){
				e.printStackTrace();
			}
			%>
		</table> 
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>