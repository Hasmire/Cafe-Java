<%-- 
    Document   : menu
    Created on : 11 26, 22, 4:45:52 AM
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
    <div class="mt-5 mb-5">
      <div class="menu-title">Menu</div>
      <div class="menu-subt">Breathe and have a seat. You deserve it.</div>
    </div>
  
<!--display all menu items-->
    <div class="container d-flex flex-column justify-content-between flex-grow-1">
      <div class="row">
        <div class="col d-flex justify-content-center align-items-center mb-3">
          <div class="card item-card" style="width: 18rem;">
            <img src="./img/CaffeMisto.jpg" class="card-img-top item-img">
            <div class="card-body">
              <div class="card-title item-title">French Vanilla</div>
              <p class="card-text item-price">₱ 150</p>
              <a href="viewItem?item_id=1" class="stretched-link"></a>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center align-items-center mb-3">
          <div class="card item-card" style="width: 18rem;">
            <img src="./img/CaffeMisto.jpg" class="card-img-top item-img">
            <div class="card-body">
              <div class="card-title item-title">Caramel Macchiato</div>
              <p class="card-text item-price">₱ 150</p>
              <a href="viewItem?item_id=2" class="stretched-link"></a>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center align-items-center mb-3">
          <div class="card item-card" style="width: 18rem;">
            <img src="./img/CaffeMisto.jpg" class="card-img-top item-img">
            <div class="card-body">
              <div class="card-title item-title">Pumpkin Spice</div>
              <p class="card-text item-price">₱ 150</p>
              <a href="viewItem?item_id=3" class="stretched-link"></a>
            </div>
          </div>
        </div>
      </div>
        
    <div class="row">
        <div class="col d-flex justify-content-center align-items-center mb-3">
          <div class="card item-card" style="width: 18rem;">
            <img src="./img/CaffeMisto.jpg" class="card-img-top item-img">
            <div class="card-body">
              <div class="card-title item-title">Hazelnut</div>
              <p class="card-text item-price">₱ 150</p>
              <a href="viewItem?item_id=4" class="stretched-link"></a>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center align-items-center mb-3">
          <div class="card item-card" style="width: 18rem;">
            <img src="./img/CaffeMisto.jpg" class="card-img-top item-img">
            <div class="card-body">
              <div class="card-title item-title">Mocha</div>
              <p class="card-text item-price">₱ 150</p>
              <a href="viewItem?item_id=5" class="stretched-link"></a>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center align-items-center mb-3">
          <div class="card item-card" style="width: 18rem;">
            <img src="./img/CaffeMisto.jpg" class="card-img-top item-img">
            <div class="card-body">
              <div class="card-title item-title">Matcha</div>
              <p class="card-text item-price">₱ 150</p>
              <a href="viewItem?item_id=6" class="stretched-link"></a>
            </div>
          </div>
        </div>
      </div>
  </div>
                  
        <%@include file="components/footer.html"%>
        
        
    </body>
</html>
