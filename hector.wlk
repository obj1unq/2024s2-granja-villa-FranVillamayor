import wollok.game.*
import cultivos.*
import aspersores.*


object hector {
	var property position = game.center()
	const property image = "player.png"
	const property cultivos = #{}
	const property plantasCosechadas = #{}
	var property oro = 0
	const property aspersores = #{}

	/*method activarAspersores() {
		aspersores.forEach({aspersor => aspersor.regarPlantas()})
	}*/

	method colocaAspersor() {
		self.dejarAspersor(new Aspersor(position = self.position()))
	}

	method dejarAspersor(aspersor) {
		game.addVisual(aspersor)
		aspersores.add(aspersor)
	}

	method vender() {
		oro =+ plantasCosechadas.sum({planta => planta.oroPorVenta()})
		plantasCosechadas.clear()
	}

	method cosechar() {
		self.hayPlantaParaCosechar()
		plantasCosechadas.addAll(self.cultivosListosParaCosechar())
		cultivos.removeAll(self.cultivosListosParaCosechar())
		plantasCosechadas.forEach({planta => planta.cosechada()})
	}

	method cultivosListosParaCosechar() {
		return self.hayPlanta().filter({planta => planta.puedeSerCosechada()})	  
	}

	method hayPlantaParaCosechar() {
		if (self.hayPlanta().isEmpty()){
			self.error("No tengo nada para cosechar")
		}
	}

	method sembrarMaiz() {
		self.sembrar(new Maiz(position = self.position()))
	}

	method sembrarTrigo() {
		self.sembrar(new Trigo(position = self.position()))
	}

	method sembrarTomato() {
		self.sembrar(new Tomato(position = self.position()))
	}

	method sembrar(cultivo) {
	    game.addVisual(cultivo)
		cultivos.add(cultivo)
	}

	method regar() {
		self.validarSiHayPlanta()
		self.regarCultivo()

	}

	method regarCultivo() {
		self.hayPlanta().forEach({planta => planta.crecer()})
	  
	}

	method validarSiHayPlanta() {
		if (self.hayPlanta().isEmpty()){
			self.error("No tengo nada para regar")
		}
	  
	}

	method hayPlanta() {
		return cultivos.filter({planta => planta.position() == self.position()})
    }

}