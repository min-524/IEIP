<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
    <%
		try{
		request.setCharacterEncoding("UTF-8");  
		String id = request.getParameter("id");
		String sql = "DELETE FROM COURSE_TBL " +
				 	 "WHERE id = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		} catch(Exception e){
			e.printStackTrace();
		}
	%>
<jsp:forward page="list.jsp"/>