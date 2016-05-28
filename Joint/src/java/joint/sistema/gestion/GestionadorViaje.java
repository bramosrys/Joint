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
import joint.sistema.principal.Calificacion;
import joint.sistema.principal.Trabajador;
import joint.sistema.principal.Viaje;

/**
 *
 * @author jdiaz
 */
public class GestionadorViaje extends Gestionador{
    private Statement statement;
    private ResultSet resultset;
    private Connection con;
    private Viaje viaje;

    public GestionadorViaje(Viaje viaje) {
        this.viaje=viaje;
        try {
            this.con=getConnection();
            statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (SQLException ex) {
            Logger.getLogger(GestionadorTrabajador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public GestionadorViaje() {
        try {
            this.con=getConnection();
            statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (SQLException ex) {
            Logger.getLogger(GestionadorTrabajador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //*****************************************************Registradores************************************************
    public int crearViaje(Viaje v){
        try {
            //direccion
            statement.execute("INSERT INTO direccion " +
                    "(calle,numero,colonia,delegacion,cp,estado)" +
                    "VALUES("
                    + "'" + v.getDireccion().getCalle() + "',"
                    + "'" + v.getDireccion().getNo() + "',"
                    + "'" + v.getDireccion().getColonia() + "',"
                    + "'" + v.getDireccion().getDelegacion() + "',"
                    + "" + v.getDireccion().getCp() + ","
                    + "'" + v.getDireccion().getEstado() + "');" );
    int idDireccion=-1;
            resultset =  statement.executeQuery("SELECT last_insert_id() as idDireccion;");//Con esto recuperamos el ultimo id insertado 
            if(resultset.next()){
                idDireccion=Integer.parseInt(resultset.getString("idDireccion"));
                //parte viaje
                statement.execute("INSERT INTO viaje " +
                    "(iddestino,fechasalida,horasalida,idchofer,idlogistica)" +
                    "VALUES("
                    + "" + idDireccion + ","
                    + "'" + v.getFechaSalida() + "',"
                    + "'" + v.getHoraSalida() + "',"
                    + "" + v.getChofer().getIdTrabajador() + ","
                    + "" + v.getDespachador().getIdTrabajador() + ");" );
                //parte calificacion
    int idviaje=-1;
                resultset =  statement.executeQuery("SELECT last_insert_id() as idViaje;");
                if(resultset.next()){
                    idviaje=Integer.parseInt(resultset.getString("idViaje"));
                    statement.execute("INSERT INTO calificacion " +
                    "(calificado)" +
                    "VALUES("
                    + "'false');" );
                }
    int idcalificacionOperador=-1;
                resultset =  statement.executeQuery("SELECT last_insert_id() as idCalificacion;");
                if(resultset.next()){
                    idcalificacionOperador=Integer.parseInt(resultset.getString("idCalificacion"));
                    statement.execute("INSERT INTO calificacion " +
                    "(calificado)" +
                    "VALUES("
                    + "'false');" );
    int idcalificacionDespachador=-1;
                    resultset =  statement.executeQuery("SELECT last_insert_id() as idCalificacion;");
                    if(resultset.next()){
                        idcalificacionDespachador=Integer.parseInt(resultset.getString("idCalificacion"));
                        //calif operador
                        statement.execute("INSERT INTO trabajadorviajecalificacion " +
                        "(idTrabajador,idCalificacion,idViaje)" +
                        "VALUES("
                        + "" + v.getChofer().getIdTrabajador()+ ","
                        + "" + idcalificacionOperador + ","
                        + "" + idviaje + ");" );
                        //calif despachador
                        statement.execute("INSERT INTO trabajadorviajecalificacion " +
                        "(idTrabajador,idCalificacion,idViaje)" +
                        "VALUES("
                        + "" + v.getDespachador().getIdTrabajador()+ ","
                        + "" + idcalificacionDespachador + ","
                        + "" + idviaje + ");" );
                    }
                }
            }
            return 1;
        } catch (SQLException ex) {
            
            System.out.println("Error en crear nuevo trabajador"+ ex);
            return -1;
        }
    }
    /*public void registrarTrabajador(Trabajador t){
        try {         
            String sentencia = "UPDATE trabajador SET nombre='"+t.getNombre()+"', fechaNacimiento='"+t.getFechaNacimiento()+"',"
                    + " edad="+t.getEdad()+", correo='"+t.getCorreo()+"', contrasenia='"+t.getContrasenia()+"', "
                    + "registro='true' WHERE noEmpleado="+t.getNoEmpleado()+";";
            System.out.println(sentencia);
            statement.executeUpdate(sentencia);
        } catch (SQLException ex) {
            System.out.println("Error en registro de trabajador" + ex);
        }
    }*/
    //*****************************************************Termina Registradores************************************************
}
