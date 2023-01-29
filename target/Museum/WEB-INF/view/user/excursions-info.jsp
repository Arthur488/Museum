<%--
  Created by IntelliJ IDEA.
  User: holeg
  Date: 25.01.2023
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/excursion_style.css"/>">
  <link rel="shortcut icon" href="<c:url value="/resources/css/museum.png"/>" type="image/x-icon">
  <title>Excursion</title>
</head>

<body>
<header>
  <ul class="menu">
    <li><img src="<c:url value="/resources/css/museum.png"/>" alt="Travel bus" class="logo"></li>
    <c:url var="main" value="/user/"/>
    <li><a href="${main}">Головна сторінка</a></li>
    <c:url var="museums" value="/user/allMuseums"/>
    <li><a href="${museums}">Музеї</a></li>
    <li><a href="#">Екскурсії</a></li>
    <c:url var="showHallsButton" value="/user/showHalls">
      <c:param name="museumId" value="${museum_Id}"/>
    </c:url>
    <li><a href="${showHallsButton}">Зали</a></li>
    <li><a href="#foot">Контакти</a></li>
  </ul>
</header>

<div class="flex_container main">
  <c:forEach var="excursion" items="${excursionListForMuseum}">
    <article>
      <section>
        <header>${excursion.excursion_name}</header>
        <hr>
        <p>Дата: <strong>${excursion.excursion_date}</strong></p>
        <p>Час: <strong>${excursion.excursion_start_time}</strong> - <strong>${excursion.excursion_end_time}</strong></p>
        <p>Ціна: <strong>${excursion.excursion_price}</strong> грн</p>
      </section>
      <c:url var="aboutExcursion" value="aboutExcursion">
        <c:param name="excursionId" value="${excursion.id_excursion}"/>
      </c:url>
      <input type="button" class="button" value="Дізнатися більше ..." onclick="window.location.href='${aboutExcursion}'">
    </article>
  </c:forEach>
</div>

<footer id="foot">
  <h3>Зв'яжіться з нами</h3>
  <span><a href="#"><img src="<c:url value="/resources/css/facebook.png"/>" alt="facebook"></a></span>
  <span><a href="#"><img src="<c:url value="/resources/css/twitter.png"/>" alt="twitter"></a></span>
  <span><a href="#"><img src="<c:url value="/resources/css/instagram.png"/>" alt="instagram"></a></span>
  <span><a href="https://www.youtube.com/@britishmuseum"><img src="<c:url value="/resources/css/youtube.png"/>" alt="youtube"></a></span>
  <span><a href="#"><img src="<c:url value="/resources/css/message.png"/>" alt="message"></a></span>
  <p>+380294235479</p>
  <hr>
  <div class="footer_menu">
    <a href="#">Про нас</a>
    <a href="#">Карта музеїв</a>
    <a href="<c:url value="/admin/"/>">Адміністратор</a>
    <a href="#">Політика конфіденційності</a>
    <a href="#">Coockies</a>
    <span>@2023</span>
  </div>
</footer>
</body>

</html>
