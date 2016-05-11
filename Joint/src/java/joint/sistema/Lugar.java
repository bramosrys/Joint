package joint.sistema;

public class Lugar {
    private double x;
    private double y;
    public Lugar(){
        x=0.0;
        y=0.0;
    }
    public Lugar(double x, double y){
        this.x=x;
        this.y=y;
    }
    public Lugar(Lugar l){
        x=l.x;
        y=l.y;
    }
    public void setX(double x){
        this.x=x;
    }
    public double getX(){
        return x;
    }
     public void setY(double y){
        this.y=y;
    }
    public double getY(){
        return y;
    }
}
