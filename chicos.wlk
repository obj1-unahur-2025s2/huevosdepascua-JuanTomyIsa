import huevosDePascua.*

object ana {
    const huevosComidos = []
    method comerHuevo(unHuevo) {
      huevosComidos.add(unHuevo)
    }
    method estaEnfermx() {
        return
        self.comioMasDe5000() || self.hayAlgunoDeChocoBlanco()
    } 
    method comioMasDe5000() = huevosComidos.map({h=>h.calorias()}).sum()

    method hayAlgunoDeChocoBlanco() = huevosComidos.any({h=>h.esDeChocolateBlanco()}) 
}



object jose {
    var ultimoHuevoComido = huevoMixto
    method comerHuevo(unHuevo) {
        ultimoHuevoComido = unHuevo
    }
    method estaEnfermx() = ultimoHuevoComido.esDeChocolateAmargo() 
}

object tito {
    method comerHuevo(unHuevo) {} // por Polimorfismo
    method estaEnfermx() = false //por Polimorfismo
}