<%@page import="multi.MemberDAO"%>
<%@page import="multi.MemberVO"%>
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
String tel = request.getParameter("tel"); 

//가방을 만들어서 값들을 넣고!
MemberVO bag = new MemberVO();
bag.setId(id);
bag.setTel(tel);
//dao에게 가방을 전달하자
MemberDAO dao = new MemberDAO();
dao.update(bag);
%>
<!-- 브라우저에게 결과를 알려주기 위한 html코드가 미리 들어가 있음.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 요청완료 페이지</title>
<style type="text/css">
body {
	background: lime;
}
</style>
</head>
<body>
회원정보 수정 요청되었음.
<hr color="red">
수정할 id : <%= id %> <br>
수정할 tel : <%= tel %> <br>
</body>
</html>