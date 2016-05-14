package joint.sistema.auxiliares;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author jdiaz
 */
public class Edad {
    private int edad;
    private String fechaNacimiento;

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
    
    public int calcularEdad(String fecha){
    Date fechaNac=null;
        try {
            fechaNac = new SimpleDateFormat("dd/MM/yyyy").parse(fecha);
        } catch (Exception ex) {
            System.out.println("Error:"+ex);
        }
        Calendar fechaNacimiento = Calendar.getInstance();
        Calendar fechaActual = Calendar.getInstance();
        fechaNacimiento.setTime(fechaNac);
        int anio = fechaActual.get(Calendar.YEAR)- fechaNacimiento.get(Calendar.YEAR);
        int mes =(fechaActual.get(Calendar.MONTH)+1)- fechaNacimiento.get(Calendar.MONTH);
        int dia = fechaActual.get(Calendar.DATE)- fechaNacimiento.get(Calendar.DATE);
        if(mes<0 || (mes==0 && dia<0)){
            anio--;
        }
        return anio;
    }
}
