<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="db.jsp"%>
<%
		
	request.setCharacterEncoding("UTF-8");
	
	
	String resvno = request.getParameter("num1");
	String empno = request.getParameter("num2");
	String resvdate = request.getParameter("date");
	String seatno = request.getParameter("num3");
	try{
		String sql = "INSERT INTO tbl_resv_202108 values(?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, resvno);
		pstmt.setString(2, empno);
		pstmt.setString(3, resvdate);
		pstmt.setString(4, seatno);
		ResultSet rs = pstmt.executeQuery();
		
	} catch(Exception e){
		e.printStackTrace();
	}
%>

<jsp:forward page="insert.jsp"/>