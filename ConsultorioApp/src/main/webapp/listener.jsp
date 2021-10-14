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
        <title>Medical staff</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/nav.css">
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link rel="shortcut icon" type="image/jpg" href="LogoConsul.jpg"/>
    </head>

    <body>
        <%@ include file = "navBar.jsp" %>
        <div style="background-image: url('assets/listener/listener.jpeg');">
            <div class="container-fluid" ng-app="ConsultorioApp" ng-controller="medicosController as mc">
                <div class="row">
                    <center>
                        <br>
                        <h1><p style="color :#3cb9aa;"> Bio Healt - Consultorio Online Privado</h1>
                        <br>
                        <br>
                        <h2><p style="color :#3cb9aa;"> Personal médico </h2>
                        <br>
                    </center>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <center>
                                <button class="btn btn-primary" ng-click="mc.listaMedicos()"> Listar Medicos </button>                            
                            </center>
                        </div>
                        <br>
                        <br>
                        <br>
                    </div>
                    <div class="row">
                        <div class="col-12 table-responsive-xl">
                            <center>
                                <table class="table table-striped table-light">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID Médico</th>
                                            <th>Primer Nombre</th>
                                            <th>Segundo Nombre</th>
                                            <th>Primer Apellido</th>
                                            <th>Segundo Apellido</th>
                                            <th>Usuario</th>
                                            <th>Firma</th>
                                        </tr>                                
                                    </thead>                            
                                    <tr ng-repeat="medico in mc.listaMedicos">
                                        <td>{{ (medico.idMedico != "null") ? medico.idMedico : ''}}</td>
                                        <td>{{ (medico.primerNombre != "null") ? medico.primerNombre : ''}}</td>
                                        <td>{{ (medico.segundoNombre != "null") ? medico.segundoNombre : ''}}</td>
                                        <td>{{ (medico.primerApellido != "null") ? medico.primerApellido : ''}}</td>
                                        <td>{{ (medico.segundoApellido != "null") ? medico.segundoApellido : ''}}</td>
                                        <td>{{ (medico.usuario != "null") ? medico.usuario : ''}}</td>
                                        <td>{{ (medico.firma != "null") ? medico.firma : ''}}</td>
                                    </tr>
                                </table>
                            </center>
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
                        </div>                    
                    </div>
                </div>
            </div>
        </div>
        <script>
            var app = angular.module('ConsultorioApp', []);
            app.controller('medicosController', ['$http', controladorMedico]);
            function controladorMedico($http) {
                var mc = this;
                mc.listaMedicos = function () {
                    var params = {
                        proceso: "listarMedicos"
                    };
                    $http({
                        method: 'POST',
                        url: 'peticiones.jsp',
                        params: params
                    }).then(function (res) {
                        console.log(res.data.Medicos);
                        mc.listaMedicos = res.data.Medicos;
                        Swal.fire('Excelente!', 'Los datos fueron cargados!', 'success');

                    });
                };
            }
            ;
        </script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
            crossorigin="anonymous"
            ></script
                    
                        </html>
