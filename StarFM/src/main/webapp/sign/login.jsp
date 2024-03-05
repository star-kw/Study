<%@ page import="com.example.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<jsp:useBean id="users" class="java.util.ArrayList" scope="application"/>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    // 사용자 목록을 가져와서 입력된 이메일과 비밀번호와 일치하는 사용자 찾기
    User loggedInUser = null;
    for (Object obj : users) {
    	User user = (User) obj;
        if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
            loggedInUser = user;
            break;
        }
    }

    if (loggedInUser != null) {
        // 세션에 로그인 정보 저장
        session.setAttribute("user", loggedInUser);
        // 로그인 성공 페이지로 리다이렉트
        response.sendRedirect("../order/menu.jsp");
    } else {
        // 로그인 실패 페이지로 리다이렉트
        String message = "로그인 실패";
        String redirect = "signform2.jsp";
%>
	<script>
    	var msg = "<%= message %>";
    	var url = "<%= redirect %>";
    	alert(msg);
    	location.href = url;
	</script>
<%} %>