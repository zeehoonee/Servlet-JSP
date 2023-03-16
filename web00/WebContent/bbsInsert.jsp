<%@page import="multi.BbsDAO"%>
<%@page import="multi.BbsVO"%>
<%@page import="com.sun.net.ssl.HttpsURLConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 브라우저가 보낸 데이터를 받아야 함 ==> Java로 짜야 함! -->
<!-- 브라우저가 보낸 데이터를 받을 때 사용하는 부품 필요함. -->
<%
	// Java 코드 넣는 부분!
// HttpServletRequest request = new HttpServletRequest();
// tomcat은 미리 request를 만들어서 내장시켜놨어요!
String title = request.getParameter("title"); 
String content = request.getParameter("content"); 
String writer = request.getParameter("writer"); 

//가방을 만들어서 값들을 넣고!
BbsVO bag = new BbsVO();
bag.setTitle(title);
bag.setContent(content);
bag.setWriter(writer);

//dao에게 가방을 전달하자
BbsDAO dao = new BbsDAO();
dao.insert(bag);
%>
<!-- 브라우저에게 결과를 알려주기 위한 html코드가 미리 들어가 있음.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: lime;
}
</style>
</head>
<body>
글 쓰기 요청되었음.
<hr color="red">
글 제목 : <%= title %> <br>
글 내용 : <%= content %> <br>
글 작성자 : <%= writer %> <br>
</body>
</html>