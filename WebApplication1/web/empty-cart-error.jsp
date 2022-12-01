<%-- 
    Document   : duplicate-error
    Created on : 11 29, 22, 7:28:17 PM
    Author     : Jay
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="components/head.jsp"%>

<nav class="navbar sticky-top navbar-expand-lg p-3 mb-3">
    <div class="container">
        <!--Left Nav-->
        <a href="./index.jsp">
            <i class="fa-solid fa-mug-hot fa-3x me-2"></i>
            <span class="nav-title">Cafe Java</span>
        </a>
        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
            >
            <span class="navbar-toggler-icon"></span>
        </button>
        <!--Right Nav-->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div
                class="navbar-nav ms-auto right-nav nav-auth d-flex justify-content-center align-items-center"
                >
                <a href="./menu.jsp" class="nav-a">Menu</a>
                <a href="./Cart.jsp" class="nav-a">Cart</a>
                <form action="Logout">
                <Button type="submit" class="btn btn-primary" value="Login">
                    <c:choose>
                        <c:when test= "${sessionScope.username==null}">
                            Login
                        </c:when>
                        <c:otherwise>
                            Logout
                        </c:otherwise>
                    </c:choose>
                </button>
                </form>
            </div>
        </div>
    </div>
</nav>

<!--Background Image-->
<img src="./img/CafeBackground.jpg" class="bg-img" />

<!--Index Body-->
<div class="container d-flex flex-column index">
    <span class="index-title ms-3 mb-4">Error.</span>
    <span class="index-sub ms-3 mb-5">Attempted to checkout with an empty cart.</span>
    <a href="./menu.jsp" type="button" class="btn btn-primary ms-3">Go to Menu</a>
</div>

<%@include file="components/footer.jsp"%>