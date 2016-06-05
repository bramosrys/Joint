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
import java.util.Calendar;
import java.util.GregorianCalendar;
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
    /******************************getters****************************/
    public String[] getInfoViajeBasica(Viaje v){ // devuelve fecha en el primer espacio despues la hora de salida y al ultimo el id del operador encargado
        String [] resultados =new String[3];
        try {
            resultset=null;
            resultset=statement.executeQuery("select fechasalida,horasalida,idchofer from viaje where idViaje ="+viaje.getIdViaje()+";");
            if(resultset.next()){
                resultados[0]=resultset.getString("fechasalida");
                resultados[1]=resultset.getString("horasalida");
                resultados[2]=resultset.getString("idchofer");
                return resultados;
            }else{
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al comprobar existencia de viaje" + ex);
            return null;
        }
    }
    public String[] getInfoViajeFinalizado(Viaje v){
        String [] resultados =new String[8];
        GestionadorTrabajador gt=new GestionadorTrabajador();
        try {
            resultset=null;
            String sentencia ="select idViaje,fechasalida,fechallegada,kilometraje,horaentrada,idlogistica,horasalida,idchofer from viaje where idViaje ="+viaje.getIdViaje()+";";
            resultset=statement.executeQuery(sentencia);
            System.out.println(sentencia);
            if(resultset.next()){
                resultados[0]=resultset.getString("idviaje");
                resultados[1]=resultset.getString("fechasalida");
                resultados[2]=resultset.getString("fechallegada");
                resultados[3]=resultset.getString("kilometraje");
                resultados[4]=resultset.getString("horasalida");
                resultados[5]=resultset.getString("horaentrada");
                resultados[6]=gt.getNombre(Integer.parseInt(resultset.getString("idchofer")));
                resultados[7]=gt.getNombre(Integer.parseInt(resultset.getString("idlogistica")));
                return resultados;
            }else{
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener datos del viaje" + ex);
            return null;
        }
    }
    public String[] getInfoViajeBasica(int idViaje){ // devuelve fecha en el primer espacio despues la hora de salida y al ultimo el id del operador encargado
        String [] resultados =new String[3];
        try {
            resultset=null;
            resultset=statement.executeQuery("select fechasalida,horasalida,idchofer from viaje where idViaje ="+idViaje+";");
            if(resultset.next()){
                resultados[0]=resultset.getString("fechasalida");
                resultados[1]=resultset.getString("horasalida");
                resultados[2]=resultset.getString("idchofer");
                return resultados;
            }else{
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al comprobar existencia de viaje" + ex);
            return null;
        }
    }
    //***********************************************************
    //********************Verificadores*************************************************
    public boolean existeViaje(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select * from viaje where idViaje ="+viaje.getIdViaje()+";");
            if(resultset.next()){
                return true;
            }else{
                return false;
            }
        } catch (SQLException ex) {
            System.out.println("Error al comprobar existencia de viaje" + ex);
            return false;
        }
    }
    public boolean viajeFinalizado(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select finalizado from viaje where idViaje ="+viaje.getIdViaje()+";");
            if(resultset.next()){
                if(resultset.getString("finalizado").equals("true")){
                    return true;
                }else{
                    return false;
                }
            }else{
                return false;
            }
        } catch (SQLException ex) {
            System.out.println("Error al comprobar existencia de viaje" + ex);
            return false;
        }
    }
    public boolean correspondeViaje(Viaje v,Trabajador t){
        try {
            resultset=null;
            resultset=statement.executeQuery("select * from trabajadorviajecalificacion where idtrabajador="+t.getIdTrabajador()+" and idViaje ="+viaje.getIdViaje()+";");
            if(resultset.next()){
                return true;
            }else{
                return false;
            }
        } catch (SQLException ex) {
            System.out.println("Error al comprobar correspondencia de viaje" + ex);
            return false;
        }
    }
    //***************************termina Verificadores*****************************
    //*****************************************************Registradores************************************************
    public int crearViaje(Viaje v){
        int idviaje;
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
    idviaje=-1;
                resultset =  statement.executeQuery("SELECT last_insert_id() as idViaje;");
                if(resultset.next()){
                    idviaje=Integer.parseInt(resultset.getString("idViaje"));
                    statement.execute("INSERT INTO calificacion " +
                    "(idtipo,calificado)" +
                    "VALUES("
                    + "3,'false');" );
                }
    int idcalificacionOperador=-1;
                resultset =  statement.executeQuery("SELECT last_insert_id() as idCalificacion;");
                if(resultset.next()){
                    idcalificacionOperador=Integer.parseInt(resultset.getString("idCalificacion"));
                    statement.execute("INSERT INTO calificacion " +
                    "(idtipo,calificado)" +
                    "VALUES("
                    + "3,'false');" );
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
                    /////////////////////////////////////////////////////////////////////////
                    statement.execute("INSERT INTO trabajadorcalificacion " +
                    "(idcalificacion,idcalificador,idcalificado)" +
                    "VALUES("
                    + "" + idcalificacionOperador + ","
                    + "" + v.getDespachador().getIdTrabajador() + ","
                    + "" + v.getChofer().getIdTrabajador() + ");" );
                    statement.execute("INSERT INTO trabajadorcalificacion " +
                    "(idcalificacion,idcalificador,idcalificado)" +
                    "VALUES("
                    + "" + idcalificacionDespachador + ","
                    + "" + v.getChofer().getIdTrabajador() + ","
                    + "" + v.getDespachador().getIdTrabajador() + ");" );
                    ////////////////////////////////////////////////////////////////////////// 
                    
                }
            return idviaje;
            }
            return -1;
        } catch (SQLException ex) {
            System.out.println("Error en crear nuevo trabajador"+ ex);
            return -1;
        }
    }
    public int finalizarViaje(Viaje v){
        try {         
            String sentencia = "UPDATE viaje SET fechallegada='"+v.getFechaLlegada()+"', horaentrada='"+v.getHoraLlegada()+"',"
                    + " kilometraje='"+v.getKilometraje()+"', finalizado='true' WHERE idViaje="+v.getIdViaje()+";";
            System.out.println(sentencia);
            statement.executeUpdate(sentencia);
            return 1;
        } catch (SQLException ex) {
            System.out.println("Error en finalizacion de viaje" + ex);
            return -1;
        }
    }
    //*****************************************************Termina Registradores************************************************
}
