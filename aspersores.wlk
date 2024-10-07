import wollok.game.*
import hector.*
import cultivos.*





class Aspersor {
    var property position = game.at(1, 1)
    const property posiciones = #{}

    method initialize() {
        self.cargarPosiciones()
    }

    method image() {
        return "aspersor.png"
    }

    method regarPlantas(listaDeCultivos) {
        posiciones.forEach({pos => self.regarPosicion(listaDeCultivos, pos)}) 
    }

    method regarPosicion(listaDeCultivos, pos) {
        listaDeCultivos.filter({planta => planta.position() == pos})
                        .forEach({planta => planta.crecer()})
    }

    method cargarPosiciones() {
        posiciones.add(position.up(1))
        posiciones.add(position.right(1))
        posiciones.add(position.left(1))
        posiciones.add(position.down(1))
      
    }
}

