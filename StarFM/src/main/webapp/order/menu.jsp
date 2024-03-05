<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Star Coffee Menu</title>
<link href="../css/order.css" rel="stylesheet">
</head>
<body>
	<div class="container">
        <h1>STAR COFFEE MENU</h1>
        <form action="detail.jsp" method="post">
            <div class="coffee-option">
                <label>
                    <input type="radio" name="selectedCoffee" value="아메리카노">
                    <img src="ameri.jpg" alt="아메리카노">
                </label>
                <label>
                    <input type="radio" name="selectedCoffee" value="카페라떼">
                    <img src="latte.jpg" alt="카페라떼">
                </label>
                <label>
                    <input type="radio" name="selectedCoffee" value="카푸치노">
                    <img src="cappuccino.jpg" alt="카푸치노">
                </label>
                <label>
                    <input type="radio" name="selectedCoffee" value="에스프레소">
                    <img src="espresso.jpg" alt="에스프레소">
                </label>
            </div>
            <button type="submit">주문하기</button>
        </form>
    </div>
</body>
</html>
