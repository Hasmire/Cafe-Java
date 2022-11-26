<%-- 
    Document   : menu
    Created on : 11 26, 22, 4:45:52 AM
    Author     : Jay
--%>

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
        <%@include file="components/navbar.jsp"%>
        <h1 class="text-center">Menu Page</h1>
        
            <div class="container d-flex justify-content-center align-items-center flex-column">
                
                <!--item 1 - French Vanilla-->
                <div class="row mb-3 ">           
                    <div class="col">
                        <a href="viewItem?item_id=1">
                            <div class="card" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="./images/coffee-stock.png" class="img-fluid rounded-start">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h3 class="card-title">French Vanilla</h3>
                                            <h4 class="card-text">₱100</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        </label>  
                    </div>       
                
                
                    <!--item 2 - Caramel Macchiato-->
                    <div class="col">
                        <a href="viewItem?item_id=2">
                            <div class="card" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="./images/coffee-stock.png" class="img-fluid rounded-start">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h3 class="card-title">Caramel Macchiato</h3>
                                            <h4 class="card-text">₱100</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        </label>  
                    </div>  
                
                
                <!--item 3 - pumpkin spice-->        
                    <div class="col">
                        <a href="viewItem?item_id=3">
                            <div class="card" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="./images/coffee-stock.png" class="img-fluid rounded-start">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h3 class="card-title">Pumpkin Spice</h3>
                                            <h4 class="card-text">₱100</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        </label>  
                    </div>  
                <!--row end-->
                </div>
                
                <!--item 4 - Hazelnut-->  
                <div class="row mb-3 ">           
                    <div class="col">
                        <a href="viewItem?item_id=4">
                            <div class="card" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="./images/coffee-stock.png" class="img-fluid rounded-start">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h3 class="card-title">Hazelnut</h3>
                                            <h4 class="card-text">₱100</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        </label>  
                    </div>  
                
                <!--item 5 - Mocha-->           
                    <div class="col">
                        <a href="viewItem?item_id=5">
                            <div class="card" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="./images/coffee-stock.png" class="img-fluid rounded-start">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h3 class="card-title">Mocha</h3>
                                            <h4 class="card-text">₱100</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        </label>  
                    </div>         
                
                <!--item 6 - Matcha-->        
                    <div class="col">
                        <a href="viewItem?item_id=6">
                            <div class="card" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="./images/coffee-stock.png" class="img-fluid rounded-start">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h3 class="card-title">Matcha</h3>
                                            <h4 class="card-text">₱100</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        </label>  
                    </div>  
                <!--row end-->
                </div> 
                
                
            </div>
        
        <%@include file="components/footer.jsp"%>
        
        
    </body>
</html>
