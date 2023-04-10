<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbco.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String v_jumin = request.getParameter("jumin");
	String v_name = request.getParameter("name");
	String m_no = request.getParameter("number");
	String v_time = request.getParameter("time");
	String v_area = request.getParameter("place");
	String v_confirm = request.getParameter("check");
	try{
		String sql = "insert into tbl_202005 values (?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, v_jumin);
		pstmt.setString(2, v_name);
		pstmt.setString(3, m_no);
		pstmt.setString(4, v_time);
		pstmt.setString(5, v_area);
		pstmt.setString(6, v_confirm);
		pstmt.executeUpdate();
	} catch(Exception e){
		e.printStackTrace();
	}
%>
<jsp:forward page="index.jsp"/>