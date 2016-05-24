package joint.sistema.principal;

/**
 *
 * @author jdiaz
 */
public class Viaje {
    private Direccion direccion;
    private String fechaSalida;
    private String fechaLlegada;
    private int kilometraje;
    private String horaSalida;
    private String horaLlegada;
    private Trabajador chofer;
    private Trabajador despachador;

    public Viaje(Direccion direccion, String fechaSalida, String fechaLlegada, int kilometraje, String horaSalida, String horaLlegada, Trabajador chofer, Trabajador despachador) {
        this.direccion = direccion;
        this.fechaSalida = fechaSalida;
        this.fechaLlegada = fechaLlegada;
        this.kilometraje = kilometraje;
        this.horaSalida = horaSalida;
        this.horaLlegada = horaLlegada;
        this.chofer = chofer;
        this.despachador = despachador;
    }
    
    
    public Direccion getDireccion() {
        return direccion;
    }

    public void setDireccion(Direccion direccion) {
        this.direccion = direccion;
    }

    public String getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(String fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public String getFechaLlegada() {
        return fechaLlegada;
    }

    public void setFechaLlegada(String fechaLlegada) {
        this.fechaLlegada = fechaLlegada;
    }

    public int getKilometraje() {
        return kilometraje;
    }

    public void setKilometraje(int kilometraje) {
        this.kilometraje = kilometraje;
    }

    public String getHoraSalida() {
        return horaSalida;
    }

    public void setHoraSalida(String horaSalida) {
        this.horaSalida = horaSalida;
    }

    public String getHoraLlegada() {
        return horaLlegada;
    }

    public void setHoraLlegada(String horaLlegada) {
        this.horaLlegada = horaLlegada;
    }

    public Trabajador getChofer() {
        return chofer;
    }

    public void setChofer(Trabajador chofer) {
        this.chofer = chofer;
    }

    public Trabajador getDespachador() {
        return despachador;
    }

    public void setDespachador(Trabajador despachador) {
        this.despachador = despachador;
    }
    
}
