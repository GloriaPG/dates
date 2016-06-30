package dates

class Cliente extends User {
    String nombre
    String apellidos
    String telefono
    String email
    boolean activo=true
    static constraints = {
        email email: true
    }
}
