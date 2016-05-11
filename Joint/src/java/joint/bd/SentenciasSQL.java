
package joint.bd;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;


public class SentenciasSQL {
    private Connection con;
    private ConectorSQL conSQL;
    
    public void SentenciasSQL() throws SQLException{
        con=conSQL.conectar();
    }
    
    public void iniciarConexion() throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException{
        conSQL = new ConectorSQL();
    }
}
