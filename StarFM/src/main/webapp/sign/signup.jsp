<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page import="com.example.model.User" %>
<jsp:useBean id="users" class="java.util.ArrayList" scope="application"/>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    // 사용자 생성
    User newUser = new User(name, email, password);

    // 생성된 사용자를 사용자 목록에 추가
    users.add(newUser);

    // 사용자 목록을 애플리케이션 스코프에 저장
    application.setAttribute("users", users);
   
    String message = "회원가입이 완료되었습니다";
    String redirectUrl = "signform2.jsp";
%>
    <%-- 회원가입 성공 페이지로 리다이렉트 --%> 
	<script>
    	var msg = "<%= message %>";
    	var url = "<%= redirectUrl %>";
    	alert(msg);
    	location.href = url;
	</script>