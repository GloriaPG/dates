package dates

class Especialista extends User{
    String nombre
    String apellidos
    String telefono
    String comentarios
    boolean disponible=true
    static constraints = {
        comentarios blank: true, nullable: true
    }
}
