<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/museums_style.css"/>">
    <link rel="shortcut icon" href="<c:url value="/resources/css/museum.png"/>" type="image/x-icon">
    <title>Museums</title>
</head>

<body>
<header>
    <ul class="menu">
        <li><img src="<c:url value="/resources/css/museum.png"/>" alt="Travel bus" class="logo"></li>
        <c:url var="main" value="/user/"/>
        <li><a href="${main}">Головна сторінка</a></li>
        <li><a href="#">Музеї</a></li>
        <li><a href="#foot">Контакти</a></li>
    </ul>
</header>

<div class="flex_container">
    <c:forEach var="museum" items="${allMuseums}">
        <c:url var="updateButton" value="#">
            <c:param name="#" value="#" />
        </c:url>
        <div>
            <article>
                <c:if test="${museum.base64Image.length()>0}">
                    <img src="<c:url value='/resources/img/${museum.base64Image}'/>" alt="Error">
                </c:if>
                <c:if test="${museum.base64Image.length()==null}">
                    <input type="text" value="No picture" readonly="readonly"/>
                </c:if>
                <section>
                    <header>${museum.museum_name}</header>
                    <hr>
                    <p>Години роботи музею:</p>
                    <p>з <strong>${museum.museum_openTime}</strong> до <strong>${museum.museum_closeTime}</strong></p>
                    <hr>
                    <p>Місцезнаходження: <strong>${museum.museum_City}</strong></p>
                </section>
                <c:url var="showExcursionsButton" value="showExcursions">
                    <c:param name="museumId" value="${museum.museum_id}"/>
                </c:url>
                <a href="${showExcursionsButton}" class="button" style="text-decoration: none;text-align: center;">Доступні екскурсії</a>
            </article>
        </div>
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
