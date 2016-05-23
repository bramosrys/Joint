package joint.sistema.auxiliares;

public class Cadena {
  public String quitarSaltos(String cadena) {
      cadena = cadena.replace(System.getProperty("line.separator"), "");
    return cadena;
  }
}
