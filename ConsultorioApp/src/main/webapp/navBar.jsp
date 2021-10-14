<%-- 
    Document   : navBar
    Created on : Oct 2, 2021, 2:40:14 PM
    Author     : jack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #3cb9aa;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><img src="assets/logo2.png".class="img-fluid" width="258px" height="48px" alt=""></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor03">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item" style="margin-top: 4px;">
                    <a class="nav-link" href="perfil.jsp" style="color: white;">Mi perfil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="listener.jsp" style="color: white;">Listar Medicos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact_us.jsp" style="color: white;">Contáctanos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active btn btn-danger" aria-current="page" href="index.jsp" style="color: white; background-color: #34495e; border: #34495e;">Salir</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="padding-top: 0px;"><img src="assets/pngegg.png".class="img-fluid" width="40px" height="40px" alt="" ></a>
                </li>
            </ul>
            <!--
               <form class="d-flex">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-primary" type="submit">Search</button>
            </form>
            -->

        </div>
    </div>
</nav>