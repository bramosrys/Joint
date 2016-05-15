package joint.sistema.principal;

/**
 *
 * @author jdiaz
 */
public class Telefono {
    private int casa;
    private int celular;

    public Telefono(int casa, int celular) {
        this.casa = casa;
        this.celular = celular;
    }

    public int getCasa() {
        return casa;
    }

    public int getCelular() {
        return celular;
    }

    public void setCasa(int casa) {
        this.casa = casa;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }
    
}
