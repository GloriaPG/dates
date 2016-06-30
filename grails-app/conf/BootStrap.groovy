import dates.Cliente
import dates.Especialista
import dates.Role
import dates.User
import dates.UserRole

class BootStrap {

    def init = { servletContext ->
        def rolEspecialista=new Role(authority: "ROLE_ESPECIALISTA").save(flush:true,failOnError: true)
        def rolCliente=new Role(authority: "ROLE_CLIENTE").save(flush:true,failOnError: true)
        def rolAdmin=new Role(authority: "ROLE_ADMIN").save(flush: true,failOnError: true)
        Especialista especialista=new Especialista(
                nombre: "Especialista uno",
                apellidos: "Del valle",
                telefono: "51410",
                username: "especialista",
                password: "admin"
        ).save(flush: true,failOnError: true)
        Cliente cliente=new Cliente(
                nombre: "Cliente uno",
                apellidos: "Del valle",
                telefono: "51410",
                username: "cliente",
                password: "admin",
                email: "gp@vincoorbis.com"
        ).save(flush: true,failOnError: true)
        User admin= new User(
                username: "admin",
                password: "admin"
        ).save(flush: true,failOnError: true)

        new UserRole(role: rolEspecialista,user: especialista).save(flush: true, failOnError: true)
        new UserRole(role: rolCliente, user: cliente).save(flush: true,failOnError: true)
        new UserRole(role: rolAdmin,user: admin).save(flush: true, failOnError: true)
    }
    def destroy = {
    }
}
