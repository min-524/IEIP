<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String month = request.getParameter("date");
	String name = request.getParameter("name");
	String num = request.getParameter("num");
	String area = request.getParameter("area");
	String class_name = request.getParameter("class_name");
	String tuition = request.getParameter("tuition");
	int code = Integer.parseInt(class_name) / 1000;
	try{
		String sql = "INSERT into tbl_class_202201 values(?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, month);
		pstmt.setString(2, num);
		pstmt.setString(3, area);
		pstmt.setString(4, tuition);
		pstmt.setInt(5, code);
		pstmt.executeUpdate();
		
	} catch(Exception e){
		e.printStackTrace();
	}
%>

<jsp:forward page="cust.jsp"/>