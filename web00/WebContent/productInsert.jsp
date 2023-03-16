<%@page import="multi.ProductDAO"%>
<%@page import="multi.ProductVO"%>
<%@page import="com.sun.net.ssl.HttpsURLConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:useBean id="bag" class="multi.ProductVO"></jsp:useBean>
	<jsp:setProperty property="*" name="bag"/>
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
ProductDAO dao = new ProductDAO();
dao.insert(bag);
%>
<!-- 브라우저에게 결과를 알려주기 위한 html코드가 미리 들어가 있음.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보 등록완료 페이지</title>
<style type="text/css">
body {
	background: lime;
}
</style>
</head>
<body>
	상품 정보 등록되었습니다!
	<hr color="red">
	등록한 상품 이름 :
	<%=bag.getName()%>
	<br> 등록한 상품 가격 :
	<%=bag.getPrice()%>
	<br> 등록한 상품 제조사 :
	<%=bag.getCompany()%>
	<br> 등록한 상품 이미지 :
	<img src="img/<%= bag.getImg() %>" width=200 height=200>
	<br>
</body>
</html>