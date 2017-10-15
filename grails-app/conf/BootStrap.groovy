import autenticacao.Administrador
import autenticacao.AdministradorRegra
import autenticacao.Regra

class BootStrap {

    def init = { servletContext ->

        //criacao do usuario em tempo de execucao
        def adminUsuario = Administrador.findByUsername('admin') ?: new Administrador(
                username: 'admin',
                password: 'admin',
                enabled: true
        ).save(failOnError: true)

        def regraAdmin = Regra.findByAuthority('REGRA_ADMIN') ?: new Regra (authority:'REGRA_ADMIN').save(failOnError:true)

        def regrausuario = Regra.findByAuthority('REGRA_USUARIO') ?: new Regra(authority:'REGRA_USUARIO').save(failOnError:true)

        if (!adminUsuario.authorities.contains(regraAdmin)){
            AdministradorRegra.create(adminUsuario,regraAdmin)
        }

    }
    def destroy = {
    }
}
