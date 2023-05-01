<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	try{
		request.setCharacterEncoding("UTF-8");
		
		String player_id = request.getParameter("p_id");
		String player_name = request.getParameter("name");
		String player_position = request.getParameter("position");
		String player_date = request.getParameter("date");
		String team_id = request.getParameter("team");
		
		String sql = "insert into tbl_player_20221205 values(?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, player_id);
		pstmt.setString(2, player_name);
		pstmt.setString(3, player_position);
		pstmt.setString(4, player_date);
		pstmt.setString(5, team_id);
		pstmt.executeUpdate();
		
	} catch(Exception e){
		e.printStackTrace();
	}

%>
<jsp:include page="list.jsp"/>