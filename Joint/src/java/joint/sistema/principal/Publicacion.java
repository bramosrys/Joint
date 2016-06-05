package joint.sistema.principal;


public class Publicacion {
    private String titulo;
    private String contenido;
    private String urlImagen;

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public String getUrlImagen() {
        return urlImagen;
    }

    public void setUrlImagen(String urlImagen) {
        this.urlImagen = urlImagen;
    }

    public Publicacion(String titulo, String contenido, String urlImagen) {
        this.titulo = titulo;
        this.contenido = contenido;
        this.urlImagen = urlImagen;
    }
}
