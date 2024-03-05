<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Star Coffee Order Detail</title>
<link href="../css/menu.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>주문 상세 정보</h1>
        <div class="confirm-info">
            <%
                String selectedCoffee = request.getParameter("selectedCoffee");
            	int coffeePrice = 0;    
            	if(selectedCoffee != null) {
                	switch(selectedCoffee) {
                    	case "아메리카노":
                        	coffeePrice = 3000;
                        	break;
                    	case "카페라떼":
                        	coffeePrice = 3500;
                        	break;
                    	case "카푸치노":
                        	coffeePrice = 3500;
                        	break;
                    	case "에스프레소":
                        	coffeePrice = 2500;
                        	break;
                	}
            %>
            <p><%= selectedCoffee %></p>
            <p><%= coffeePrice %>원</p>
            <h3>옵션 선택</h3>
            <form action="confirm.jsp" method="post">
            	<label><input type="radio" name="location" value="테이크아웃"> 테이크아웃</label>
                <label><input type="radio" name="location" value="매장"> 매장</label>
                <label><input type="radio" name="location" value="텀블러"> 텀블러</label>
                <label><input type="checkbox" name="option" value="shot"> 샷추가(+500원)</label><br>
                <label><input type="checkbox" name="option" value="soy"> 두유로 변경</label><br>
                <label><input type="checkbox" name="option" value="signature"> 시그니처 원두로 변경(+200원)</label><br>
                <input type="hidden" name="selectedCoffee" value="<%= selectedCoffee %>">
                <input type="hidden" name="coffeePrice" value="<%= coffeePrice %>">
                <button type="submit">선택 완료</button>
            </form>
            <% } else { %>
            <p>커피를 선택하지 않았습니다.</p>
            <% } %>
        </div>
    </div>
</body>
</html>
