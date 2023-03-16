<%@page import="multi.BbsVO"%>
<%@page import="multi.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String no = request.getParameter("no"); 
    	
    	BbsDAO dao = new BbsDAO();
    	BbsVO bag =  dao.one(Integer.parseInt(no));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
당신이 검색을 원하는 글 번호는  <%= no %>
<hr color="red">
검색한 제목 : <%= bag.getTitle() %> <br>
검색한 내용 : <%= bag.getContent() %> <br>
검색한 작성자 : <%=bag.getWriter() %> <br>
</body>
</html>