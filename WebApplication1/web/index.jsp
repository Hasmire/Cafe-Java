<%-- 
    Document   : index
    Created on : 11 17, 22, 7:47:16 AM
    Author     : Hasmire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="components/head.jsp"%>

<%@include file="components/navbar.jsp"%>

<!--Background Image-->
<img src="./img/CafeBackground.jpg" class="bg-img" />

<!--Index Body-->
<div class="container d-flex flex-column index">
    <span class="index-title ms-3 mb-4">Lorem ipsum dolor sit amet, consectetur.</span>
    <span class="index-sub ms-3 mb-5"
          >Etiam magna enim, viverra ac est a, efficitur ultricies</span
    >
    <a href="./menu.jsp" type="button" class="btn btn-primary ms-3">View our Products</a>
</div>

<%@include file="components/footer.jsp"%>