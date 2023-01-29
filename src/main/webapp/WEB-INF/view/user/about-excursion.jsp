<%--
  Created by IntelliJ IDEA.
  User: holeg
  Date: 25.01.2023
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/main_style.css"/>">
    <link rel="shortcut icon" href="<c:url value="/resources/css/museum.png"/>" type="image/x-icon">
    <script src="https://code.jquery.com/jquery-2.2.4.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js"></script>

    <title>Excursion</title>
    <script>${error}</script>
</head>

<body>
<header>
    <ul class="menu">
        <li><img src="<c:url value="/resources/css/museum.png"/>" alt="Travel bus" class="logo"></li>
        <c:url var="main" value="/user/"/>
        <li><a href="${main}">Головна сторінка</a></li>
        <c:url var="museums" value="/user/allMuseums"/>
        <li><a href="${museums}">Музеї</a></li>
        <c:url var="showExcursionsButton" value="/user/showExcursions">
            <c:param name="museumId" value="${excursion.museum.museum_id}"/>
        </c:url>
        <li><a href="${showExcursionsButton}">Екскурсії</a></li>
        <c:url var="showHallsButton" value="/user/showHalls">
            <c:param name="museumId" value="${excursion.museum.museum_id}"/>
        </c:url>
        <li><a href="${showHallsButton}">Зали</a></li>
        <li><a href="#foot">Контакти</a></li>
    </ul>
</header>

<div class="flex_container main">
    <article class="flex">
        <section style="margin-right: 10%; width: 100%">
            <header>${excursion.excursion_name}</header>
            <hr>
            <p><strong>Опис</strong></p>
            <p>${excursion.excursion_description}</p>
            <p><strong>Дата:</strong> ${excursion.excursion_date}</p>
            <p><strong>Час:</strong> ${excursion.excursion_start_time} - ${excursion.excursion_end_time}</p>
            <p><strong>Ціна:</strong> ${excursion.excursion_price} UAN</p>
            <p><strong>Вікові обмеження:</strong> ${excursion.excursion_age_access}+</p>
            <p><strong>Ваш гід:</strong> ${excursion.guide.guide_full_name}, ${excursion.guide.guide_post}</p>
            <c:url var="halls" value="/user/showHallsOfExcursion">
                <c:param name="museumId" value="${excursion.museum.museum_id}"/>
                <c:param name="excursionId" value="${excursion.id_excursion}"/>
            </c:url>
            <p><strong>Зали:</strong> <a href="${halls}">
                <c:forEach var="hall" items="${excursion.hallList}">
                    ${hall.hall_id};
                </c:forEach>
            </a></p>
        </section>
        <section style="border: 1px solid;border-radius: 6px;padding: 6px;">
            <form:form action="saveUser" modelAttribute="user">
                <form:hidden path="user_id"/>
                <form:hidden path="excursion.id_excursion" value="${excursion.id_excursion}"/>
                <p>
                    Ваше повне ім'я: <form:input path="user_full_name"/>
                    <form:errors path="user_full_name"/>
                </p>
                <p>Ваш вік: <form:input path="user_age"/></p>
                <p>
                    Ваш номер телефону: <form:input type="tel" class="phone" placeholder="01234567890"
                                                   path="user_phone"/>
                    <form:errors type="tel" class="phone" placeholder="01234567890" path="user_phone"/>
                </p>
                <p>
                    Ваш email: <form:input type="email" placeholder="yourmail@ukr.net" path="user_email"/>
                    <form:errors type="email" placeholder="yourmail@ukr.net" path="user_email"/>
                </p>
                <p><input type="submit" value="Забронювати квиток" class="button"></p>
            </form:form>
        </section>
    </article>
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

<script type="text/javascript">
    jQuery(function ($) {
        $(".phone").mask("+38(999)999-9999");
    });
</script>

</html>