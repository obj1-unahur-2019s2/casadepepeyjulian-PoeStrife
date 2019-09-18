import cosas.* 
import cuentasBancarias.*

object casaDePepeYJulian {
	const cosas = []
	method comprar(cosa){
		cosas.add(cosa)
	}
	method cantidadDeCosasCompradas(){
		cosas.size()
	}
	method tieneComida(){
		return cosas.any({c => c.esComida()})
	}
	method vieneDeEquiparse(){
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}
	method esDerrochona() {
		return cosas.sum({cosa => cosa.precio()}) >= 9000
	}
	method compraMasCara(){
		return cosas.max({ c => c.precio()})
	}
	method electrodomesticosComprados(){
		var listaFiltrada = cosas.filter({c => c.esElectrodomestico()})
		return listaFiltrada.asSet()
	}
	method malaEpoca(){
		cosas.all({c => c.esComida()})
	}
	method queFaltaComprar(lista){
		return (lista.asSet()).difference(cosas.asSet())
	} 
	method faltaComida(){
		var listaDeComida = cosas.filter({c => c.esComida()})
		return listaDeComida.size() < 2
	}
	method gastoEnComida(){
		var listaDeComida = cosas.filter({c => c.esComida()})
		return listaDeComida.sum({cosa => cosa.precio()})
	}
	method hayElectrodomesticosBaratos(){
		return self.electrodomesticosComprados().any({c => c.precio() < 3000})
	}
	method preciosDeElectrodomesticos(){
		return self.electrodomesticosComprados().map({c => c.precio()})	
	}
	method nivelEnAumento(){
		return cosas.last().precio().div(2) >= cosas.first().precio() 
	}
	method primeraComidaComprada(){
		return cosas.filter({c => c.esComida()}).first()
	}
	method gastar(importe){
		
	}
}