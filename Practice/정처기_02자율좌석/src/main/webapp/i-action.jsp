<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String number = request.getParameter("number");
	
	
	try{
		String sql = "select * " + 
					 "from tbl_emp_202108 " +
					 "WHERE ? = empno";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, number);
		ResultSet rs = pstmt.executeQuery();

		if(rs.next()){
			number = rs.getString(1);
			%>
			<jsp:forward page="su.jsp"/>
			<%
		} else {
			%>
			<jsp:forward page="fa.jsp"/>
			<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>