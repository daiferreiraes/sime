package sime

class Usuario {
    String nome
    String cargo
    String email
    String senha
    String validadarSenha

    static constraints = {

        nome(blank:false, nullable:false)
        cargo(unique:true, blank:false, nullable:false)
        email(blank:false, nullable:false)
        senha(blank:false, nullable:false)
        validadarSenha(blank:false, nullable:false, email:true)
    }

    String toString(){

        nome
    }
}
