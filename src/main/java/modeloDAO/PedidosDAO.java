package modeloDAO;

import config.Conexion;
import interfaces.CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Pedidos;

public class PedidosDAO implements CRUD {

	Conexion conectar = new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;

	@Override
	public List listar() {
		List<Pedidos> listaPedidos = new ArrayList<>();
		String sql = "select * from pedidos";
		try {
			con = conectar.conectar();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Pedidos pedido = new Pedidos();
				pedido.setId(rs.getInt("idPedidos"));
				pedido.setNombre(rs.getString("nombre"));
				pedido.setPizza(rs.getString("pizza"));
				pedido.setCantidad(rs.getInt("cantidad"));
				pedido.setDireccion(rs.getString("direccion"));
				pedido.setTelefono(rs.getInt("telefono"));
				listaPedidos.add(pedido);
			}

		} catch (Exception e) {
			System.out.println("No se pudo conectar!!!");
		}
		return listaPedidos;
	}

	@Override
	public Pedidos list(int id) {
		String sql = "select * from pedidos where idPedidos=" + id;
		Pedidos ped = new Pedidos();
		try {
			con = conectar.conectar();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				ped.setId(rs.getInt("idPedidos"));
				ped.setNombre(rs.getString("nombre"));
				ped.setPizza(rs.getString("pizza"));
				ped.setCantidad(rs.getInt("cantidad"));
				ped.setDireccion(rs.getString("direccion"));
				ped.setTelefono(rs.getInt("telefono"));
			}

		} catch (Exception e) {
			System.out.println("No se pudo conectar!!!");
		}
		return ped;
	}

	@Override
	public boolean add(Pedidos ped) {

		String sql = "insert into pedidos (nombre,pizza,cantidad,direccion,telefono) values "
			+ "('" + ped.getNombre() + "','" + ped.getPizza() + "','" + ped.getCantidad() + "','"
			+ ped.getDireccion() + "','" + ped.getTelefono() + "')";

		try {
			con = conectar.conectar();
			ps = con.prepareStatement(sql);
			int a = ps.executeUpdate();
			System.out.println("SE REALIZO LA AGREGACION:" + a);

		} catch (SQLException e) {
			System.out.println("ERROR DE CONEXION" + e.getMessage());
		}

		return false;

	}

	@Override
	public boolean edit(Pedidos ped) {

		String sql = "UPDATE pedidos SET nombre='" + ped.getNombre() + "', pizza='" + ped.getPizza()
			+ "', cantidad='" + ped.getCantidad() + "', direccion='" + ped.getDireccion() + "', telefono='"
			+ ped.getTelefono() + "' WHERE idPedidos=" + ped.getId();

		try {
			con = conectar.conectar();
			ps = con.prepareStatement(sql);
			int a = ps.executeUpdate();
			System.out.println("SE REALIZO LA MODIFICACION:" + a);

		} catch (SQLException e) {
			System.out.println("ERROR DE CONEXION" + e.getMessage());
		}
		return false;
	}

	@Override
	public boolean eliminar(int id) {
		String sql = "DELETE FROM pedidos WHERE idPedidos=" + id;
		try {

			con = conectar.conectar();
			ps=con.prepareStatement(sql);
			ps.executeUpdate();
			System.out.println("SE REALIZO LA ELIMINACION!!!");
			
		} catch (SQLException ex) {
			System.out.println("NO SE PUDE REALIZAR LA CONEXION!!!" + ex.getMessage());
		}
		return false;
	}

}
