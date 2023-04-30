<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
try{
	request.setCharacterEncoding("UTF-8");
	String artist_no = request.getParameter("artist_no");
	String artist_name = request.getParameter("artist_name");
	String birth = request.getParameter("birth1") + request.getParameter("birth2") + request.getParameter("birth3");
	String telent = request.getParameter("telent");
	String gender = request.getParameter("gender");
	String agency = request.getParameter("agency");
	String sql = "insert into tbl_artist_201905 values(?,?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, artist_no);
	pstmt.setString(2, artist_name);
	pstmt.setString(3, birth);
	pstmt.setString(4, gender);
	pstmt.setString(5, telent);
	pstmt.setString(6, agency);
	pstmt.executeUpdate();
} catch(Exception e){
	e.printStackTrace();
}
%>
<jsp:forward page="insert.jsp"/>