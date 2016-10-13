package sla

class Cidade
{
    String nome
    String cep

    static hasMany = [endereco:Endereco]

    static constraints =
    {
        nome blank: false, nullable: false
        cep blank: true, nullable: true
    }
    String toString()
    {
        "${this.nome}"
    }
}
