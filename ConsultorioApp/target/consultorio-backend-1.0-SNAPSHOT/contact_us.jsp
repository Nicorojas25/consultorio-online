<%-- 
    Document   : contact_us
    Created on : 2/10/2021, 1:46:51 p. m.
    Author     : asf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contactanos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/nav.css">
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link rel="shortcut icon" type="image/jpg" href="LogoConsul.jpg"/>
    </head>

    <body>
         <%@ include file = "navBar.jsp" %>
        <div style="background-image: url('assets/contact_us/fondo_contactus.jpeg');">
            <div class="container-fluid" ng-app="ConsultorioApp" ng-controller="medicosController as mc">
                <div class="row">
                    <center>
                        <br>
                        <h1><p style="color :#3cb9aa;"> Bio Healt - Consultorio Online Privado</h1>
                        <br>
                        <br>
                        <h1><p style="color :#3cb9aa;"> Contactanos </h1>
                        <br>
                    </center>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <center>
                                <img src="assets/contact_us/location.png" width="5%">
                                <span>Bogotá - Medellín - Bucaramanga - Cucuta </span>
                            </center>
                            <center>
                                <img src="assets/contact_us/mobile.png" width="5%">
                                <span> +57 313 491 9012 </span>
                            </center>
                            <center>
                                <img src="assets/contact_us/web_.png" width="10%">
                                <span> www.biohealt.com </span>
                            </center>
                            <center>
                                <img src="assets/contact_us/WhatsApp-logo.png" width="10%">
                                <a href=https://wa.me/573134919012> +57 313 491 9012</a>                            
                            </center>
                            <center>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                            </center>
                        </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
         <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
      crossorigin="anonymous"
    ></script
    </body>
</html>
