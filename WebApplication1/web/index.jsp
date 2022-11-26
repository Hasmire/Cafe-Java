<%-- 
    Document   : index
    Created on : 11 17, 22, 7:47:16 AM
    Author     : Hasmire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- JQuery-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <!--Javascript-->
        <script type="text/javascript" src="logic.js"></script>

<%@include file="components/header.html"%>

<img src="./img/pexels-chevanon-photography-302899.jpg" class="bg-img" />
<div class="container d-flex flex-column index ">
    <span class="index-title ms-3 mb-4">Lorem ipsum dolor sit amet, consectetur.</span>
    <span class="index-sub ms-3 mb-5">Etiam magna enim, viverra ac est a, efficitur ultricies</span>
    <a href="./menu.jsp" type="button" class="btn btn-primary ms-3">View our Products</a>
</div>

<%@include file="components/footer.html"%>

