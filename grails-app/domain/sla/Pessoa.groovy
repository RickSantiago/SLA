package sla

class Pessoa
{
    String nome
    String cpf
    String telefone
    String rg
    String enderecoDescricao
    String bairro
    String numero
    String cep
    String complemento
    Cidade cidade
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
        enderecoDescricao blank: false, nullable: false
        bairro blank: false, nullable: false
        numero blank: true, nullable: true
        cep blank: true, nullable: true
        complemento blank: true, nullable: true
        plano blank: true, nullable: true
    }
}
