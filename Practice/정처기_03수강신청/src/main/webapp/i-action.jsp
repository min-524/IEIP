<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	try{
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("c_code");
		String name = request.getParameter("c_name");
		String credit = request.getParameter("score");
		String lecturer = request.getParameter("teacher");
		String week = request.getParameter("code");
		String start_hour = request.getParameter("start");
		String end_hour = request.getParameter("end");
		
		String sql = "UPDATE course_tbl SET id=?, name=?, credit=?, lecturer=?, week=?, start_hour=?, end_hour=? " +
					 "WHERE id = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, credit);
		pstmt.setString(4, lecturer);
		pstmt.setString(5, week);
		pstmt.setString(6, start_hour);
		pstmt.setString(7, end_hour);
		pstmt.setString(8, id);
		ResultSet rs = pstmt.executeQuery();
	} catch(Exception e){
		e.printStackTrace();
	}
%>

<jsp:forward page="list.jsp"/>