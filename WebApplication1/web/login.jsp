<%-- 
    Document   : login
    Created on : Nov 28, 2022, 12:42:36 AM
    Author     : Lance
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="components/head.jsp"%>

<%@include file="components/navbar.jsp"%>

<div class="center">
    <h1>Login</h1>
    <form action="Login" method="post">
        <div class="txt_field">
            <input type="text" name="uname" required>
            <span></span>
            <label>Username</label>
        </div>
        <div class="txt_field">
            <input type="password" name="pass" required>
            <span></span>
            <label>Password</label>
        </div>

        <input class="Login" type="submit" value="Login">
    </form>
</div>

<%@include file="components/footer.jsp"%>