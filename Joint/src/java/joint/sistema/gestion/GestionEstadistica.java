package joint.sistema.gestion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;
import joint.sistema.principal.Trabajador;

/**
 *
 * @author jdiaz
 */
public class GestionEstadistica extends Gestionador{
    private Statement statement;
    private ResultSet resultset;
    private Connection con;
    
    public GestionEstadistica() {
        try {
            this.con=getConnection();
            statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (SQLException ex) {
            Logger.getLogger(GestionadorTrabajador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Collection getMejorDesempenioMes(int mes){ 
        Collection idtrabajadores;
        ArrayList resultados = new ArrayList();
        try {
            resultset=null;
            String sentencia="select t.idtrabajador from trabajador t, ";
            resultset=statement.executeQuery(sentencia);
            if(resultset.next()){
                resultados.add(resultset.getString("idviaje"));
            }else{
                return null;
            }
            while(resultset.next()){
                resultados.add(resultset.getString("idviaje"));
            }
            idtrabajadores=resultados;
            return idtrabajadores;
        } catch (SQLException ex) {
            System.out.println("Error al obtener mejor desempeño" + ex);
            return null;
        }
    }
}
