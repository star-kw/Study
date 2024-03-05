<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link href="../css/index.css" rel="stylesheet">
</head>
<body>
    <c:if test="${empty sessionScope.user}">
        <div class="wrapper">
            <div class="container">
                <div class="sign-up-container">
                    <form action="signup.jsp" method="post">
                        <h1>회원가입</h1>
                        <input type="text" name="name" placeholder="Name">
                        <input type="email" name="email" placeholder="Email">
                        <input type="password" name="password" placeholder="Password">
                        <button type="submit" class="form_btn">가입하기</button>
                    </form>
                </div>
                <div class="sign-in-container">
                    <form action="login.jsp" method="post">
                        <h1>로그인</h1>
                        <input type="email" name="email" placeholder="Email">
                        <input type="password" name="password" placeholder="Password">
                        <button type="submit" class="form_btn">로그인</button>
                    </form>
                </div>
                <div class="overlay-container">
                    <div class="overlay-left">
                        <h1>환영합니다</h1>
                        <p>주문을 위해 로그인을 진행 해주세요</p>
                        <button id="signIn" class="overlay_btn">로그인</button>
                    </div>
                    <div class="overlay-right">
                        <h1>반갑습니다</h1>
                        <p>계정이 없으시다면 회원가입을 진행 해주세요</p>
                        <button id="signUp" class="overlay_btn">회원가입</button>
                    </div>
                </div>
            </div>
        </div>
    </c:if>
    <script src="index.js"></script>
</body>
</html>
