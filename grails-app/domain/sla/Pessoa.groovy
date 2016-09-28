package sla

class Pessoa
{
    String nome
    String cpf
    String telefone
    String rg
    Endereco endereco
    Plano plano

    String toString()
    {
        "${this.nome}"
    }

    static constraints =
    {
        nome blank: false, nullable: false
        cpf blank: false, nullable: false
        rg blank: false, nullable: false
    }
}
