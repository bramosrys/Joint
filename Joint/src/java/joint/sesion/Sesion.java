package joint.sesion;

import joint.sistema.principal.Trabajador;

/**
 *
 * @author jdiaz
 */
public class Sesion {
    private Trabajador trabajador;

    public Sesion(Trabajador trabajador) {
        this.trabajador = trabajador;
    }

    public Trabajador getTrabajador() {
        return trabajador;
    }

    public void setTrabajador(Trabajador trabajador) {
        this.trabajador = trabajador;
    }
    
}

