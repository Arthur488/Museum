<%--
  Created by IntelliJ IDEA.
  User: holeg
  Date: 23.01.2023
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="<c:url value="/resources/css/main_style.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
  <link rel="shortcut icon" href="<c:url value="/resources/css/museum.png"/>" type="image/x-icon">
  <title>Museums. Main page</title>
  <script>${message}</script>
</head>

<body>
<header>
  <ul class="menu">
    <li><img src="<c:url value="/resources/css/museum.png"/>" alt="Travel bus" class="logo"></li>
    <c:url var="allMuseums" value="allMuseums"/>
    <li><a href="#">Головна сторінка</a></li>
    <li><a href="${allMuseums}">Музеї</a></li>
    <li><a href="#foot">Контакти</a></li>
  </ul>
</header>

<div class="flex_container main">
  <article class="flex">
    <section>
      <header>Ласкаво просимо у світ музеїв</header>
      <p>Ця платформа призначена для полегшення пошуку та купівлі квитків у більшість музеїв. Наш сайт
        співпрацює з понад 100 музеями та галереями світу.</p>
      <p>Це допоможе вам швидко і без
        проблеми спланувати свої вихідні з прибутком. Занурити
        себе у світі культури та історії разом з нами.</p>
    </section>
    <img src="<c:url value="/resources/css/NationalArtMuseumOfUkraine.png"/>" alt="NationalArtMuseumOfUkraine">
    <input type="button" class="button" value="Вибрати музей" onclick="window.location.href='${allMuseums}'">
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

</html>
