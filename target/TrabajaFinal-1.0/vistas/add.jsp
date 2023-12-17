

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Agregar Pedido</title>
                 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        </head>
        <body class="pag">
                <h1 class="container text-center text-success p-3">Completa los datos para realizar tu pedido!!!</h1>
                <div class="container col-md-auto dropdown w-50">
                    <form  class="container-sm text-center" action="Controlador">
                        <label class="text-success p-0 m-0 p-0">Nombre:</label><br>
                        <input class="form-control rounded border border-success p-2 mb-2" type="text" name="txtNombre"><br>
                        <label class="text-success p-0 m-0 p-0">Pizza:</label><br>
                        <input class="form-control rounded border border-success p-2 mb-2" type="text" name="txtPizza"><br>
                       <label class="text-success p-0 m-0 p-0">Cantidad:</label><br>
                        <input class="form-control rounded border border-success p-2 mb-2" type="text" name="txtCantidad"><br>
                       <label class="text-success p-0 m-0 p-0">Direccion:</label><br>
                        <input class="form-control rounded border border-success p-2 mb-2"  type="text" name="txtDireccion"><br>
                        <label class="text-success p-0 m-0 p-0">Telefono</label><br>
                        <input  class="form-control rounded border border-success p-2 mb-2" type="text" name="txtTelefono"><br>
                        <input  class="in" type="submit" name="accion" value="agregar"><br>
                </form>
                </div>
                
                
                
        </body>
</html>


