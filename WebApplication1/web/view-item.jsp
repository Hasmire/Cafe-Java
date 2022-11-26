<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- JQuery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <!--Javascript-->
    <script type="text/javascript" src="logic.js"></script>

    <%@include file="components/header-auth.html"%>
    
        <% //Retrieve item id from request
            Item item = (Item) request.getAttribute("Item");
            int id = item.getId();
            String name = item.getName();
            String desc = item.getDesc();
            int price = item.getPrice();
        %> 
        
        <div class="container">
    <div class="card mb-3 desc-card p-4 rounded-5">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="./img/CaffeMisto.jpg" class="img-fluid rounded-5" />
            </div>
            <div class="col-md-8">
                <div class="card-body d-flex flex-column align-items-start">
                    <div class="desc-title"><%out.print(name);%></div>
                    <div class="mb-1 desc-price"><%out.print("₱"+price);%></div>
                    <div class="card-text mb-auto desc-text">
                        <%out.print(desc);%>
                    </div>
                    <div class="container mt-4">
                        
                        <form method = "GET" action="AddToCart">
                        <input type="hidden" name="item_id" value="<%out.print(id);%>">
                        
                        <div class="d-flex justify-content-between align-items-end">
                            <div class="d-flex flex-column justify-content-center align-items-center">
                                <div class="desc-quant mb-2">Quantity</div>
                                <div class="input-group plus-minus-input">
                                    <div class="input-group-button">
                                        <button type="button" class="btn quant-btn" data-quantity="plus"
                                            data-field="quantity">
                                            <i class="fa fa-plus quant-icon" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                    <input class="input-group-field" type="number" name="quantity" value="1" />
                                    <div class="input-group-button">
                                        <button type="button" class="btn quant-btn" data-quantity="minus"
                                            data-field="quantity">
                                            <i class="fa fa-minus quant-icon" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary desc-btn">Add to Cart</button>
                        </div>
                             
                         </form>
                             
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        
<!--        <h1 class="text-center">Item Info</h1>
        <div class="container">
            <div class="card flex-md-row mb-4 shadow-sm h-md-250">
                TODO: Implement Dynamic Images
                <img src="img/coffee-stock.png">
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
        </div>-->
        <%@include file="components/footer.jsp"%>
    </body>
</html>
