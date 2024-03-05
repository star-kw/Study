<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    // 세션에 저장된 사용자 정보 제거
    session.removeAttribute("user");
    // 로그아웃 성공 페이지로 리다이렉트
    response.sendRedirect("signform2.jsp");
%>
