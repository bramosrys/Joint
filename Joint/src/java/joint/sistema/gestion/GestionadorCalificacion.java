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
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
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
public class GestionadorCalificacion extends Gestionador{
    private Statement statement;
    private ResultSet resultset;
    private Connection con;
    private Calificacion calificacion;

    public GestionadorCalificacion(Calificacion calificacion) {
        this.calificacion=calificacion;
        try {
            this.con=getConnection();
            statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (SQLException ex) {
            Logger.getLogger(GestionadorTrabajador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public GestionadorCalificacion() {
        try {
            this.con=getConnection();
            statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (SQLException ex) {
            Logger.getLogger(GestionadorTrabajador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /***********************************getters***********************************/
    public Collection getViajesNoCalificadosTrabajador(Trabajador t){ 
        Collection viajes;
        ArrayList idViajes = new ArrayList();
        try {
            resultset=null;
            String sentencia="select v.idviaje from viaje v, trabajadorviajecalificacion tvc, calificacion c "
                    + "where tvc.idtrabajador="+t.getIdTrabajador()+" and tvc.idviaje=v.idviaje and tvc.idcalificacion=c.idcalificacion and v.finalizado='true' and c.calificado='false';";
            resultset=statement.executeQuery(sentencia);
            if(resultset.next()){
                idViajes.add(resultset.getString("idviaje"));
            }else{
                return null;
            }
            while(resultset.next()){
                idViajes.add(resultset.getString("idviaje"));
            }
            viajes=idViajes;
            return viajes;
        } catch (SQLException ex) {
            System.out.println("Error al obtener id de viajes" + ex);
            return null;
        }
    }
    public Viaje getInfoViajeNoCalificado(int idViaje, int idTrabajador){
        try {
            resultset=null;
            resultset=statement.executeQuery("select fechasalida,fechallegada,idchofer,idlogistica from viaje where idViaje ="+idViaje+";");
            if(resultset.next()){
                Viaje v=new Viaje();
                v.setFechaSalida(resultset.getString("fechasalida"));
                v.setFechaLlegada(resultset.getString("fechallegada"));
                int idChofer=Integer.parseInt(resultset.getString("idchofer"));
                int idLogistica=Integer.parseInt(resultset.getString("idlogistica"));
                GestionadorTrabajador gt=new GestionadorTrabajador();
                Trabajador tO=new Trabajador();
                Trabajador tL=new Trabajador();
                tO.setNombre(gt.getNombre(idChofer));
                v.setChofer(tO);
                tL.setNombre(gt.getNombre(idLogistica));
                v.setDespachador(tL);
                v.setCalificacion(getIDCalificacionViaje(idViaje,idTrabajador));
                return v;
            }else{
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener info de viaje" + ex);
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
    public int getIDCalificacionViaje(int idViaje,int idTrabajador){ 
        try {
            resultset=null;
            String sentencia="select idcalificacion from trabajadorviajecalificacion where idviaje="+idViaje+" and idTrabajador="+idTrabajador+";";
            resultset=statement.executeQuery(sentencia);
            if(resultset.next()){
                return Integer.parseInt(resultset.getString("idcalificacion"));
            }else{
                return -1;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener id de calificacion de viaje" + ex);
            return -1;
        }
    }
    public int getIDViajeCalificacion(int idCalificacion){ 
        try {
            resultset=null;
            String sentencia="select idviaje from trabajadorviajecalificacion where idCalificacion="+idCalificacion+";";
            resultset=statement.executeQuery(sentencia);
            if(resultset.next()){
                return Integer.parseInt(resultset.getString("idviaje"));
            }else{
                return -1;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener id de viaje por calificacion" + ex);
            return -1;
        }
    }
    //////////////////////////////////////////////////////////////////////////////
    /*****************************comprobadores**********************************/
    ///////////////////////////////////////////////////////////////////////////
    /**********************registradores***************************************/
    public int CrearCalificacionViaje(Calificacion c){
        try {         
            String sentencia = "UPDATE calificacion SET fecha='"+c.getFecha()+"', valor="+c.getValor()+","
                    + " comentario='"+c.getComentario()+"', calificado='true' WHERE idcalificacion="+c.getIdCalificacion()+";";
            System.out.println(sentencia);
            statement.executeUpdate(sentencia);
            Calendar fecha = new GregorianCalendar();
            int anio = fecha.get(Calendar.YEAR);
            int mes = fecha.get(Calendar.MONTH);
            int dia = fecha.get(Calendar.DAY_OF_MONTH);
            statement.execute("INSERT INTO fechacalificacion " +
            "(idcalificacion,anio,mes,dia)" +
            "VALUES("
            + "" + c.getIdCalificacion() + ","
            + "" + anio + ","
            + "" + mes+1 + ","
            + "" + dia + ");" );
            /////////////////////////////////////////////////////////////////////
            return 1;
        } catch (SQLException ex) {
            System.out.println("Error en creacion de calificacion de viaje" + ex);
            return -1;
        }
    }
    /////////////////////////////////////////////////////////////////////////////
}
