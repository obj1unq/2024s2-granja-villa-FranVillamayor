import wollok.game.*
import hector.*
import cultivos.*





class Aspersor {
    var property position = game.at(1, 1)
    const property posicionesLimitrofes = #{}

    /*method cargarPosiciones() {
        posicionesLimitrofes.add(arriba)
        posicionesLimitrofes.add(abajo) 
        posicionesLimitrofes.add(derecha)
        posicionesLimitrofes.add(izquierda)
    }*/

    method image() {
        return "aspersor.png"
    }
}
    /*method regarPlantas() { 
        self.cargarPosiciones()
        posicionesLimitrofes.forEach({posicion => posicion.cargarObjetos(self)})
        posicionesLimitrofes.forEach({posicion => posicion.activarRiego()})
    }
}

object arriba {

    const property objetosEnPosicion = #{} 

    method cargarObjetos(objeto) {
        objetosEnPosicion.add({game.getObjectsIn(self.position(objeto))})
    }
    method position(objeto) {
      return game.at(objeto.position(), objeto.position() + 10)
    }

    method activarRiego() {
        objetosEnPosicion.crecer()
    }
  
}

object abajo {
    const property objetosEnPosicion = #{}

    method cargarObjetos(objeto) {
        objetosEnPosicion.add({game.getObjectsIn(self.position(objeto))})
      
    }

    method position(objeto) {
      return game.at(objeto.position(), objeto.position() - 10)
    }

    method activarRiego() {
        objetosEnPosicion.crecer()
      
    }
  
}
object derecha {
    const property objetosEnPosicion = #{}

    method cargarObjetos(objeto) {
        objetosEnPosicion.add({game.getObjectsIn(self.position(objeto))}) 
    }

    method position(objeto) {
      return game.at(objeto.position() + 10, objeto.position())
    }

    method activarRiego() {
        objetosEnPosicion.crecer()
      
    }
  
}
object izquierda {
    const property objetosEnPosicion = #{}

    method cargarObjetos(objeto) {
        objetosEnPosicion.add({game.getObjectsIn(self.position(objeto))})
    }

    method position(objeto) {
      return game.at(objeto.position() - 10, objeto.position())
    }

    method activarRiego() {
        objetosEnPosicion.crecer()
      
    }
  
}
*/
