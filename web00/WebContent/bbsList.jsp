<%@page import="java.util.ArrayList"%>
<%@page import="multi.BbsVO"%>
<%@page import="multi.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	BbsDAO dao = new BbsDAO();
    //5,6)dao가 리턴한 BbsVO가 들어간 ArrayList를 받는다. 
    	ArrayList<BbsVO> list = dao.list();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>\
 <table class="table table-hover table-striped">
 <tr>
 	<td>no</td>
 	<td>title</td>
 	<td>content</td>
 	<td>writer</td>
 </tr>
<% 
	for(BbsVO bag: list){
%>
 <tr>
 	<td><%= bag.getNo() %></td>
 	<td>
 		<a href="http://localhost:8898/web00/bbsOne.jsp?no=<%= bag.getNo() %>">
			<%= bag.getTitle() %>
		</a>
 	</td>
 	<td><%= bag.getContent() %></td>
 	<td><%= bag.getWriter() %></td>
 </tr>
 <% } %>
 </table>
</body>
</html>