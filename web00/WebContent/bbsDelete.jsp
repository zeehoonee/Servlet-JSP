<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 브라우저가 보낸 데이터를 받아야 함 ==> Java로 짜야 함! -->
<!-- 브라우저가 보낸 데이터를 받을 때 사용하는 부품 필요함. -->
<!-- 브라우저에게 결과를 알려주기 위한 html코드가 미리 들어가 있음.  -->
<%
/*클라이언트가 입력한 No를 서버에서 받아주기(Java로!!) */
String no = request.getParameter("no"); // String "100"
%>
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
	글 삭제 요청되었음.
	<hr color="red">
	당신이 삭제를 원하는 번호는 <%= no %>입니다.
</body>
</html>