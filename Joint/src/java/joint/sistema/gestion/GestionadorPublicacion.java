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
import joint.sistema.principal.Publicacion;
import joint.sistema.principal.Trabajador;
import joint.sistema.principal.Viaje;

/**
 *
 * @author jdiaz
 */
public class GestionadorPublicacion extends Gestionador{
    private Statement statement;
    private ResultSet resultset;
    private Connection con;
    private Publicacion publicacion;

    public GestionadorPublicacion(Publicacion publicacion) {
        this.publicacion=publicacion;
        try {
            this.con=getConnection();
            statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (SQLException ex) {
            Logger.getLogger(GestionadorTrabajador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public GestionadorPublicacion() {
        try {
            this.con=getConnection();
            statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (SQLException ex) {
            Logger.getLogger(GestionadorTrabajador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /******************************getters****************************/
   
    //***********************************************************
    //********************Verificadores*************************************************
    
    //***************************termina Verificadores*****************************
    //*****************************************************Registradores************************************************
    public int nuevoAviso(Publicacion p,Trabajador t){
        try {
            System.out.println("entre a crear publicacion");
            statement.execute("INSERT INTO publicacion " +
                    "(idTrabajador,titulo,contenido)" +
                    "VALUES("
                    + "" + t.getIdTrabajador() + ","
                    + "'" + p.getTitulo() + "',"
                    + "'" + p.getContenido() + "');" );
            return 1;
        } catch (SQLException ex) {
            System.out.println("Error en crear nuevo aviso"+ ex);
            return -1;
        }
    }
    //*****************************************************Termina Registradores************************************************
}
