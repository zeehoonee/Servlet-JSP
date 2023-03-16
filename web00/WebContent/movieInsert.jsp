<%@page import="multi.MovieDAO"%>
<%@page import="multi.MovieVO"%>
<%@page import="com.sun.net.ssl.HttpsURLConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="bag" class="multi.MovieVO"></jsp:useBean>
<jsp:setProperty property="*" name="bag" />
<%
/* String id = request.getParameter("id");
String name = request.getParameter("name");
String content = request.getParameter("content");
String price = request.getParameter("price");
String company = request.getParameter("company");
String img = request.getParameter("img");

ProductVO bag = new ProductVO();
bag.setId(id);
bag.setName(name);
bag.setContent(content);
bag.setPrice(Integer.parseInt(price));
bag.setCompany(company);
bag.setImg(img); */

// dao에게 가방을 전달하자
MovieDAO dao = new MovieDAO();
dao.insert(bag);
%>
<!-- 브라우저에게 결과를 알려주기 위한 html코드가 미리 들어가 있음.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화정보 등록완료 페이지</title>
<style type="text/css">
body {
	background: lime;
} 
</style>
</head>
<body>
	영화 정보 등록되었습니다!
	<hr color="red">
	등록한 영화제목 :
	<%=bag.getTitle() %>
	<br> 등록한 영화상영지역 :
	<%=bag.getLocation() %>
	<br> 등록한 영화감독 :
	<%=bag.getDirector() %>
</body>
</html>