package sime

class Usuario {

    String nome
    String cargo
    String email
    String nomeUsuario
    String senha
    String confirmarSenha

    static constraints = {

        nome(blank:false, nullable:false)
        cargo(blank:false, nullable:false)
        email(blank:false, nullable:false, email:true)
        senha(blank:false, nullable:false, password: true)
        confirmarSenha(blank:false, nullable:false, password: true)
    }

    String toString(){

        nome
    }
}
