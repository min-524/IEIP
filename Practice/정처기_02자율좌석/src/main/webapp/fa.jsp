<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<h2>좌석예매 정보가 존재하지 않습니다.</h2>
	<div>
	<button style="margin-left:auto; margin-right:auto" onclick="window.location ='index.jsp'">돌아가기</button>
	</div>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>