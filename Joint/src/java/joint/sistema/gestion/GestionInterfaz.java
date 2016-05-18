/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package joint.sistema.gestion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import joint.sistema.principal.Trabajador;

/**
 *
 * @author jdiaz
 */
public class GestionInterfaz extends Gestionador{
    private Statement statement;
    private ResultSet resultset;
    private Connection con;
    
    public GestionInterfaz(){
        try {
            this.con=getConnection();
            statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (SQLException ex) {
            Logger.getLogger(GestionadorTrabajador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ResultSet obtenerColores(){
        resultset=null;
        try {
            resultset=statement.executeQuery("select nombre,color from color;");
        } catch (SQLException ex) {
            Logger.getLogger(GestionInterfaz.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultset;
    }
    public int obtenerIdColor(String color){
        try {
            resultset=null;
            resultset=statement.executeQuery("select idcolor from color where color='"+color+"';");
            if(resultset.next()){
                return Integer.parseInt(resultset.getString("idcolor"));
            }else{
                return 0;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener id de color " +ex);
            return 0;
        }
    }
    public void cambiarColor(int idtrabajador,int idcolor){
        try {        
            String sentencia = "UPDATE configuraciontrabajador SET idcolor="+idcolor+" WHERE idtrabajador="+idtrabajador+";";
            System.out.println(sentencia);
            statement.executeUpdate(sentencia);
        } catch (SQLException ex) {
            System.out.println("Error en cambio de color" + ex);
        }
    }
}
