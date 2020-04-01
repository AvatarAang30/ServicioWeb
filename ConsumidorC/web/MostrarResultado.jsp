<%-- 
    Document   : MostrarResultado
    Created on : 31/03/2020, 06:39:43 PM
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
        <h1>Resultado</h1>
        <%
            Object sessionValor1=session.getAttribute("Valor1");
            Object sessionValor2=session.getAttribute("Valor2");
            Object sessionOpcion=session.getAttribute("Opcion");
            out.println(sessionOpcion);
            out.println(sessionValor1);
            out.println(sessionValor2);
            int opcion=0;
            if(sessionOpcion.toString().equals("Suma")){
                opcion=1;
            }
            if(sessionOpcion.toString().equals("Resta")){
                opcion=2;
            }
            if(sessionOpcion.toString().equals("Multiplicacion")){
                opcion=3;
            }
            if(sessionOpcion.toString().equals("Division")){
                opcion=4;
            }
            int numVal1,numVal2;
            try{
                numVal1=Integer.parseInt(sessionValor1.toString());
                numVal2=Integer.parseInt(sessionValor2.toString());
            }catch(Exception e){
                numVal1=0;
                numVal2=0;
            }
            switch(opcion){
                case 1:
                    try{
                       cliente.ServicioNet service = new cliente.ServicioNet();
                       cliente.ServicioNetSoap port = service.getServicioNetSoap();
                       int a = numVal1;
                       int b = numVal2;
                       int resultado = port.sumar(a, b);
                       out.println("Resultado = "+resultado);
                    }catch(Exception ex){
                        out.println(ex);
                    }
                    break;
                
                case 2:{
                    try{
                       cliente.ServicioNet service = new cliente.ServicioNet();
                       cliente.ServicioNetSoap port = service.getServicioNetSoap();
                       int a = numVal1;
                       int b = numVal2;
                       int resultado = port.restar(a, b);
                       out.println("Resultado = "+resultado);
                    }catch(Exception ex){
                        out.println("No Resta");
                    }
                    break;
                }
                case 3:{
                    try{
                       cliente.ServicioNet service = new cliente.ServicioNet();
                       cliente.ServicioNetSoap port = service.getServicioNetSoap();
                       int a = numVal1;
                       int b = numVal2;
                       int resultado = port.multiplicar(a, b);
                       out.println("Resultado = "+resultado);
                    }catch(Exception ex){
                        out.println("No Multiplicacion");
                    }
                    break;
                }
                case 4:{
                    try{
                       cliente.ServicioNet service = new cliente.ServicioNet();
                       cliente.ServicioNetSoap port = service.getServicioNetSoap();
                       int a = numVal1;
                       int b = numVal2;
                       int resultado = port.dividir(a, b);
                       out.println("Resultado = "+resultado);
                    }catch(Exception ex){
                        out.println("No Division");
                    }
                    break;
                }
                
            }
        %>
    </body>
</html>
