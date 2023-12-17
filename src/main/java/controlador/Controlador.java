package controlador;

import java.awt.HeadlessException;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.Pedidos;
import modeloDAO.PedidosDAO;

@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

	public String listar = "vistas/list.jsp";
	public String add = "vistas/add.jsp";
	public String edit = "vistas/edit.jsp";

	Pedidos pedido = new Pedidos();
	PedidosDAO pedidoDao = new PedidosDAO();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {

		String acceso = "";
		String accion = request.getParameter("accion");

		if (accion.equalsIgnoreCase("listar")) {
			
			acceso = listar;
		} else if (accion.equalsIgnoreCase("agregar")) {

			String nom = request.getParameter("txtNombre");
			String pizza = request.getParameter("txtPizza");
			int cant = Integer.parseInt((String) request.getParameter("txtCantidad"));
			String dire = request.getParameter("txtDireccion");
			int telef = Integer.parseInt((String) request.getParameter("txtTelefono"));

			pedido.setNombre(nom);
			pedido.setPizza(pizza);
			pedido.setCantidad(cant);
			pedido.setDireccion(dire);
			pedido.setTelefono(telef);
			pedidoDao.add(pedido);

			acceso = listar;

		} else if (accion.equalsIgnoreCase("add")) {
			acceso = add;
		} else if (accion.equalsIgnoreCase("agregar")) {
			pedidoDao = null;
			String nombre = request.getParameter("txtNombre");
			String pizza = request.getParameter("txtPizza");
			int cantidad = Integer.parseInt((String) request.getParameter("txtCantidad"));
			String direccion = request.getParameter("txtDireccion");
			int telefono = Integer.parseInt((String) request.getParameter("txtTelefono"));
			pedido.setNombre(nombre);
			pedido.setPizza(pizza);
			pedido.setCantidad(cantidad);
			pedido.setDireccion(direccion);
			pedido.setTelefono(telefono);
			pedidoDao.add(pedido);
			acceso = listar;

		} else if (accion.equalsIgnoreCase("editar")) {

			request.setAttribute("idped", request.getParameter("id"));
			//int id= Integer.parseInt((String)request.getParameter("id"))
			//request.setAttribute("idped", id);//no funciono de esta forma

			acceso = edit;

		} else if (accion.equalsIgnoreCase("actualizar")) {
			//codigo q llama a dao actualizar.-
			String nombre = request.getParameter("txtNombre");
			String pizza = request.getParameter("txtPizza");
			int cantidad = Integer.parseInt((String) request.getParameter("txtCantidad"));
			String direccion = request.getParameter("txtDireccion");
			int telefono = Integer.parseInt((String) request.getParameter("txtTelefono"));

			int id = Integer.parseInt((String) request.getParameter("txtId"));
			pedido.setId(id);
			pedido.setNombre(nombre);
			pedido.setPizza(pizza);
			pedido.setCantidad(cantidad);
			pedido.setDireccion(direccion);
			pedido.setTelefono(telefono);
			pedidoDao.edit(pedido);//Aca es donde se actualiza
			acceso = listar;

		} else if (accion.equalsIgnoreCase("eliminar")) {

			int id = Integer.parseInt((String) request.getParameter("id"));
			pedidoDao.eliminar(id);
			acceso = listar;
		}

		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {

	}

}
