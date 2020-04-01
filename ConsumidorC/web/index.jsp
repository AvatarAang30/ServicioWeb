<%-- 
    Document   : index
    Created on : 31/03/2020, 06:02:33 PM
    Author     : ROGELIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consumiendo srvicio desde C#</h1>
        <form name="formu" action="index.jsp" method="POST">
            <p>Selecciona una operacion</p>
            <select name="Seleccion">
                <option>Suma</option>
                <option>Resta</option>
                <option>Multiplicacion</option>
                <option>Division</option>
            </select>
            <p>Numero 1:</p>
            <input type="text" name="Numero1" value="0">
            <p>Numero 2:</p>
            <input type="text" name="Numero2" value="0"><br>
            <input type="submit" name="CargarDatos" value="Calcular">
            
        </form>
        <%
        String btnCalcular=request.getParameter("CargarDatos");
        if(btnCalcular!=null){
            String n1=request.getParameter("Numero1");
            session.setAttribute("Valor1", n1);
            String n2=request.getParameter("Numero2");
            session.setAttribute("Valor2", n2);
            String op=request.getParameter("Seleccion");
            session.setAttribute("Opcion", op);
            response.sendRedirect("MostrarResultado.jsp");
        }
        
        %>
    </body>
</html>
