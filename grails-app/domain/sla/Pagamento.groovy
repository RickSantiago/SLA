package sla

class Pagamento
{
    float valor
    Meses meses

    static hasMany = [plano:Plano]

    static constraints =
    {
        valor blank: false, nullable: true
    }
}
