<%-- 
    Document   : navbar
    Created on : 11 26, 22, 5:22:34 AM
    Author     : Jay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <Button type="submit" class="btn btn-primary" value="Logout">Logout</button>
                </form>
            </div>
        </div>
    </div>
</nav>
