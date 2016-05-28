package joint.sistema.principal;

/**
 *
 * @author jdiaz
 */
public class Direccion {
    private String estado;
    private String colonia;
    private String calle;
    private String no;
    private int cp;
    private String delegacion;

    public Direccion(String calle,String estado, String colonia, String no, int cp, String delegacion) {
        this.calle=calle;
        this.estado = estado;
        this.colonia = colonia;
        this.no = no;
        this.cp = cp;
        this.delegacion = delegacion;
    }
    public Direccion(Direccion d){
        estado=d.estado;
        colonia=d.colonia;
        calle=d.calle;
        no=d.no;
        cp=d.cp; 
        delegacion=d.delegacion;
    }
    public void destruirDireccion(){
        estado=null;
        colonia=null;
        calle=null;
        no=null;
        delegacion=null;
        System.gc();
    }
    public String getEstado() {
        return estado;
    }

    public String getColonia() {
        return colonia;
    }

    public String getCalle() {
        return calle;
    }

    public String getNo() {
        return no;
    }

    public int getCp() {
        return cp;
    }

    public String getDelegacion() {
        return delegacion;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public void setCp(int cp) {
        this.cp = cp;
    }

    public void setDelegacion(String delegacion) {
        this.delegacion = delegacion;
    }
    
}
