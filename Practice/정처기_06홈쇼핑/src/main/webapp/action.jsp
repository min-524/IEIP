<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	String mode = request.getParameter("mode");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String joindate = request.getParameter("joindate");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");	
	try{
		String sql = "";
		PreparedStatement pstmt = null;
		switch(mode){
		case "insert" :
			sql = "insert into member_tbl_02 values(?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, phone);
			pstmt.setString(4, address);
			pstmt.setString(5, joindate);
			pstmt.setString(6, grade);
			pstmt.setString(7, city);
			
			pstmt.executeUpdate();
			%>
			<jsp:forward page="list.jsp"/>
			<%
			break;
			
		case "modify":
			sql = "Update member_tbl_02 set custno=?, phone=?, address=?, joindate=?, grade=?, city=? " +
				  "WHERE custno=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, phone);
			pstmt.setString(3, address);
			pstmt.setString(4, joindate);
			pstmt.setString(5, grade);
			pstmt.setString(6, city);
			pstmt.setString(7, id);
			
			pstmt.executeUpdate();
			%>
			<jsp:forward page="list.jsp"/>
			<%
			break;
		}
	} catch (Exception e){
		e.printStackTrace();
	}
%>
