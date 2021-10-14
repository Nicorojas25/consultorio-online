<%-- 
    Document   : index
    Created on : 2/10/2021, 11:39:16 a. m.
    Author     : MILLER & NATHALIA

--%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Loggin</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <link rel="shortcut icon" type="image/jpg" href="LogoConsul.jpg"/>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            html,body * {
                box-sizing: border-box;
                font-family: 'Open Sans', sans-serif
            }

            body {
                background: linear-gradient(rgba(246, 247, 249, 0.8), rgba(246, 247, 249, 0.8)), url(assets/salud1.jpg) no-repeat center center fixed;
                background-size: cover
            }

            .container {
                width: 100%;
                padding-top: 60px;
                padding-bottom: 100px
            }

            .frame {
                height: 600px;
                width: 430px;
                background: linear-gradient(rgba(35, 43, 85, 0.75), rgba(35, 43, 85, 0.95)), url(https://res.cloudinary.com/dxfq3iotg/image/upload/v1564049481/bg-clouds.jpg) no-repeat center center;
                background-size: cover;
                margin-left: auto;
                margin-right: auto;
                border-top: solid 1px rgba(255, 255, 255, .5);
                border-radius: 5px;
                box-shadow: 0px 2px 7px rgba(0, 0, 0, 0.2);
                overflow: hidden;
                transition: all .5s ease
            }

            .frame-long {
                height: 850px
            }

            .frame-short {
                height: 400px;
                margin-top: 50px;
                box-shadow: 0px 2px 7px rgba(0, 0, 0, 0.1)
            }

            .nav {
                width: 100%;
                height: 100px;
                padding-top: -10px;
                opacity: 1;
                transition: all .5s ease
            }

            .nav-up {
                transform: translateY(-100px);
                opacity: 0
            }

            li{
                padding-left: 10px;
                font-size: 18px;
                display: inline;
                text-align: left;
                text-transform: uppercase;
                padding-right: 10px;
                color: #ffffff
            }

            .acceder-active a {
                padding-bottom: 10px;
                color: #ffffff;
                text-decoration: none;
                border-bottom: solid 4px #09beaf;
                transition: all .25s ease;
                cursor: pointer
            }

            .acceder-inactive a {
                padding-bottom: 0;
                color: #ffffff;
                text-decoration: none;
                border-bottom: none;
                cursor: pointer
            }

            .registrarse-active a {
                cursor: pointer;
                color: #ffffff;
                text-decoration: none;
                border-bottom: solid 4px #09beaf;
                padding-bottom: 10px
            }

            .registrarse-inactive a {
                cursor: pointer;
                color: #ffffff;
                text-decoration: none;
                transition: all .25s ease
            }

            .form-acceder {
                width: 430px;
                height: 375px;
                font-size: 16px;
                font-weight: 300;
                padding-left: 37px;
                padding-right: 37px;
                padding-top: 120px;
                transition: opacity .5s ease, transform .5s ease
            }

            .form-acceder-left {
                transform: translateX(-399px);
                opacity: .0
            }

            .form-registrarse {
                width: 430px;
                height: 400px;
                font-size: 16px;
                font-weight: 300;
                padding-left: 37px;
                padding-right: 37px;
                padding-top: 40px;
                position: relative;
                top: -312px;
                left: 400px;
                opacity: 0;
                transition: all .5s ease
            }

            .form-registrarse-left {
                transform: translateX(-399px);
                opacity: 1
            }

            .form-registrarse-down {
                top: 0px;
                opacity: 0
            }

            .success {
                width: 80%;
                height: 150px;
                text-align: center;
                position: relative;
                top: -890px;
                left: 450px;
                opacity: .0;
                transition: all .8s .4s ease
            }

            .success-left {
                transform: translateX(-406px);
                opacity: 1
            }

            .successtext {
                color: #ffffff;
                font-size: 8px;
                font-weight: 300;
                margin-top: -35px;
                padding-left: 37px;
                padding-right: 37px
            }

            #check path {
                stroke: #ffffff;
                stroke-linecap: round;
                stroke-linejoin: round;
                stroke-width: .85px;
                stroke-dasharray: 60px 300px;
                stroke-dashoffset: -166px;
                fill: rgba(255, 255, 255, .0);
                transition: stroke-dashoffset 2s ease .5s, fill 1.5s ease 1.0s
            }

            #check.checked path {
                stroke-dashoffset: 33px;
                fill: rgba(255, 255, 255, .03)
            }

            .form-acceder input,
            .form-registrarse input {
                color: #ffffff;
                font-size: 13px
            }

            .form-styling {
                width: 100%;
                height: 30px;
                padding-left: 15px;
                border: none;
                border-radius: 20px;
                margin-bottom: 10px;
                background: rgba(255, 255, 255, .2)
            }

            label {
                font-weight: 400;
                text-transform: uppercase;
                font-size: 12px;
                padding-left: 13px;
                padding-bottom: 0px;
                color: rgba(255, 255, 255, .7);
                display: block
            }

            :focus {
                outline: none
            }

            .form-acceder input:focus,
            textarea:focus,
            .form-registrarse input:focus,
            textarea:focus {
                background: rgba(255, 255, 255, .3);
                border: none;
                padding-right: 40px;
                transition: background .5s ease
            }

            [type="checkbox"]:not(:checked),
            [type="checkbox"]:checked {
                position: absolute;
                display: none
            }

            [type="checkbox"]:not(:checked)+label,
            [type="checkbox"]:checked+label {
                position: relative;
                padding-left: 85px;
                padding-top: 2px;
                cursor: pointer;
                margin-top: 8px
            }

            [type="checkbox"]:not(:checked)+label:before,
            [type="checkbox"]:checked+label:before,
            [type="checkbox"]:not(:checked)+label:after,
            [type="checkbox"]:checked+label:after {
                content: '';
                position: absolute
            }

            [type="checkbox"]:not(:checked)+label:before,
            [type="checkbox"]:checked+label:before {
                width: 65px;
                height: 30px;
                background: rgba(255, 255, 255, .2);
                border-radius: 15px;
                left: 0;
                top: -3px;
                transition: all .2s ease
            }

            [type="checkbox"]:not(:checked)+label:after,
            [type="checkbox"]:checked+label:after {
                width: 10px;
                height: 10px;
                background: rgba(255, 255, 255, .7);
                border-radius: 50%;
                top: 7px;
                left: 10px;
                transition: all .2s ease
            }

            [type="checkbox"]:checked+label:before {
                background: #09beaf
            }

            [type="checkbox"]:checked+label:after {
                background: #ffffff;
                top: 7px;
                left: 45px
            }

            [type="checkbox"]:checked+label .ui,
            [type="checkbox"]:not(:checked)+label .ui:before,
            [type="checkbox"]:checked+label .ui:after {
                position: absolute;
                left: 6px;
                width: 65px;
                border-radius: 15px;
                font-size: 14px;
                font-weight: bold;
                line-height: 22px;
                transition: all .2s ease
            }

            [type="checkbox"]:not(:checked)+label .ui:before {
                content: "No";
                left: 32px;
                color: rgba(255, 255, 255, .7)
            }

            [type="checkbox"]:checked+label .ui:after {
                content: "Si";
                color: #ffffff
            }

            [type="checkbox"]:focus+label:before {
                box-sizing: border-box;
                margin-top: -1px
            }

            .btn-registrarse {
                float: left;
                font-weight: 700;
                text-transform: uppercase;
                font-size: 12px;
                text-align: center;
                color: #ffffff;
                width: 100%;
                height: 32px;
                border: none;
                border-radius: 20px;
                margin-top: 23px;
                background-color: #09beaf;
            }

            .btn-acceder {
                float: left;
                width: 100%;
                height: 32px;
                border: none;
                border-radius: 20px;
                margin-top: -8px;
                font-weight: 700;
                background-color: #09beaf;
                color: #ffffff;

            }

            .btn-animate {
                float: left;
                font-weight: 700;
                text-transform: uppercase;
                font-size: 13px;
                text-align: center;
                color: rgba(255, 255, 255, 1);
                padding-top: 8px;
                width: 100%;
                height: 30px;
                border: none;
                border-radius: 20px;
                margin-top: 23px;
                background-color: #09beaf;
                left: 0px;
                top: 0px;
                transition: all .5s ease, top .5s ease .5s, height .5s ease .5s, background-color .5s ease .75s
            }

            .btn-animate-grow {
                width: 130%;
                height: 625px;
                position: relative;
                left: -55px;
                top: -420px;
                color: #ffffff;
                background-color: rgba(255, 255, 255, 1)
            }

            a.btn-registrarse:hover,
            a.btn-acceder:hover {
                cursor: pointer;
                background-color: #09beaf;
                transition: background-color .5s
            }

            .forgot {
                height: 100px;
                width: 80%;
                margin-left: auto;
                margin-right: auto;
                text-align: center;
                padding-top: 24px;
                margin-top: -535px;
                border-top: solid 1px rgba(255, 255, 255, .3);
                transition: all 0.5s ease
            }

            .forgot-left {
                transform: translateX(-400px);
                opacity: 0
            }

            .forgot-fade {
                opacity: 0
            }

            .forgot a {
                color: rgba(255, 255, 255, .3);
                font-weight: 400;
                font-size: 13px;
                text-decoration: none
            }

            .welcome {
                width: 100%;
                height: 110px;
                position: relative;
                color: rgba(35, 43, 85, 0.75);
                opacity: 0;
                transition: transform 1.5s ease .25s, opacity .1s ease 1s
            }

            .welcome-left {
                transform: translateY(-780px);
                opacity: 1
            }

            .cover-photo {
                height: 110px;
                position: relative;
                left: 0px;
                top: -900px;
                background: linear-gradient(rgba(35, 43, 85, 0.75), rgba(35, 43, 85, 0.95)), url(assets/LogoR.png);
                background-size: cover;
                opacity: 0;
                transition: all 1.5s ease 0.55s
            }

            .cover-photo-down {
                top: -650px;
                opacity: 1
            }

            .profile-photo {
                height: 200px;
                width: 125px;
                position: relative;
                border-radius: 70px;
                left: 155px;
                top: -1000px;
                background: url(https://img.icons8.com/bubbles/100/000000/user.png);
                background-size: 100% 135%;
                background-position: 100% 100%;
                opacity: 0;
                transition: top 1.5s ease 0.35s, opacity .75s ease .5s;
                border: solid 3px #ffffff
            }

            .profile-photo-down {
                top: -636px;
                opacity: 1
            }

            h1 {
                color: #ffffff;
                font-size: 30px;
                font-weight: 300;
                text-align: center
            }

            .btn-goback {
                position: relative;
                margin-right: auto;
                top: -400px;
                float: left;
                padding: 8px;
                width: 83%;
                margin-left: 37px;
                margin-right: 37px;
                height: 30px;
                border-radius: 20px;
                font-weight: 700;
                text-transform: uppercase;
                font-size: 13px;
                text-align: center;
                color: #09beaf;
                margin-top: -8px;
                border: solid 1px #09beaf;
                opacity: 0;
                transition: top 1.5s ease 0.35s, opacity .75s ease .5s
            }

            .btn-goback-up {
                top: -1200px;
                opacity: 1
            }

            a.btn-goback:hover {
                cursor: pointer;
                background-color: #09beaf;
                transition: all .5s;
                color: #ffffff
            }

            #refresh {
                position: fixed;
                bottom: 20px;
                right: 20px;
                background-color: #ffffff;
                width: 50px;
                height: 50px;
                border-radius: 25px;
                box-shadow: 0px 2px 7px rgba(0, 0, 0, 0.1);
                padding: 13px 0 0 13px
            }

            .refreshicon {
                fill: #d3d3d3;
                transform: rotate(0deg);
                transition: fill .25s ease, transform .25s ease
            }

            .refreshicon:hover {
                cursor: pointer;
                fill: #09beaf;
                transform: rotate(180deg)
            }</style>
    </head>
    <body oncontextmenu="return false" class="snippet-body">
        <div class="container-fluid"> </div>
        <div class="container">
            <div class="frame frame-long">
                <div class="nav">
                    <div class="col">
                        <div class="text-center">
                            <img src="assets/LogoConsul.png" width="145" alt="">
                        </div>
                    </div>    
                    <ul class="links">
                        <li class="acceder-active acceder-inactive"><a class="btn">Acceder </a></li>
                        <li class="registrarse-inactive registrarse-active"><a class="btn active">Registrarse </a></li>
                    </ul>
                </div>
                <br>
                <div ng-app="ConsultorioApp" ng-controller="medicosController as mc" ng-init="checked = false">
                    <div class="form-acceder form-acceder-left"> 
                        <label for="usuario">Usuario</label> 
                        <input class="form-styling" type="text" ng-model="mc.usuarioLogin">
                        <label for="contraseña">Contraseña</label> 
                        <input class="form-styling" type="password" ng-model="mc.contrasenaLogin"> 
                        <div class="btn-animate"> <button type="button" class="btn-acceder" ng-click="mc.accederMedico()">Acceder</button> </div>
                    </div>

                    <div class="form-registrarse form-registrarse-left"> 
                        <label for="primerNombre">Primer nombre</label> 
                        <input class="form-styling" type="text" ng-model="mc.primerNombre">
                        <label for="segundoNombre">Segundo nombre</label> 
                        <input class="form-styling" type="text" ng-model="mc.segundoNombre"> 
                        <label for="primerApellido">Primer apellido</label> 
                        <input class="form-styling" type="text" ng-model="mc.primerApellido"> 
                        <label for="segundoApellido">Segundo apellido</label> 
                        <input class="form-styling" type="text" ng-model="mc.segundoApellido"> 
                        <label for="usuario">Usuario</label> 
                        <input class="form-styling" type="text" ng-model="mc.usuario"> 
                        <label for="contraseña">Contraseña</label> 
                        <input class="form-styling" type="password" ng-model="mc.contrasena"> 
                        <label for="firma">Firma</label> 
                        <input class="form-styling" type="text" ng-model="mc.firma"> 
                        <label for="fotoUsuario">Foto Usuario</label> 
                        <input class="form-styling" type="text" ng-model="mc.fotoUsuario"> 

                        <button type="button" class="btn-registrarse" ng-click="mc.guardarMedico()">REGISTRARSE</button>

                    </div>
                    <div class="success"> 
                        <svg width="270" height="270" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 60 60" id="check" ng-class="checked ? 'checked' : ''">
                        <path fill="#ffffff" d="M40.61,23.03L26.67,36.97L13.495,23.788c-1.146-1.147-1.359-2.936-0.504-4.314 c3.894-6.28,11.169-10.243,19.283-9.348c9.258,1.021,16.694,8.542,17.622,17.81c1.232,12.295-8.683,22.607-20.849,22.042 c-9.9-0.46-18.128-8.344-18.972-18.218c-0.292-3.416,0.276-6.673,1.51-9.578"></path>
                        </svg>
                        <div class="successtext">
                            <p> Se ha registrado con éxito.</p>
                        </div>
                    </div>
                </div>
                <div class="forgot forgot-left"> <a href="#">Olvidaste tu contraseña?</a> </div>
                <div>
                    <div class="cover-photo"></div>
                    <div class="profile-photo"></div>
                    <h1 class="welcome"> Bienvenido! </h1> <a class="btn-goback" value="Refresh" onclick="history.go()" hidden>Go back</a>
                </div>
            </div> <a id="refresh" value="Refresh" onclick="history.go()"> <svg class="refreshicon" version="1.1" id="Capa_1" x="0px" y="0px" width="25px" height="25px" viewBox="0 0 322.447 322.447" style="enable-background:new 0 0 322.447 322.447;" xml:space="preserve">
                <path d="M321.832,230.327c-2.133-6.565-9.184-10.154-15.75-8.025l-16.254,5.281C299.785,206.991,305,184.347,305,161.224 c0-84.089-68.41-152.5-152.5-152.5C68.411,8.724,0,77.135,0,161.224s68.411,152.5,152.5,152.5c6.903,0,12.5-5.597,12.5-12.5 c0-6.902-5.597-12.5-12.5-12.5c-70.304,0-127.5-57.195-127.5-127.5c0-70.304,57.196-127.5,127.5-127.5 c70.305,0,127.5,57.196,127.5,127.5c0,19.372-4.371,38.337-12.723,55.568l-5.553-17.096c-2.133-6.564-9.186-10.156-15.75-8.025 c-6.566,2.134-10.16,9.186-8.027,15.751l14.74,45.368c1.715,5.283,6.615,8.642,11.885,8.642c1.279,0,2.582-0.198,3.865-0.614 l45.369-14.738C320.371,243.946,323.965,236.895,321.832,230.327z"></path> </svg> </a>
        </div>
        <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script>
                $(function () {
                    $(".btn").click(function () {
                        cambiarALogin();
                    });
                });

                $(document).ready(function () {
                    cambiarALogin();
                });

                function cambiarALogin() {
                    $(".form-acceder").toggleClass("form-acceder-left");
                    $(".form-registrarse").toggleClass("form-registrarse-left");
                    $(".frame").toggleClass("frame-long");
                    $(".registrarse-inactive").toggleClass("registrarse-active");
                    $(".acceder-active").toggleClass("acceder-inactive");
                    $(".forgot").toggleClass("forgot-left");
                    $(this).removeClass("idle").addClass("active");
                }

                /*$(function () {
                 $(".btn-registrarse").click(function () {
                 $(".nav").toggleClass("nav-up");
                 $(".form-registrarse-left").toggleClass("form-registrarse-down");
                 $(".success").toggleClass("success-left");
                 $(".frame").toggleClass("frame-short");
                 });
                 });*/

                /*$(function () {
                 $(".btn-acceder").click(function () {
                 $(".btn-animate").toggleClass("btn-animate-grow");
                 $(".welcome").toggleClass("welcome-left");
                 $(".cover-photo").toggleClass("cover-photo-down");
                 $(".frame").toggleClass("frame-short");
                 $(".profile-photo").toggleClass("profile-photo-down");
                 $(".btn-goback").toggleClass("btn-goback-up");
                 $(".forgot").toggleClass("forgot-fade");
                 });
                 });*/

                var app = angular.module('ConsultorioApp', []);
                app.controller('medicosController', ['$http', controladorMedico]);
                function controladorMedico($http) {
                    var mc = this;

                    mc.guardarMedico = function () {
                        if (mc.fotoUsuario === undefined) {
                            mc.fotoUsuario = "No tengo foto";
                        }
                        var params = {
                            proceso: "guardarMedico",
                            primerNombre: mc.primerNombre,
                            segundoNombre: mc.segundoNombre,
                            primerApellido: mc.primerApellido,
                            segundoApellido: mc.segundoApellido,
                            usuario: mc.usuario,
                            contrasena: mc.contrasena,
                            firma: mc.firma,
                            fotoUsuario: mc.fotoUsuario
                        };
                        //console.log(params);
                        if (mc.primerNombre === undefined || mc.primerApellido === undefined ||
                                mc.segundoApellido === undefined || mc.usuario === undefined ||
                                mc.contrasena === undefined || mc.primerNombre === ''
                                || mc.primerApellido === '' ||
                                mc.segundoApellido === '' || mc.usuario === '' ||
                                mc.contrasena === '' || mc.firma === '') {

                            Swal.fire('Ups!', 'Diligencia bien los campos!', 'error');
                            mc.fotoUsuario = "";
                        } else {
                            //console.log(params);
                            $http({
                                method: 'POST',
                                url: 'peticiones.jsp',
                                params: params
                            }).then(function (res) {
                                //console.log(res);
                                if (res.data.ok === true) {
                                    if (res.data[params.proceso] === true) {
                                        mc.primerNombre = '';
                                        mc.segundoNombre = '';
                                        mc.primerApellido = '';
                                        mc.segundoApellido = '';
                                        mc.usuario = '';
                                        mc.contrasena = '';
                                        mc.firma = '';
                                        mc.fotoUsuario = '';
                                        Swal.fire('Excelente!', 'Tu perfil ha sido creado!', 'success');
                                    } else {
                                        Swal.fire('Ups!', 'No se ha podido crear tu perfil. ' + res.data.registro + '!', 'error');
                                    }

                                } else {
                                    Swal.fire('Ups!', res.data.errorMsg, 'error');
                                }
                            });
                        }
                    };

                    mc.accederMedico = function () {
                        var params = {
                            usuario: mc.usuarioLogin,
                            contrasena: mc.contrasenaLogin,
                            proceso: "acceder"
                        };
                        console.log(params);
                        $http({
                            method: 'POST',
                            url: 'peticiones.jsp',
                            params: params
                        }).then(function (res) {
                            //console.log(res.data.Medicos[0]);
                            console.log(res);
                            if (res.data.ok === true) {
                                if (res.data[params.proceso] === true) {
                                    var infoMedico = res;//.data.Medicos[0].idMedico;
                                    Swal.fire('Excelente!', 'Te has logeado', 'success');
                                    $http({
                                        method: 'POST',
                                        url: 'perfil.jsp',
                                        infoMedico: res
                                    }).then(function () {
                                        console.log(infoMedico);
                                        setTimeout(function () {
                                            location.href = 'perfil.jsp';
                                        }, 3000);
                                    });
                                } else {
                                    Swal.fire('Ups!', 'Datos de ingreso incorrectos!', 'error');
                                }
                            } else {
                                Swal.fire('Ups!', res.data.errorMsg, 'error');
                            }
                        });
                    };
                }
                ;

        </script>

    </body></html>