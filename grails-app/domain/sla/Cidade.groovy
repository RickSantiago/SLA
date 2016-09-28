package sla

class Cidade
{
    String nome
    String cep

    static constraints =
    {
        nome blank: false, nullable: false
        cep blank: true, nullable: true
    }
}
