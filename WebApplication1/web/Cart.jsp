<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
ArrayList<Item> itemList = (ArrayList<Item>) session.getAttribute("CartList");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cafe Java</title>
        <%@include file="components/head.jsp"%>
    </head>
    <body>
        <%@include file="components/navbar.jsp"%>
        <h1 class="text-center">Cart</h1>
            <div class="container">
            <div class="card flex-md-row mb-4 shadow-sm h-md-250 ">
                <div class="card-body d-flex flex-column align-items-start">
                    <% 
                    //for loop to display all cart items
                    int total=0;
                    Iterator<Item> it = itemList.iterator();
                    while(it.hasNext()){
                        Item x = it.next();
                        int itemPrice = x.getPrice() * x.getQuantity();
                        out.println("<h2 class=\"text-dark mb-2 fw-bold\">"+x.getName());
                        out.println(" x "+x.getQuantity());
                        out.println(" : "+itemPrice+"</h2>");             
                        total += itemPrice;
                    }
                    out.println("<h2 class=\"text-dark mb-2 fw-bold\">Total: "+total);
                    %>
                </div>
            </div>
        </div>
        <%@include file="components/footer.jsp"%>
    </body>
</html>
