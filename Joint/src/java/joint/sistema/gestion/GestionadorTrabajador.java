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
    public Trabajador getFechaContratacion(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select fechaContratacion from trabajador where noempleado = "+"'"+trabajador.getNoEmpleado()+"'"+";");
            if(resultset.next()){
                this.trabajador.setFechaContratacion(resultset.getString("fechaContratacion"));
                return trabajador;
            }else{
                System.out.println("Error al obtener fecha de contratación");
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener fecha de contratación " +ex);
            return null;
        }
    }
    public Trabajador getCargo(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select cargo from trabajador t, cargo c where t.noempleado = "+"'"+trabajador.getNoEmpleado()+"'"+""
                    + "and t.idcargo=c.idcargo;");
            if(resultset.next()){
                this.trabajador.setCargo(resultset.getString("cargo"));
                return trabajador;
            }else{
                System.out.println("Error al obtener cargo");
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener cargo " +ex);
            return null;
        }
    }
    public void destruirGestionador(){
        try {
            statement.close();
            resultset.close();
            con.close();
            trabajador.destruirTrabajador();
            System.gc();
        } catch (SQLException ex) {
            Logger.getLogger(GestionadorTrabajador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
