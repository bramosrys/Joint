package joint.bd;

import java.sql.*;

public class ConectorSQL {
    
    private Connection con;
    private String urlBD;
    private String contrasenia;
    private String nombreU;
	
    public ConectorSQL(String urlBD,String contrasenia,String nombreU) throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException{
            String driver = "com.mysql.jdbc.Driver";
            Class.forName(driver);
            this.urlBD=urlBD;
            this.contrasenia=contrasenia;
            this.nombreU=nombreU;
    }
    public ConectorSQL() throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException{
            String driver = "com.mysql.jdbc.Driver";
            Class.forName(driver);
            urlBD ="jdbc:mysql://127.0.0.1:3306/joiny";
            contrasenia="46143**/";
            nombreU="root";
    }

    public Connection conectar() throws SQLException {
            con = DriverManager.getConnection(urlBD, nombreU, contrasenia);	
            return con;
    }
}
