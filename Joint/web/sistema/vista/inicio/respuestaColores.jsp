<%-- 
    Document   : elegirColor
    Created on : May 15, 2016, 11:10:09 PM
    Author     : jdiaz
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ResultSet colores=(ResultSet)request.getParameter("colores");
%>
    <h2 class="text-left">Elige tu color preferido</h2><hr>
    <div clas="col-md-12">
        <div clas='col-md-2'>
            <h4 class="text-center">Nombre</h4>
            <button class="btn btn-default btn-block btn-color" style="background-color: #5bc0de;">Button</button>
        </div>
    </div>