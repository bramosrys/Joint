package joint.sistema.principal;

/**
 *
 * @author jdiaz
 */
public class Trabajador extends Persona{
   
    private int noEmpleado;
    private int idTrabajador;
    private String activo;
    private String cargo;
    private String fechaContratacion;
    private String contrasenia;
    private String registro;
    public Trabajador(int noEmpleado, String cargo, String fechaContratacion, String contrasenia, String nombre, int edad, String fechaNacimiento, Telefono telefono, String correo, Direccion direccion) {
        super(nombre, edad, fechaNacimiento, telefono, correo, direccion);
        this.noEmpleado = noEmpleado;
        this.cargo = cargo;
        this.fechaContratacion = fechaContratacion;
        this.contrasenia = contrasenia;
    }
    public Trabajador(int noEmpleado){
         this.noEmpleado = noEmpleado;
    }
    public Trabajador(int noEmpleado,String cargo){
         this.noEmpleado = noEmpleado;
         this.cargo=cargo;
    }
    public Trabajador(){
        this.noEmpleado =0;
        this.cargo ="";
        this.fechaContratacion ="";
        this.contrasenia ="";
    }
    public Trabajador(int noEmpleado,String nombre, int edad, String correo, String contrasenia, String fechaNacimiento){
        super(nombre,edad,correo,fechaNacimiento);
        this.noEmpleado =noEmpleado;
        this.contrasenia =contrasenia;
    }
    public int getIdTrabajador() {
        return idTrabajador;
    }

    public void setIdTrabajador(int idTrabajador) {
        this.idTrabajador = idTrabajador;
    }

    public String getActivo() {
        return activo;
    }

    public void setActivo(String activo) {
        this.activo = activo;
    }
    public int getNoEmpleado() {
        return noEmpleado;
    }

    public String getCargo() {
        return cargo;
    }

    public String getFechaContratacion() {
        return fechaContratacion;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setNoEmpleado(int noEmpleado) {
        this.noEmpleado = noEmpleado;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public void setFechaContratacion(String fechaContratacion) {
        this.fechaContratacion = fechaContratacion;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }
    public void destruirTrabajador(){
        noEmpleado=0;
        cargo=null;
        fechaContratacion=null;
        contrasenia=null;
        System.gc();
    }

    public String getRegistro() {
        return registro;
    }

    public void setRegistro(String registro) {
        this.registro = registro;
    }
    
}
