
package interfaces;

import java.util.List;
import modelo.Pedidos;


public interface CRUD {
	
	public List listar();
	public Pedidos list(int id);
	public boolean add(Pedidos ped);
	public boolean edit(Pedidos ped);
	public boolean eliminar (int id);
	
	
	
	
}
