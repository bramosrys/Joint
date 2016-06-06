package joint.sistema.gestion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;

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
    public Collection getMejorDesempenioGeneralMes(int mes, int anio){ 
        Collection idtrabajadores;
        ArrayList resultados = new ArrayList();
        try {
            resultset=null;
            String sentencia="select t.idtrabajador from trabajador t, trabajadorcalificacion tc, calificacion c, fechacalificacion fc "
                    + "where t.idtrabajador=tc.idcalificado and tc.idcalificacion=c.idcalificacion and fc.idcalificacion=c.idcalificacion and"
                    + " fc.anio="+anio+" and fc.mes="+mes+" and c.valor >=4;";
            System.out.println(sentencia);
            resultset=statement.executeQuery(sentencia);
            if(resultset.next()){
                resultados.add(resultset.getString("idtrabajador"));
            }else{
                return null;
            }
            while(resultset.next()){
                resultados.add(resultset.getString("idtrabajador"));
            }
            idtrabajadores=resultados;
            return idtrabajadores;
        } catch (SQLException ex) {
            System.out.println("Error al obtener mejor desempeño" + ex);
            return null;
        }
    }
    public Collection getPeorDesempenioGeneralMes(int mes, int anio){ 
        Collection idtrabajadores;
        ArrayList resultados = new ArrayList();
        try {
            resultset=null;
            String sentencia="select t.idtrabajador from trabajador t, trabajadorcalificacion tc, calificacion c, fechacalificacion fc "
                    + "where t.idtrabajador=tc.idcalificado and tc.idcalificacion=c.idcalificacion and fc.idcalificacion=c.idcalificacion and"
                    + " fc.anio="+anio+" and fc.mes="+mes+"  and c.valor <=2;";
            System.out.println(sentencia);
            resultset=statement.executeQuery(sentencia);
            if(resultset.next()){
                resultados.add(resultset.getString("idtrabajador"));
            }else{
                return null;
            }
            while(resultset.next()){
                resultados.add(resultset.getString("idtrabajador"));
            }
            idtrabajadores=resultados;
            return idtrabajadores;
        } catch (SQLException ex) {
            System.out.println("Error al obtener peor desempeño" + ex);
            return null;
        }
    }
    public Collection getMejorDesempenioGeneralAnual(int anio){ 
        Collection idtrabajadores;
        ArrayList resultados = new ArrayList();
        try {
            resultset=null;
            String sentencia="select t.idtrabajador from trabajador t, trabajadorcalificacion tc, calificacion c, fechacalificacion fc "
                    + "where t.idtrabajador=tc.idcalificado and tc.idcalificacion=c.idcalificacion and fc.idcalificacion=c.idcalificacion and"
                    + " fc.anio="+anio+" and c.valor >=4;";
            System.out.println(sentencia);
            resultset=statement.executeQuery(sentencia);
            if(resultset.next()){
                resultados.add(resultset.getString("idtrabajador"));
            }else{
                return null;
            }
            while(resultset.next()){
                resultados.add(resultset.getString("idtrabajador"));
            }
            idtrabajadores=resultados;
            return idtrabajadores;
        } catch (SQLException ex) {
            System.out.println("Error al obtener mejor desempeño" + ex);
            return null;
        }
    }
    public Collection getPeorDesempenioGeneralAnual(int anio){ 
        Collection idtrabajadores;
        ArrayList resultados = new ArrayList();
        try {
            resultset=null;
            String sentencia="select t.idtrabajador from trabajador t, trabajadorcalificacion tc, calificacion c, fechacalificacion fc "
                    + " where t.idtrabajador=tc.idcalificado and tc.idcalificacion=c.idcalificacion and fc.idcalificacion=c.idcalificacion and"
                    + " fc.anio="+anio+" and  c.valor <=2;";
            System.out.println(sentencia);
            resultset=statement.executeQuery(sentencia);
            if(resultset.next()){
                resultados.add(resultset.getString("idtrabajador"));
            }else{
                return null;
            }
            while(resultset.next()){
                resultados.add(resultset.getString("idtrabajador"));
            }
            idtrabajadores=resultados;
            return idtrabajadores;
        } catch (SQLException ex) {
            System.out.println("Error al obtener peor desempeño" + ex);
            return null;
        }
    }
}
