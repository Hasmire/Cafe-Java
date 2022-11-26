<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- JQuery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <!--Javascript-->
    <script type="text/javascript" src="logic.js" defer></script>

    <%@include file="components/header-auth.html"%>

    <div class="menu-title mt-5 mb-5">Your Cart items</div>
            <div class="container text-center flex-grow-1">
        <div class="row mb-4">
            <div class="col-4 text-start cart-legend">Product</div>
            <div class="col cart-legend">Price</div>
            <div class="col-2 cart-legend">Quantity</div>
            <div class="col cart-legend">Total</div>
        </div>
        <% 
            if(session.getAttribute("CartList")==null){ //If cart is empty
                out.println("<div class=\"menu-title mt-5 mb-5 text-danger\">Your Cart is Empty</div>");
                out.println("<a href=\"./menu.jsp\" type=\"button\" class=\"btn btn-danger\">Go Back</a>");
            }
            else{
                ArrayList<Item> itemList = (ArrayList<Item>) session.getAttribute("CartList");
                int total=0;
                Iterator<Item> it = itemList.iterator();      
                while(it.hasNext()){ 
                Item x = it.next(); 
                int itemPrice = x.getPrice() * x.getQuantity();
                int quantity = x.getQuantity();
                total+=itemPrice;
        %>
        <div class="row pt-3 pb-3 border-top">
            <div class="col-4 text-start">
                <div class="d-flex">
                    <img src="./img/CaffeMisto.jpg" class="img-fluid rounded-5 cart-img" />
                    <div class="ms-3">
                        <div class="mb-3 cart-title"><%out.println(x.getName());%></div>
                        <div class="cart-remove">Remove</div>
                    </div>
                </div>
            </div>
            <div class="col cart-price mt-5"><%out.println(x.getPrice());%></div>
            <div class="col-2 cart-price mt-5">
                <input class="input-group-field" type="number" name="quantity" value=<%out.println("\""+quantity+"\"");%> />
            </div>
            <div class="col cart-price mt-5"><%out.println(itemPrice);%></div>
        </div>
        <%}%>
                
        <div class="row mb-4 pt-4 border-top">
            <div class="col-4"></div>
            <div class="col cart-legend">Sub-Total</div>
            <div class="col-2 cart-legend"><%out.println(total);%></div>
            <div class="col cart-legend"><a href="./checkout.jsp" type="button" class="btn btn-primary">Checkout</a></div>
        </div>
    </div>


        <%@include file="components/footer.html"%>
    </body>
</html>
<%}%>