import chicos.*
import huevosDePascua.*

object caceria {
    const huevosEncontrados = []
    const huevosNoEncontrados = []

    method inicializarJuego() {
        blisterHuevitos.huevitos(14)
        matrioshka.huevoEnInterior(blisterHuevitos)
        huevosNoEncontrados.addAll(matrioshka, blisterHuevitos, huevoRepostero, conejo, huevoMixto)
        flor.petalos(7)
    }

    method cantidadPorEncontrar() = huevosNoEncontrados.size()
    method cuantosConChocoBlanco() = huevosNoEncontrados.count({h=> h.esDeChocolateBlanco()})  
    method aunNoFueEncontrado(unHuevo) = huevosNoEncontrados.contains(unHuevo)

    method encontrarUnHUevoPor_(unChico,unHuevo) {
        unChico.comerHuevo(unHuevo)
        huevosNoEncontrados.remove(unHuevo)
        huevosEncontrados.add(unHuevo)    
    } 




}