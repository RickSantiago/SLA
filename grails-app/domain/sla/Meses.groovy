package sla

class Meses
{
    String nome

//    static hasMany = [pagamento:Pagamento]

    static constraints =
    {
        nome blank: false, nullable: false, inList: ["Janeiro", "Fevereiro","Março","Abril","Maio","Junho",
                      "Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"]
    }
    String toString()
    {
        "${this.nome}"
    }
}
