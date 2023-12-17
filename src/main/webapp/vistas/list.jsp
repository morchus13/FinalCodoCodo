<%@page import="java.sql.Connection"%>
<%@page import="config.Conexion"%>
<%@page import="java.util.Iterator"%>
<%@page import="modelo.Pedidos"%>
<%@page import="modeloDAO.PedidosDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Pizzeria La Loca Pizza</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


                <style>
                        .glow {
                            font-size: 30px;
                            color: #fff;
                            text-align: center;
                            -webkit-animation: glow 1s ease-in-out infinite alternate;
                            -moz-animation: glow 1s ease-in-out infinite alternate;
                            animation: glow1 1s ease-in-out infinite alternate;
                        }

                        @keyframes glow1 {
                            from {
                                text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
                            }
                            to {
                                text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
                            }
                        }
                </style>        
        </head>


        <body>
                <h1 class="container text-center text-success p-3">Bienvenido a Pizza Loca!!!</h1>
                <div>
                        <h2 class="container text-center text-success p-3">Pedidos Online!!!</h2>
                        <br>
                        <div class="container text-center p-1 bg-success w-25 rounded">
                                <a class="btn rounded glow" href="Controlador?accion=add">Nuevo Pedido</a>
                        </div>


                        <br>
                        <br>
                        <div class="container col-md-auto dropdown w-5">
                                <table class="container text-center bg-success table table-bordered table-dark table-hover" border="2" cellspacing="4" cellpadding="8">
                                        <thead>
                                                <tr>
                                                        <th>ID</th>
                                                        <th>NOMBRE</th>
                                                        <th>PIZZA</th>
                                                        <th>CANTIDAD</th>
                                                        <th>DIRECCION</th>
                                                        <th>TELEFONO</th>
                                                        <th>Acciones</th>
                                                </tr>
                                        </thead>

                                        <tbody>
                                                <%
                                                        PedidosDAO ped = new PedidosDAO();
                                                        List<Pedidos> lista = ped.listar();
                                                        for (Pedidos p : lista) {
                                                %>
                                                <tr>
                                                        <td><%=p.getId()%></td>
                                                        <td><%=p.getNombre()%></td>
                                                        <td><%=p.getPizza()%></td>
                                                        <td><%=p.getCantidad()%></td>
                                                        <td><%=p.getDireccion()%></td>
                                                        <td><%=p.getTelefono()%></td>
                                                        <td>
                                                                <a class="btn btn-success m-2" href="Controlador?accion=editar&id=<%= p.getId()%>">Editar</a>
                                                                <a class="btn btn-success m-2" href="Controlador?accion=eliminar&id=<%= p.getId()%>">Eliminar</a>
                                                        </td>           
                                                </tr>

                                        </tbody>
                                        <%}%>
                                </table>        
                        </div>

                </div>
                <a class="btn btn-success m-2" href="index.jsp">VOLVER</a>                               

        </body>
</html>

