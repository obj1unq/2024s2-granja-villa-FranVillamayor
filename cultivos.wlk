import hector.*
import wollok.game.*

class Maiz {
	var property position = game.at(1, 1)
	var  property etapa = "baby"

	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return "corn_" + etapa + ".png"
	}
	method crecer() {
		self.etapa("adult")
	}

	method puedeSerCosechada() {
	  return self.etapa() == "adult"
	}

	method cosechada() {
		game.removeVisual(self)
	}

	method oroPorVenta() {
		return 150
	}

}

class Trigo {
	var property position = game.at(1, 1)
	var property evolucion = 0

	method image() {
		return "wheat_" + evolucion.toString() + ".png"
	} 

	method crecer() {
		return if(evolucion == 3){
			self.evolucion(0)
		} else{ self.evolucion(evolucion + 1)}
	  
	}

	method puedeSerCosechada() {
		return self.evolucion() >= 2 
	}

	method cosechada() {
		game.removeVisual(self)
	}

	method oroPorVenta() {
		return (evolucion - 1) * 100
	}
}

class Tomato {
	var property position = game.at(1, 1)

	method image() {
		return "tomaco.png"
	  
	}

	method crecer() {
		position = game.at(position.x(), self.esBordeSuperior(position.y()))
	  
	}

	method esBordeSuperior(positionY) {
		return if(positionY == game.height()-1){
			positionY
		} else{
			positionY + 1
		}
	  
	}

	method puedeSerCosechada() {
	  return true
	}

	method cosechada() {
		game.removeVisual(self)
	}

	method oroPorVenta() {
		return 80
	}
  
}