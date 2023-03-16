<%@page import="multi.ProductDAO"%>
<%@page import="com.sun.net.ssl.HttpsURLConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 브라우저가 보낸 데이터를 받아야 함 ==> Java로 짜야 함! -->
<!-- 브라우저가 보낸 데이터를 받을 때 사용하는 부품 필요함. -->
<%
// Java 코드 넣는 부분!
// HttpServletRequest request = new HttpServletRequest();
// tomcat은 미리 request를 만들어서 내장시켜놨어요!
String id = request.getParameter("id");

//dao에게 가방을 전달하자
ProductDAO dao = new ProductDAO();
dao.delete(id);
%>
<!-- 브라우저에게 결과를 알려주기 위한 html코드가 미리 들어가 있음.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보 삭제 확인페이지</title>
<style type="text/css">
body {
	background: lime;
}
</style>
</head>
<body>
	상품정보 삭제되었음.
	<hr color="red">
	삭제한 상품 id :
	<%=id%>
	<br>
</body>
</html>