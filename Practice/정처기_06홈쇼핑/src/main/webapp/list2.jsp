<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet">
<title>list2</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<section>
		<form name="frm">
			<table border=1>
				<tr>
					<td>회원번호</td>
					<td>회원성명</td>
					<td>고객등급</td>
					<td>매출</td>
				</tr>
				<%
				try{
					request.setCharacterEncoding("UTF-8");
					String sql = "select me.custno, me.custname, me.grade, SUM(mo.price) "+
							"from member_tbl_02 me, money_tbl_02 mo " +
							"WHERE me.custno = mo.custno " +
							"group by me.custno, me.custname, me.grade " +
							"ORDER by me.custno";
					
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
						String grade = rs.getString(3);
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
				%>
				<tr>
					<td><%=rs.getInt(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=grade %></td>
					<td><%=rs.getInt(4) %></td>	
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