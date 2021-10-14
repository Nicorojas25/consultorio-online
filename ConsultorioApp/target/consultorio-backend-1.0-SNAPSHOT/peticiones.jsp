<%-- 
    Document   : peticiones
    Created on : 1/10/2021, 10:18:39 p. m.
    Author     : Nicolás Rojas
--%>

<%@page import="java.util.Arrays" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="logica.Medico" %>
<%@page import="com.google.gson.Gson" %>
<%@page contentType="application/json;charset=iso-8859-1" language="java" pageEncoding="iso-8859-1" session="true" %>

<%
    
    String respuesta = "{";

    List<String> tareas = Arrays.asList(new String[]{
        "listarMedicos",
        "eliminarMedico",
        "guardarMedico",
        "actualizarMedico",
        "acceder"
    });

    String proceso = request.getParameter("proceso");

    if (tareas.contains(proceso)) {
        respuesta += "\"ok\":true,";

        if (proceso.equals("guardarMedico")) {
            String primerNombre = request.getParameter("primerNombre");
            String segundoNombre = request.getParameter("segundoNombre");
            String primerApellido = request.getParameter("primerApellido");
            String segundoApellido = request.getParameter("segundoApellido");
            String usuario = request.getParameter("usuario");
            String contrasena = request.getParameter("contrasena");
            String firma = request.getParameter("firma");
            String fotoUsuario = request.getParameter("fotoUsuario");

            Medico m = new Medico();

            m.setPrimerNombre(primerNombre);
            m.setSegundoNombre(segundoNombre);
            m.setPrimerApellido(primerApellido);
            m.setSegundoApellido(segundoApellido);
            m.setUsuario(usuario);
            m.setContraseña(contrasena);
            m.setFirma(firma);
            m.setFotoUsuario(fotoUsuario);

            if (m.guardarMedico()) {
                respuesta += "\"guardarMedico\":true";
            } else {
                respuesta += "\"guardarMedico\":false";
            }
        } else if (proceso.equals("eliminarMedico")) {
            String idMedico = request.getParameter("idMedico");
            Medico m = new Medico();

            if (m.obtenerMedico(idMedico) == false) {
                respuesta += "\"eliminarMedico\":false,";
                respuesta += "\"registro\": \"Cóloca un ID válido\" ";
            } else {
                if (m.borrarMedico(idMedico)) {
                    respuesta += "\"eliminarMedico\":true";
                } else {
                    respuesta += "\"eliminarMedico\":false";
                }
            }

        } else if (proceso.equals("listarMedicos")) {
            Medico m = new Medico();
            ArrayList<Medico> lista = m.listaMedicos();
            respuesta += "\"listarMedicos\":true, \"Medicos\":" + new Gson().toJson(lista);

        } else if (proceso.equals("actualizarMedico")) {
            String primerNombre = request.getParameter("primerNombre");
            String segundoNombre = request.getParameter("segundoNombre");
            String primerApellido = request.getParameter("primerApellido");
            String segundoApellido = request.getParameter("segundoApellido");
            String usuario = request.getParameter("usuario");
            String contrasena = request.getParameter("contrasena");
            String firma = request.getParameter("firma");
            String idMedico = request.getParameter("idMedico");

            Medico m = new Medico();

            m.setPrimerNombre(primerNombre);
            m.setSegundoNombre(segundoNombre);
            m.setPrimerApellido(primerApellido);
            m.setSegundoApellido(segundoApellido);
            m.setUsuario(usuario);
            m.setContraseña(contrasena);
            m.setFirma(firma);
            m.setFotoUsuario("No tiene");

            if (m.actualizarMedico(idMedico)) {
                if (m.obtenerMedico(idMedico) == false) {
                    respuesta += "\"actualizarMedico\":false,";
                    respuesta += "\"registro\": \"Cóloca un ID válido\" ";
                } else {
                    respuesta += "\"actualizarMedico\":true";
                }
            } else {
                respuesta += "\"actualizarMedico\":false";
            }
        } else if (proceso.equals("acceder")) {
            String usuario = request.getParameter("usuario");
            String contrasena = request.getParameter("contrasena");

            Medico m = new Medico();

            m.setUsuario(usuario);
            m.setContraseña(contrasena);

            ArrayList<Medico> lista = m.accederMedico(usuario, contrasena);

            if (lista.isEmpty()) {
                respuesta += "\"acceder\":false";
            } else {
                respuesta += "\"acceder\":true,";
                respuesta += "\"Medicos\":" + new Gson().toJson(lista);
            }

        }

    } else {
        respuesta += "\"ok\":false,";
        respuesta += "\"errorMsg\": \"Proceso no válido\" ";
    }

    respuesta += "}";
    response.setContentType("application/json;charset=iso-8859-1");
    out.print(respuesta);

%>