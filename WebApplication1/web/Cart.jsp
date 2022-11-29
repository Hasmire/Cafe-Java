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
    }

%>

<!--Title-->
<div class="menu-title mt-5 mb-5">Your cart items</div>

<!--Cart using Bootstrap grid-->
<div class="container text-center flex-grow-1">
    <div class="row mb-4">
        <div class="col-4 text-start cart-legend">Product</div>
        <div class="col cart-legend">Price</div>
        <div class="col-2 cart-legend">Quantity</div>
        <div class="col cart-legend">Total</div>
    </div>
    <%
        if (session.getAttribute("CartList") == null) { //If cart is empty
            out.println("<div class=\"menu-title mt-5 mb-5 text-danger\">Your Cart is Empty</div>");
            out.println("<a href=\"./menu.jsp\" type=\"button\" class=\"btn btn-danger\">Go Back</a>");
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
    <!--Items go here-->
    <div class="row pt-3 pb-3 border-top justify-content-between align-items-center">
        <div class="col-4 text-start">
            <div class="d-flex">
                <img src="./img/CaffeMisto.jpg" class="img-fluid rounded-5 cart-img me-3" />
                <div class="">
                    <div class="mb-3 cart-title"><%out.print(x.getName());%></div>
                    <form action="RemoveItem" method="GET">
                        <button class="btn cart-remove p-0" name="item_id" value="<%out.print(x.getId());%>">Remove</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col cart-price"><%out.println(x.getPrice());%></div>
        <div class="col-2 cart-price">
            <input class="input-group-field cart-quant" type="number" name="quantity" value=<%out.println("\"" + quantity + "\"");%> readonly />
        </div>
        <div class="col cart-price"><%out.println(itemPrice);%></div>
    </div>
    <%}%>

    <!--Total-->
    <div class="row mb-4 pt-4 border-top">
        <div class="col-4"></div>
        <div class="col"></div>
        <div class="col-2 cart-legend">Sub-Total</div>
        <div class="col cart-legend"><%out.println(total);%></div>
    </div>

    <!--Checkout Button-->
    <div class="row mb-4 pt-4">
        <div class="col-2"></div>      
        <div class="col"></div>
        <div class="col-2">
            <form action="ClearCart" method="GET">
                <button type="submit" class="btn btn-danger cart-checkout">Clear Cart</button>
            </form>
        </div>
        <div class="col-2">         
            <a href="./checkout.jsp" type="button" class="btn btn-primary cart-checkout">Checkout</a>
        </div>
    </div>
</div>

<%@include file="components/footer.jsp"%>
<%}%>