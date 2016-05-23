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
    public GestionadorTrabajador() {
        try {
            this.con=getConnection();
            statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (SQLException ex) {
            Logger.getLogger(GestionadorTrabajador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //*************************************Verificadores*********************************************
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
    public boolean estaRegistrado(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select registro from trabajador where noempleado = "+"'"+trabajador.getNoEmpleado()+"'"+";");
            if(resultset.next()){
                String registro=resultset.getString("registro");
                if(registro.equals("true")){
                    return true;
                }else{
                    return false;
                }
            }else{
                return false;
            }
        } catch (SQLException ex) {
            System.out.println("No se pudo recuperar el registro del trabajador" + ex);
            return false;
        }
    }
    public boolean estaActivo(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select activo from trabajador where noempleado = "+"'"+trabajador.getNoEmpleado()+"'"+";");
            if(resultset.next()){
                String activo=resultset.getString("activo");
                if(activo.equals("true")){
                    return true;
                }else{
                    return false;
                }
            }else{
                return false;
            }
        } catch (SQLException ex) {
            System.out.println("No se pudo recuperar el activo del trabajador" + ex);
            return false;
        }
    }
    //*****************************************************************************************************
    //*************************************************Getters*********************************************
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
    public String getCargo(int idTrabajador){
        try {
            resultset=null;
            resultset=statement.executeQuery("select cargo from trabajador t, cargo c where t.idTrabajador ="+idTrabajador+" and t.idcargo=c.idcargo;");
            if(resultset.next()){
                return resultset.getString("cargo");
            }else{
                System.out.println("Error al obtener cargo");
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener cargo " +ex);
            return null;
        }
    }
    public ResultSet getCargos(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select cargo from cargo;");
            if(resultset.next()){
                return resultset;
            }else{
                System.out.println("Error al obtener cargos");
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener cargos " +ex);
            return null;
        }
    }
    public int getidCargo(String cargo){
        try {
            resultset=null;
            resultset=statement.executeQuery("select idcargo from cargo where  cargo='"+cargo+"';");
            if(resultset.next()){
                return Integer.parseInt(resultset.getString("idcargo"));
            }else{
                System.out.println("Error al obtener idcargo");
                return -1;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener idcargo " +ex);
            return -1;
        }
    }
    public Trabajador getContrasenia(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select contrasenia from trabajador where noempleado = "+"'"+trabajador.getNoEmpleado()+"'"+";");
            if(resultset.next()){
                this.trabajador.setContrasenia(resultset.getString("contrasenia"));
                return trabajador;
            }else{
                System.out.println("Error al obtener contrasenia");
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener contrasenia " +ex);
            return null;
        }
    }
    public Trabajador getNombre(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select nombre from trabajador where noempleado = "+"'"+trabajador.getNoEmpleado()+"'"+";");
            if(resultset.next()){
                this.trabajador.setNombre(resultset.getString("nombre"));
                return trabajador;
            }else{
                System.out.println("Error al obtener nombre");
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener nombre " +ex);
            return null;
        }
    }
    public Trabajador getInformacionTrabajador(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select idTrabajador,noEmpleado,registro,nombre,"
                    + "fechaNacimiento,edad,correo,fechaContratacion,activo from trabajador where noempleado = "+"'"+trabajador.getNoEmpleado()+"'"+";");
            if(resultset.next()){
                this.trabajador.setIdTrabajador(Integer.parseInt(resultset.getString("idTrabajador")));
                this.trabajador.setNoEmpleado(Integer.parseInt(resultset.getString("noEmpleado")));
                this.trabajador.setRegistro(resultset.getString("registro"));
                this.trabajador.setNombre(resultset.getString("nombre"));
                this.trabajador.setFechaNacimiento(resultset.getString("fechaNacimiento"));
                this.trabajador.setEdad(Integer.parseInt(resultset.getString("edad")));
                this.trabajador.setCorreo(resultset.getString("correo"));
                this.trabajador.setFechaContratacion(resultset.getString("fechaContratacion"));
                this.trabajador.setActivo(resultset.getString("activo"));
                return trabajador;
            }else{
                System.out.println("Error al informacion de trabajador");
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener informacion de trabajador " +ex);
            return null;
        }
    }
    public String getEstadoInicial(){
        try {
            resultset=null;
            resultset=statement.executeQuery("select configuracionInicial from trabajador t, configuraciontrabajador c "
                    + "where t.noempleado = "+"'"+trabajador.getNoEmpleado()+"'"+" and t.idtrabajador = c.idtrabajador;");
            if(resultset.next()){
                return resultset.getString("configuracionInicial");
            }else{
                System.out.println("Error al obtener estado inicial");
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener estado inicial " +ex);
            return null;
        }
    }
    public int getIdTrabajador(Trabajador t){
        try {
            resultset=null;
            resultset=statement.executeQuery("select idtrabajador from trabajador where noEmpleado="+t.getNoEmpleado()+";");
            if(resultset.next()){
                return Integer.parseInt(resultset.getString("idtrabajador"));
            }else{
                return 0;
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener id de trabajador " +ex);
            return 0;
        }
    }
    //******************************************************************************************************************
    //*****************************************************Registradores************************************************
    public void nuevoTrabajador(Trabajador t){
        try {
            statement.execute("INSERT INTO trabajador " +
                    "(noEmpleado,idcargo)" +
                    "VALUES("
                    + "" + t.getNoEmpleado() + ","
                    + "" + getidCargo(t.getCargo()) + ");" );
        } catch (SQLException ex) {
            System.out.println("Error en crear nuevo trabajador"+ ex);
        }
    }
    public void registrarTrabajador(Trabajador t){
        try {         
            String sentencia = "UPDATE trabajador SET nombre='"+t.getNombre()+"', fechaNacimiento='"+t.getFechaNacimiento()+"',"
                    + " edad="+t.getEdad()+", correo='"+t.getCorreo()+"', contrasenia='"+t.getContrasenia()+"', "
                    + "registro='true' WHERE noEmpleado="+t.getNoEmpleado()+";";
            System.out.println(sentencia);
            statement.executeUpdate(sentencia);
        } catch (SQLException ex) {
            System.out.println("Error en registro de trabajador" + ex);
        }
    }
    public void iniciarConfiguracionTrabajador(int idTrabajador){
        try {
            statement.execute("INSERT INTO configuraciontrabajador " +
                    "(idTrabajador)" +
                    "VALUES("
                    + "" + idTrabajador + ");" );
        } catch (SQLException ex) {
            System.out.println("Error al iniciar configuracion de trabajador "+ ex);
        }
    }
    //******************************************************************************************************************
    //*******************************Eliminadores****************************************************************
    public void eliminarUsuario(Trabajador t){
        try {
            String sentencia = "UPDATE trabajador SET activo='false' WHERE noEmpleado="+t.getNoEmpleado()+";";
            System.out.println(sentencia);
            statement.executeUpdate(sentencia);
        } catch (SQLException ex) {
            System.out.println("Error al dar de baja trabajador" + ex);
        }
    }
    //************************************************************************************************************
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
