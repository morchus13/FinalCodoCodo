
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Conexion {
	
	private  final String URL = "jdbc:mysql://localhost:3306/trabajofinal";
	private  final String USER = "root";
	private  final String PASS = "";
        Connection con;
    public Connection conectar() throws SQLException{
        
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(URL, USER, PASS);
			
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
		}
	    return con;
    }
		
}
