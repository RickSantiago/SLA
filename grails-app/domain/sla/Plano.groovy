package sla

class Plano {

    String nome
    Integer numero
    Date data_inicio
    Date data_pagamento
    Pessoa pessoa

    static hasMany = [pagamento: Pagamento]

    static constraints =
    {
        numero blank:false, nullabe: false
        data_inicio blank: false, nullable: false
        data_pagamento blank: false, nullable: false

    }
    String toString()
    {
        "${this.nome}"
    }
}
