package dates

class Cita {
    Date fecha
    Date fechaInicio
    Date fechaFin
    String hora
    boolean finalizada
    Especialista especalista
    Especialidad servicio
    Cliente cliente
    String comentario
    TipoCita tipo

    static constraints = {
        hora validator:  { value ->
            return value.matches(/^((([1-9])|(1[0-2])):([0-5])(0|5)\s(A|P)M)$/)
        }
    }
}
