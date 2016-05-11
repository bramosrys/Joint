package joint.sistema.gestion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import joint.sistema.Trabajador;

/**
 *
 * @author jdiaz
 */
public class GestionadorTrabajador extends Gestionador{
    private Statement statement;
    private ResultSet resultset;
    private Connection con;
    private Trabajador trabajador;

    public GestionadorTrabajador(Trabajador trabajador) {
        this.trabajador=trabajador;
        try {
            this.con=getConnection();
            statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (SQLException ex) {
            Logger.getLogger(GestionadorTrabajador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public boolean existeTrabajador(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select noempleado from trabajador where noempleado = "+"'"+trabajador.getNoEmpleado()+"'"+";");
            if(resultset.next()){
                return true;
            }else{
                return false;
            }
        } catch (SQLException ex) {
            System.out.println("No se encontro el trabajador" + ex);
            return false;
        }
    }
    
}
