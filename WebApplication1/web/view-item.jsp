<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/head.jsp"%>

<%@include file="components/navbar.jsp"%>

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
                    <div class="mb-1 desc-price"><%out.print("₱" + price);%></div>
                    <div class="card-text mb-auto desc-text">
                        <%out.print(desc);%>
                    </div>
                    <div class="container mt-4 p-0">

                        <form method = "GET" action="AddToCart">
                            <input type="hidden" name="item_id" value="<%out.print(id);%>">

                            <div class="d-flex justify-content-between align-items-end">
                                <div class="d-flex flex-column justify-content-center align-items-center">
                                    <div class="desc-quant mb-2">Quantity</div>
                                    <div class="input-group plus-minus-input flex-nowrap">
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

<%@include file="components/footer.jsp"%>