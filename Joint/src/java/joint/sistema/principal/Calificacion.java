package joint.sistema.principal;

/**
 *
 * @author jdiaz
 */
public class Calificacion {
   private int idCalificacion;
   private String fecha;
   private String tipoCalificacion;
   private int valor;
   private String comentario;

    public Calificacion(int idCalificacion, String fecha, String tipoCalificacion, int valor, String comentario) {
        this.idCalificacion = idCalificacion;
        this.fecha = fecha;
        this.tipoCalificacion = tipoCalificacion;
        this.valor = valor;
        this.comentario = comentario;
    }

    public Calificacion(int idCalificacion) {
        this.idCalificacion = idCalificacion;
    }

    public Calificacion(String fecha, String tipoCalificacion, int valor, String comentario) {
        this.fecha = fecha;
        this.tipoCalificacion = tipoCalificacion;
        this.valor = valor;
        this.comentario = comentario;
    }

    public int getIdCalificacion() {
        return idCalificacion;
    }

    public void setIdCalificacion(int idCalificacion) {
        this.idCalificacion = idCalificacion;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getTipoCalificacion() {
        return tipoCalificacion;
    }

    public void setTipoCalificacion(String tipoCalificacion) {
        this.tipoCalificacion = tipoCalificacion;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
}
