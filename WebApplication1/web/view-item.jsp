<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <% //Retrieve item id from request
            Item item = (Item) request.getAttribute("Item");
            int id = item.getId();
            String name = item.getName();
            String desc = item.getDesc();
            int price = item.getPrice();
        %> 
        <%@include file="components/navbar.jsp"%>
        <h1 class="text-center">Item Info</h1>
        <div class="container">
            <div class="card flex-md-row mb-4 shadow-sm h-md-250">
                <!--TODO: Implement Dynamic Images-->
                <img src="./images/coffee-stock.png">
                <div class="card-body d-flex flex-column align-items-start">
                    <h2 class="text-dark mb-2 fw-bold"><%out.print(name);%></h2>
                    <div class="card-text mb-auto"><%out.print(desc);%></div>
                    <div class="card-text mb-auto">
                        <%out.print("₱"+price);%>
                    </div>
                    <div class="d-flex">
                        <form method = "GET" action="AddToCart">
                            <input type="hidden" name="item_id" value="<%out.print(id);%>">
                            <input type="number" id="quantity" name="quantity" min="1" max="5">
                            <button type="submit" class="exclude btn btn btn-outline-success" name="item_id" value="1">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="components/footer.jsp"%>
    </body>
</html>
