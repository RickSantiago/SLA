package sla

class Pagamento
{
    float valor
    String meses
    Plano plano

    static constraints =
    {
        valor blank: false, nullable: true
        meses inList: ["Janeiro", "Fevereiro","Março","Abril","Maio","Junho",
                              "Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"]
    }
}
