package sla

class Plano {

    String nome
    Integer numero
    Date data_inicio
    Date data_pagamento
    Pagamento pagamento

    static hasMany = [pagamento : Pagamento]

    static constraints =
    {
        nome blank: false, nullable: false
        numero blank:false, nullabe: false
        data_inicio blank: false, nullable: false
        data_pagamento blank: false, nullable: false

    }
}
