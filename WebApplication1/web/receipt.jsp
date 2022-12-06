<%-- 
    Document   : checkout
    Created on : 11 27, 22, 4:01:33 AM
    Author     : Jay
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="components/head.jsp"%>

<%@include file="components/navbar.jsp"%>

<!--Checkout Form-->
<div class="container" style="max-width: 500px;">
    <div class="card receipt-card mb-2" style="background-color: #302e2e">
        <div class="card-body mb-4">
            <div class="container">
                <p class="mt-5 mb-5" style="font-size: 30px;">Thank for your purchase!</p>
                <div class="row">
                    <%
                        if (session.getAttribute("CartList") == null) {
                            response.sendRedirect("invalid-checkout-empty.jsp");
                            return;
                        }
                        ArrayList<Item> itemList = (ArrayList<Item>) session.getAttribute("CartList");
                        int total = 0;
                        Iterator<Item> it = itemList.iterator();
                        while (it.hasNext()) {
                            Item x = it.next();
                            int itemPrice = x.getPrice() * x.getQuantity();
                            total += itemPrice;
                    %>
                    <div class="col-xl-10">
                        <p><%out.print(x.getName());%></p>
                    </div>
                    <div class="col-xl-2">
                        <p class="float-end">₱<%out.println(itemPrice);%>
                        </p>
                    </div>
                    <hr>
                    <%}%>

                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <p class="float-end fw-bold">Total: ₱<%out.println(total);%>
                        </p>
                    </div>
                    <hr>
                </div>
            </div>
        </div>
    </div>
</div>

<%session.removeAttribute("CartList");%>
<%@include file="components/footer.jsp"%>
