import chicos.*


object huevoRepostero {
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
    method calorias() = 750  
}

object huevoMixto {
    method esDeChocolateBlanco() = true 
    method esDeChocolateAmargo() = false
    method calorias() = 900  
}

object conejo {
    var peso = 10
    method peso(unPeso) {
    peso = unPeso
    }
    method esDeChocolateBlanco() = false
    method esDeChocolateAmargo() = true 
    method calorias() = peso * 10  
}

object blisterHuevitos {
    var huevitos = 0
    method huevitos(unNumero){
        huevitos = unNumero
    }
    method esDeChocolateBlanco() = huevitos >= 5
    method esDeChocolateAmargo() = false
    method calorias() = huevitos * 100 + huevitos.div(5) * 150
}

object matrioshka {
    var huevoEnInterior = huevoMixto
    method huevoEnInterior(unHuevo) {
      huevoEnInterior = unHuevo
    }
    var decoracion = flor
    method esDeChocolateBlanco() = huevoEnInterior.esDeChocolateBlanco() 
    method esDeChocolateAmargo() = true
    method calorias() = 3000 + huevoEnInterior.calorias() + decoracion.calorias()  
}

object flor {
    var petalos = 3
    method petalos(unNumero) {
      petalos = unNumero
    }
    method calorias() = 100 * petalos 
}

object arbol {
    method calorias() = 150 
}