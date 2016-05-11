package joint.sistema;

/**
 *
 * @author jdiaz
 */
public class Trabajador extends Persona{
   
    private int noEmpleado;
    private String cargo;
    private String fechaContratacion;
    private String contrasenia;

    public Trabajador(int noEmpleado, String cargo, String fechaContratacion, String contrasenia, String nombre, int edad, String fechaNacimiento, Telefono telefono, String correo, Direccion direccion) {
        super(nombre, edad, fechaNacimiento, telefono, correo, direccion);
        this.noEmpleado = noEmpleado;
        this.cargo = cargo;
        this.fechaContratacion = fechaContratacion;
        this.contrasenia = contrasenia;
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
    
}
