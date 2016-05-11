package joint.sistema;

/**
 *
 * @author jdiaz
 */
public class Persona {
    private String nombre;
    private int edad;
    private String fechaNacimiento;
    private Telefono telefono;
    private String correo;
    private Direccion direccion;

    public Persona(String nombre, int edad, String fechaNacimiento, Telefono telefono, String correo, Direccion direccion) {
        this.nombre = nombre;
        this.edad = edad;
        this.fechaNacimiento = fechaNacimiento;
        this.telefono = telefono;
        this.correo = correo;
        this.direccion = direccion;
    }
    public Persona() {
        this.nombre = "";
        this.edad = 0;
        this.fechaNacimiento = "";
        this.telefono = null;
        this.correo = "";
        this.direccion = null;
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
    
}
