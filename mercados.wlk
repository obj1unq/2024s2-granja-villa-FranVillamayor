import wollok.game.*




class Mercado{
    var property position = game.at(1, 1)
    var property oro = 5000
    const property mercaderia = #{} 

    method comprar(plantas) {
        self.validarComprar(plantas)
        self.comprarTodas(plantas)
      
    }

    method comprarTodas(listaDePlantas) {
        mercaderia.addAll(listaDePlantas)
        oro -= self.oroPorCompra(listaDePlantas)
    }
    method image() {
      return "market.png"
    }

    method validarComprar(listaDePlantas) {
        if(oro < self.oroPorCompra(listaDePlantas)){
            self.error("No tengo suficiente oro para comprar las plantas")
        }
    }

    method oroPorCompra(listaDePlantas) {
      return listaDePlantas.sum({planta => planta.oroPorVenta()})
    }
}