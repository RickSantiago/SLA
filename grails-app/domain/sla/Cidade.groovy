package sla

class Cidade
{
    String nome
    String cep

    static hasMany = [pessoa:Pessoa]

    static constraints =
    {
        nome blank: false, nullable: false, inList: ["Palmas","Miracema","Tocantinia","Miranorte","Rio Dos Bois"]
        cep blank: true, nullable: true
    }
    String toString()
    {
        "${this.nome}"
    }
}
