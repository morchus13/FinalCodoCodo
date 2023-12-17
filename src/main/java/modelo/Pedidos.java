
package modelo;


public class Pedidos {
	private int id;
	private String nombre;
	private String pizza;
	private int cantidad;
	private String direccion;
	private int telefono;

	public Pedidos() {
	}

	public Pedidos(int id, String nombre, String pizza,int cantidad, String direccion, int telefono) {
		this.id = id;
		this.nombre = nombre;
		this.pizza = pizza;
		this.cantidad=cantidad;
		this.direccion = direccion;
		this.telefono = telefono;
	}

	public int getId() {
		return id;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPizza() {
		return pizza;
	}

	public void setPizza(String pizza) {
		this.pizza = pizza;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	
	
}
