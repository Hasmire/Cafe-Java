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

<% 
    
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    
    if(session.getAttribute("username")==null){
        response.sendRedirect("login.jsp");
        return;
    }

%>

<!--Checkout Form-->
<div class="container">
    <div class="checkout-title text-center mb-2">Checkout</div>
    <form method = "GET" action="ValidateCheckout">
        <div class="row g-5">
            <!--Left-->
            <div class="col-md-7 col-lg-8">
                <!--Customer Forms-->
                <h4 class="mb-3">Customer Information</h4>

                <div class="row g-3 mb-4 pb-4 border-bottom">
                    <div class="col-sm-6">
                        <label for="firstName" class="form-label">First name</label>
                        <input type="text" name="checkoutInfo" class="form-control" id="firstName" placeholder="" value="" />
                    </div>

                    <div class="col-sm-6">
                        <label for="lastName" class="form-label">Last name</label>
                        <input type="text" name="checkoutInfo" class="form-control" id="lastName" placeholder="" value="" />
                    </div>

                    <div class="col-12 mb-4">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" name="checkoutInfo" class="form-control" id="address" placeholder="" value="" />
                    </div>
                </div>

                <h4 class="mb-3">Payment</h4>
                <div class="row gy-3 mb-4 pb-4 border-bottom">
                    <div class="col-md-6">
                        <label for="cc-name" class="form-label">Name on card</label>
                        <input type="text" name="checkoutInfo" class="form-control" id="cc-name" placeholder="" value="" />
                        <small class="text-muted">Full name as displayed on card</small>
                    </div>

                    <div class="col-md-6">
                        <label for="cc-number" class="form-label">Credit card number</label>
                        <input type="text" name="checkoutInfo" class="form-control" id="cc-number" placeholder="" value="" />
                    </div>

                    <div class="col-md-3">
                        <label for="cc-expiration" class="form-label">Expiration</label>
                        <input type="text" name="checkoutInfo" class="form-control" id="cc-expiration" placeholder="" value="" />
                    </div>

                    <div class="col-md-3">
                        <label for="cc-cvv" class="form-label">CVV</label>
                        <input type="text" name="checkoutInfo" class="form-control" id="cc-cvv" placeholder="" value="" />
                    </div>
                </div>
            </div>

            <!--Checkout Price-->
            <div class="mt-0 col-md-4 col-lg-3 order-md-last">
                <ul class="list-group mb-3">
                    <%
                        if (session.getAttribute("CartList") == null) { //If cart is empty
                            out.println("<li class=\"list-group-item d-flex justify-content-between lh-sm\">");
                            out.println("<div><h6 class=\"mb-0\">Your cart is empty</h6></div><span class=\"text-muted\"></span>");
                        } else {
                            ArrayList<Item> itemList = (ArrayList<Item>) session.getAttribute("CartList");
                            int total = 0;
                            Iterator<Item> it = itemList.iterator();
                            while (it.hasNext()) {
                                Item x = it.next();
                                int itemPrice = x.getPrice() * x.getQuantity();
                                int quantity = x.getQuantity();
                                total += itemPrice;
                    %>
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <div>
                            <h6 class="mb-0"><%out.print(x.getName());%></h6>
                        </div>
                        <span class="text-muted"><%out.println(itemPrice);%></span>
                    </li>
                    <%}%>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Total (PHP)</span>
                        <strong><%out.println(total);%></strong>
                    </li>
                    <%}%>
                </ul>
                <button type="submit" type="button" class="btn btn-primary w-100 mt-3 mb-3">Place Order</button>
            </div>
        </div>
    </form>
</div>


<%@include file="components/footer.jsp"%>
