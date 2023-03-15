<%@page import="com.sun.net.ssl.HttpsURLConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 브라우저가 보낸 데이터를 받아야 함 ==> Java로 짜야 함! -->
<!-- 브라우저가 보낸 데이터를 받을 때 사용하는 부품 필요함. -->
<%
	// Java 코드 넣는 부분!
// HttpServletRequest request = new HttpServletRequest();
// tomcat은 미리 request를 만들어서 내장시켜놨어요!
String id = request.getParameter("id"); //"apple"
/* String pw = request.getParameter("pw"); //"apple" */
String name = request.getParameter("name"); //"apple"
String tel = request.getParameter("tel"); //"apple"
%>
<!-- 브라우저에게 결과를 알려주기 위한 html코드가 미리 들어가 있음.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원전체목록(여러 명) 요청완료 페이지</title>
<style type="text/css">
body {
	background: lime;
}
</style>
</head>
<body>
회원전체목록(여러 명) 요청되었음.
<hr color="red">
== 검색 결과 == <br>
ID : <%= id %> + / 이름 : <%= name %> / 전화번호 : <%= tel %>;
</body>
</html>