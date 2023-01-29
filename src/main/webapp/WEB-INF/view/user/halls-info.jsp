<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/halls_style.css"/>">
    <link rel="shortcut icon" href="<c:url value="/resources/css/museum.png"/>" type="image/x-icon">
    <title>Halls</title>
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
            <c:param name="museumId" value="${museum_Id}"/>
        </c:url>
        <li><a href="${showExcursionsButton}">Екскурсії</a></li>
        <li><a href="#">Зали</a></li>
        <li><a href="#foot">Контакти</a></li>
    </ul>
</header>
<div style="height: 100%">
    <div class="flex_container main">
        <c:forEach var="hall" items="${hallList}">
            <article>
                <section>
                    <header><u>Зала №${hall.hall_id}</u></header>
                    <hr>
                    <p><u><strong>Тема:</strong></u> ${hall.hall_theme}</p>
                    <p><u><strong>Кількість експонатів:</strong></u> ${hall.hall_number_of_showpieces}</p>
                    <c:set var="showpieces" value="${hall.showpieceList}"/>
                    <c:if test="${hall.hall_number_of_showpieces ne 0}">
                        <header style="font-size: 12pt;">Деякі експонати в залі</header>
                        <hr>
                        <div class="exhibits">
                            <section>
                                <p><strong>Назва: </strong><i>${showpieces.get(0).showpiece_name}</i></p>
                                <p><strong>Опис: </strong><i>${showpieces.get(0).showpiece_description}</i></p>
                                <p><strong>Дата створення: </strong><i>${showpieces.get(0).showpiece_date_of_creation}</i></p>
                            </section>
                            <c:if test="${showpieces.size() > 1}">
                                <hr class="hr1">
                                <section>
                                    <p><strong>Назва: </strong><i>${showpieces.get(1).showpiece_name}</i></p>
                                    <p><strong>Опис: </strong><i>${showpieces.get(1).showpiece_description}</i></p>
                                    <p><strong>Дата створення: </strong><i>${showpieces.get(1).showpiece_date_of_creation}</i></p>
                                </section>
                            </c:if>
                        </div>
                    </c:if>
                </section>
            </article>
        </c:forEach>
    </div>
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