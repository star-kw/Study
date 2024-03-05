<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Star Coffee 결제 페이지</title>
<link href="../css/menu.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>주문 내역 및 결제 정보</h1>
        <div class="confirm-info">
            <p>주문하신 커피: <%= request.getParameter("selectedCoffee") %></p>
            <% 
                String coffeePriceString = request.getParameter("coffeePrice");
                int coffeePrice = 0;
                if(coffeePriceString != null && !coffeePriceString.isEmpty()) {
                    coffeePrice = Integer.parseInt(coffeePriceString);
                } else {
                    coffeePrice = 0; // 기본 가격 설정
                }
            %>
            <p>커피 가격: <%= coffeePrice %>원</p>
            <p>장소 선택: <%= request.getParameter("location") %></p>
            <%-- 선택된 옵션과 가격 표시 --%>
            <%
                String[] options = request.getParameterValues("option");
                if (options != null && options.length > 0) {
            %>
                <p>옵션 선택:</p>
                <ul>
                <% for (String option : options) {
                        switch(option) {
                            case "shot":
                %>
                                <li>샷추가 (+500원)</li>
                <%          break;
                            case "soy":
                %>
                                <li>두유로 변경</li>
                <%          break;
                            case "signature":
                %>
                                <li>시그니처 원두로 변경 (+200원)</li>
                <%          break;
                        }
                    }
                %>
                </ul>
            <% } else { %>
                <p>옵션을 선택하지 않았습니다.</p>
            <% } %>
            <%-- 총 결제 금액 계산 --%>
            <%
                int totalPrice = coffeePrice;
                if (options != null) {
                    for (String option : options) {
                        switch(option) {
                            case "shot":
                                totalPrice += 500;
                                break;
                            case "soy":
                                // 두유는 추가비용 없음
                                break;
                            case "signature":
                                totalPrice += 200;
                                break;
                        }
                    }
                }
            %>
            <p>총 결제 금액: <%= totalPrice %>원</p>
            <form action="menu.jsp" method="post">
            	<button type="submit">추가주문하기</button>
            </form>
            <form action="../sign/logout.jsp" method="post"> <!-- 로그아웃 기능 추가 -->
                <button type="submit">로그아웃</button>
            </form>
        </div>
    </div>
</body>
</html>
