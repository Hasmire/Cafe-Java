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
        <% //Retrieve item object from request
            Item item = (Item) request.getAttribute("Item");
        %> 
        <%@include file="components/navbar.jsp"%>
        <h1 class="text-center">Item Info</h1>
        <div class="container">
            <div class="card flex-md-row mb-4 shadow-sm h-md-250">
                <%//out.println("<img src=" + '"' + book.getCover() + '"' + " class=\"img-fluid rounded-start\">");%>
                <img src="./images/coffee-stock.png">
                <div class="card-body d-flex flex-column align-items-start">
                    <h2 class="text-dark mb-2 fw-bold"><%out.print(item.getName());%></h2>
                    <div class="card-text mb-auto"><%out.print(item.getDesc());%></div>
                    <div class="card-text mb-auto">
                        <%out.print("₱"+item.getPrice());%>
                    </div>
                    <div class="d-flex">
                        <form method = "GET" action="CheckoutServlet">
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
