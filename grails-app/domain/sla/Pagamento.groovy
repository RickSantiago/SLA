package sla

class Pagamento
{
    float valor
    Meses meses

    static hasMany = [meses : Meses]

    static constraints =
    {
        valor blank: false, nullable: true
    }
}
