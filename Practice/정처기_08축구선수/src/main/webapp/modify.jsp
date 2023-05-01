<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet">
<script type="text/javascript" src="check.js"></script>
<meta charset="UTF-8">
<%
	try{
		request.setCharacterEncoding("UTF-8");
		String p_id = request.getParameter("id");
		String sql = "SELECT * " +
					 "FROM tbl_player_20221205 " +
					 "WHERE player_id = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, p_id);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		String po = rs.getString(3);
		String team = rs.getString(5);

%>

<title>modify</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>선수 등록</h2>
	<form action="i_action.jsp" method="post" name="frm">
		<table border=1>
			<tr>
				<td>선수ID</td>
				<td><input type="text" name="id" value="<%=p_id %>" readonly></td>
			</tr>
			<tr>
				<td>선수이름</td>
				<td><input type="text" name="name" value="<%=rs.getString(2) %>"></td>
			</tr>
			<tr>
				<td>포지션</td>
				<td>
					<input type="radio" name="position" value="GK" <%if(po.equals("GK")) out.print("checked"); %> >골키퍼
					<input type="radio" name="position" value="DF" <%if(po.equals("DF")) out.print("checked"); %> >수비수
					<input type="radio" name="position" value="MF" <%if(po.equals("MF")) out.print("checked"); %> >미드필더
					<input type="radio" name="position" value="FW" <%if(po.equals("FW")) out.print("checked"); %> >공격수
				</td>
			</tr>
			<tr>
				<td>선수등록일</td>
				<td><input type="text" name="date" value="<%=rs.getString(4) %>"></td>
			</tr>
			<tr>
				<td>소속팀</td>
				<td>
					<select name="t_id">
						<option value="K00"> 무소속 </option>
						<option value="K01" <%if(team.equals("K01")) out.print("SELECTED"); %>>울산현대</option>
						<option value="K02" <%if(team.equals("K02")) out.print("SELECTED"); %>>삼성블루윙즈</option>
						<option value="K03" <%if(team.equals("K03")) out.print("SELECTED"); %>>스틸러스</option>
						<option value="K04" <%if(team.equals("K04")) out.print("SELECTED"); %>>유나이티드</option>
						<option value="K05" <%if(team.equals("K05")) out.print("SELECTED"); %>>현대모터스</option>
						<option value="K06" <%if(team.equals("K06")) out.print("SELECTED"); %>>FC부산소마고</option>
						<option value="K07" <%if(team.equals("K07")) out.print("SELECTED"); %>>드래곤즈</option>
						<option value="K08" <%if(team.equals("K08")) out.print("SELECTED"); %>>일화천마</option>
						<option value="K09" <%if(team.equals("K09")) out.print("SELECTED"); %>>FC서울</option>
						<option value="K10" <%if(team.equals("K10")) out.print("SELECTED"); %>>시티즌</option>
						<option value="K11" <%if(team.equals("K11")) out.print("SELECTED"); %>>경남FC</option>
						<option value="K12" <%if(team.equals("K12")) out.print("SELECTED"); %>>광주상무</option>
						<option value="K13" <%if(team.equals("K13")) out.print("SELECTED"); %>>강원FC</option>
						<option value="K14" <%if(team.equals("K14")) out.print("SELECTED"); %>>제주유나이티드FC</option>
						<option value="K15" <%if(team.equals("K15")) out.print("SELECTED"); %>>대구FC</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan=2 style="text-align : center">
					<input type="button" value="수정" onclick="checkAdd()">
					<input type="button" value="취소" onclick="res()">
				</td>	
			</tr>
		</table>
	<%
	} catch(Exception e){
		e.printStackTrace();
	}
	%>
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>