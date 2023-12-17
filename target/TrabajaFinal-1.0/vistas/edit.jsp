

<%@page import="modelo.Pedidos"%>
<%@page import="modeloDAO.PedidosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Actualizar Datos</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        </head>
        <body>

                <!-- <%
                        PedidosDAO dao = new PedidosDAO();
                        int id = Integer.parseInt((String) request.getAttribute("idped"));

                        Pedidos p = (Pedidos) dao.list(id); //Pido al dao q me traiga los datos del pedido seleccionado

                %> -->


                <h1 class="container text-center text-success p-3" style="text-center:center; columns: Green;">Modifica los datos de tu pedido... Aun estas a tiempo!!!</h1>

                <div class="container col-md-auto dropdown w-50">
                        <form  action="Controlador" class="container-sm text-center">
                                <label class="text-success p-0 m-0 p-0">Nombre:</label><br>
                                <input class="form-control rounded border border-success p-2 mb-2" type="text" name="txtNombre" value="<%=p.getNombre()%> "><br>
                                <label class="text-success p-0 m-0 p-0">Pizza:</label><br>
                                <input class="form-control rounded border border-success p-2 mb-2" type="text" name="txtPizza" value="<%=p.getPizza()%>"><br>
                                <label class="text-success p-0 m-0 p-0">Cantidad:</label><br>
                                <input class="form-control rounded border border-success p-2 mb-2" type="text" name="txtCantidad" value="<%=p.getCantidad()%>"><br>
                                <label class="text-success p-0 m-0 p-0">Direccion:</label><br>
                                <input class="form-control rounded border border-success p-2 mb-2" type="text" name="txtDireccion" value="<%=p.getDireccion()%>"><br>
                                <label class="text-success p-0 m-0 p-0">Telefono:</label><br>
                                <input class="form-control rounded border border-success p-2 mb-2" type="text" name="txtTelefono" value="<%=p.getTelefono()%>"><br>
                                <input type="hidden" name="txtId" value="<%=p.getId()%>">
                                <br>
                                <input type="submit" name="accion" value="actualizar"><br>
                        </form>

                </div>

        </body>
</html>

