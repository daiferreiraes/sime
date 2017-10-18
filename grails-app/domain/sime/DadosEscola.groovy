package sime

class DadosEscola {

    String nome_Escola
    String estado
    String cidade
    String bairro
    String rua
    int numero
    int qnt_De_Salas
    int qnt_De_Alunos
    int qnt_De_Professores
    String tipo_De_Escola
    
    //TiposEscola tipo_De_Escola
    
    static constraints = {
      tipo_De_Escola (inList: ["-----------","Publica", "Estadual", "Particular"])  
    }
}
