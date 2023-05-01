<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	try{
		request.setCharacterEncoding("UTF-8");
		
		String player_id = request.getParameter("id");
		String player_name = request.getParameter("name");
		String player_position = request.getParameter("position");
		String player_date = request.getParameter("date");
		String team_id = request.getParameter("t_id");
		
		String sql = "Update tbl_player_20221205 set player_id = ?, player_name = ?, player_position = ?, player_date=?, team_id = ? " +
					 "WHERE player_id = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		pstmt.setString(1, player_id);
		pstmt.setString(2, player_name);
		pstmt.setString(3, player_position);
		pstmt.setString(4, player_date);
		pstmt.setString(5, team_id);
		pstmt.setString(6, player_id);
		
		ResultSet rs = pstmt.executeQuery();
		
	} catch(Exception e){
		e.printStackTrace();
	}
%>
<jsp:forward page="list.jsp"/>