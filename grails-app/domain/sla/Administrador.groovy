package sla

class Administrador
{
    String nome
    String cpf
    String telefone
    String email
    String senha

    String toString()
    {
        "${this.nome}"
    }
    static constraints =
    {
        nome blank: false, nullable: false
        cpf blank: false, nullable: false
        email blank: false, nullable: false
        senha blank: false, nullable: false
    }
}
