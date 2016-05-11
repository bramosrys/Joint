package joint.sistema;

/**
 *
 * @author jdiaz
 */
public class Trabajador {
    private String nombre;
    private int edad;
    private String fechaNacimiento;
    private Telefono telefono;
    private String correo;
    private Direccion direccion;
    private int noEmpleado;
    private String cargo;
    private String fechaContratacion;
    private String contrasenia;

    public Trabajador(String nombre, int edad, String fechaNacimiento, Telefono telefono, String correo, Direccion direccion, int noEmpleado, String cargo, String fechaContratacion, String contrasenia) {
        this.nombre = nombre;
        this.edad = edad;
        this.fechaNacimiento = fechaNacimiento;
        this.telefono = telefono;
        this.correo = correo;
        this.direccion = direccion;
        this.noEmpleado = noEmpleado;
        this.cargo = cargo;
        this.fechaContratacion = fechaContratacion;
        this.contrasenia = contrasenia;
    }

    public String getNombre() {
        return nombre;
    }

    public int getEdad() {
        return edad;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public Telefono getTelefono() {
        return telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public Direccion getDireccion() {
        return direccion;
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

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public void setTelefono(Telefono telefono) {
        this.telefono = telefono;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setDireccion(Direccion direccion) {
        this.direccion = direccion;
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
