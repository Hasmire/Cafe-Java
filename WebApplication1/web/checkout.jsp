<%-- 
    Document   : checkout
    Created on : 11 27, 22, 4:01:33 AM
    Author     : Jay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- JQuery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <!--Javascript-->
    <script type="text/javascript" src="logic.js" defer></script>

    <%@include file="components/header-auth.html"%>

    <div class="container">
        <div class="checkout-title text-center mb-3">Checkout</div>

        <div class="row g-5">
            <div class="pt-5 col-md-4 col-lg-3 order-md-last">
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <div>
                            <h6 class="mb-0">Product name</h6>
                        </div>
                        <span class="text-muted">$12</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between bg-light">
                        <div class="text-success">
                            <h6 class="mb-0">Promo code</h6>
                            <small>EXAMPLECODE</small>
                        </div>
                        <span class="text-success">-$5</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Total (USD)</span>
                        <strong>$20</strong>
                    </li>
                </ul>

                <form class="card p-2">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Promo code">
                        <button type="submit" class="btn btn-secondary">Redeem</button>
                    </div>
                </form>
                <a href="./checkout.html" type="button" class="btn btn-primary w-100 mt-3">Place Order</a>
            </div>
            <div class="col-md-7 col-lg-8">
                <h4 class="mb-3">Customer Information</h4>
                <form class="needs-validation" novalidate>
                    <div class="row g-3 mb-4 pb-4 border-bottom">
                        <div class="col-sm-6">
                            <label for="firstName" class="form-label">First name</label>
                            <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                        </div>

                        <div class="col-sm-6">
                            <label for="lastName" class="form-label">Last name</label>
                            <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                        </div>

                        <div class="col-12 mb-4">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
                        </div>
                    </div>


                    <h4 class="mb-3">Payment</h4>

                    <div class="row gy-3 mb-4 pb-4 border-bottom">
                        <div class="col-md-6">
                            <label for="cc-name" class="form-label">Name on card</label>
                            <input type="text" class="form-control" id="cc-name" placeholder="" required>
                            <small class="text-muted">Full name as displayed on card</small>
                        </div>

                        <div class="col-md-6">
                            <label for="cc-number" class="form-label">Credit card number</label>
                            <input type="text" class="form-control" id="cc-number" placeholder="" required>
                        </div>

                        <div class="col-md-3">
                            <label for="cc-expiration" class="form-label">Expiration</label>
                            <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                        </div>

                        <div class="col-md-3">
                            <label for="cc-cvv" class="form-label">CVV</label>
                            <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

<%@include file="components/footer.html"%>
