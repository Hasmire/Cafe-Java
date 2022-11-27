$(document).ready(function () {
    $("#header").load("./components/header.html");
    $("#header-auth").load("./components/header-auth.html");
    $("#footer").load("./components/footer.html");
    $("#navbar").load("./components/navbar.html");
    $("#navbar-auth").load("./components/navbar-auth.html");

    $('[data-quantity="plus"]').click(function (e) {
        e.preventDefault();
        fieldName = $(this).attr("data-field");
        var currentVal = parseInt($("input[name=" + fieldName + "]").val());
        if (!isNaN(currentVal)) {
            $("input[name=" + fieldName + "]").val(currentVal + 1);
        } else {
            $("input[name=" + fieldName + "]").val(0);
        }
    });
    
    $('[data-quantity="minus"]').click(function (e) {
        e.preventDefault();
        fieldName = $(this).attr("data-field");
        var currentVal = parseInt($("input[name=" + fieldName + "]").val());
        if (!isNaN(currentVal) && currentVal > 1) {
            $("input[name=" + fieldName + "]").val(currentVal - 1);
        } else {
            $("input[name=" + fieldName + "]").val(1);
        }
    });
});
