package joint.sistema.gestion;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import joint.bd.ConectorSQL;


public abstract class Gestionador{
    private Connection con;
    private ConectorSQL conSQL;
    
    public Gestionador(){
            iniciarConexion();
        try {
            con=conSQL.conectar();
        } catch (SQLException ex) {
            Logger.getLogger(Gestionador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void iniciarConexion(){
        try {
            conSQL = new ConectorSQL();
        } catch (SQLException ex) {
            Logger.getLogger(Gestionador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Gestionador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Gestionador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Gestionador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Connection getConnection(){
        return this.con;
    }
    
}

