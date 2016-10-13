package sla

class Endereco
{
    String descricao
    String bairro
    String numero
    String cep
    String complemento
    Pessoa pessoa
    Cidade cidade

    String toString()
    {
        "${this.descricao}"
    }

    static constraints =
    {
        descricao blank: false, nullable: false
        bairro blank: false, nullable: false
        numero blank: true, nullable: true
        cep blank: true, nullable: true
        complemento blank: true, nullable: true
    }
}
