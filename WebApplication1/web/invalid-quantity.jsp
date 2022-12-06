<%-- 
    Document   : invalid-login
    Created on : Dec 1, 2022, 3:48:57 AM
    Author     : Lance
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Error Page</title>
        <link rel="stylesheet" href="style.css">
        <style>
            body{
                margin: 0;
                padding: 0;
                font-family: "montserrat",sans-serif;
                min-height: 100vh;
                background-color: #242121;
            }

            .container{
                width: 100%;
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                text-align: center;
                color: #a1a1a1;
            }

            .container h1{
                font-size: 140px;
                margin: 0;
                font-weight: 900;
                letter-spacing: 20px;
                background: url(img/bg.jpg) center no-repeat;
                -webkit-text-fill-color: #56b280;
            }

            .container a{
                text-decoration: none;
                background: #56b280;
                color: #fff;
                padding: 12px 24px;
                display: inline-block;
                border-radius: 25px;
                font-size: 14px;
                text-transform: uppercase;
                transition: 0.4s;
            }

            .container a:hover{
                background: #a1a1a1;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Oops! Your item quantity is 0.</h2>
            <h1>DRINK COFFEE</h1>
            <p>Please make sure to enter a valid quantity number.</p>
            <a href="menu.jsp">Go Back</a>
        </div>
    </body>
</html>
