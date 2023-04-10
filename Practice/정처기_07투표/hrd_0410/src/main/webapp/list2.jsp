<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ include file="dbco.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel = "stylesheet">
<title>list2</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h1>후보검수조회</h1>
	<form name="frm">
		<table border = "1">
		   <tr>
			   <td>성명</td>
			   <td>생년월일</td>
			   <td>나이</td>
			   <td>성별</td>
			   <td>후보번호</td>
			   <td>투표시간</td>
			   <td>유권자확인</td>
		   </tr>
		   <%
		   try{
			   String sql = "select v_name, v_jumin, m_no, v_time, v_confirm "+
			   "from tbl_202005 " +
			   "WHERE v_area = '제1투표장'";
			   PreparedStatement pstmt = con.prepareStatement(sql);
			   ResultSet rs = pstmt.executeQuery();
				   
		      while(rs.next()){
		    	  String jumin = rs.getString(2);
		    	  Integer year = 1900 + Integer.valueOf(jumin.substring(0,2));
		    	  String birth = "19" + jumin.substring(0,2) + "년" + jumin.substring(2,4) + "월" + jumin.substring(4,6) + "일생";
		    	  Integer age = 2020 - year;
		    	  String gender = "";
		    	  if(jumin.substring(6,7) == "1"){
		    		  gender = "남";
		    	  } else {
		    		  gender = "여";
		    	  }
		    	  String check = "";
		    	  if(rs.getString(5) == "N" | rs.getString(5) == "n"){
		    		  check = "미확인";
		    	  } else{
		    		  check = "확인";
		    	  }
		    	  String time = rs.getString(4).substring(0,2) + ":" + rs.getString(4).substring(2,4);
	        %>
		      <tr>
		         <td><%=rs.getString(1) %></td>
		         <td><%=birth %></td>
		         <td><%="만 " + age+"세"%></td>
		         <td><%=gender %></td>
		         <td><%=rs.getString(3) %></td>
		         <td><%=time %></td>
		         <td><%=check %></td>
		      </tr>
	       <%
		      }
		   }catch(Exception e){
			   e.printStackTrace();
		   }
		   %>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>