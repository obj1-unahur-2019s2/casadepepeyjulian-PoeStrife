object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
	method hayUnObjeto(cosa){return (self == cosa)}
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }
	method hayUnObjeto(cosa){return (self == cosa)}	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
	method hayUnObjeto(cosa){return (self == cosa)}	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
	method hayUnObjeto(cosa){return (self == cosa)}
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
	method hayUnObjeto(cosa){return (self == cosa)}
}
object unKiloDeMilanesasRebozadas{
	var property precio = 260
	method precio() { return precio }
	method esComida() { return true }
	method esElectrodomestico() { return false }
	method hayUnObjeto(cosa){return (self == cosa)}
}
object botellaDeSalsaDeTomate{
	var property precio = 90
	method precio() { return precio }
	method esComida() { return true }
	method esElectrodomestico() { return false }
	method hayUnObjeto(cosa){return (self == cosa)}
}
object microondas {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
	method hayUnObjeto(cosa){return (self == cosa)}
}
object unKiloDeCebolla {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
	method hayUnObjeto(cosa){return (self == cosa)}
}
object computadora {
	method precio() { return 500 * dolar.cotizacion() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
	method hayUnObjeto(cosa){return (self == cosa)}
}
object dolar{
	var property cotizacion = 58
}
object packComida {
	var property aderezo = null
	var property plato = null
	method plato(unaComida){
		plato = unaComida
	}
	method aderezo(unAderezo){
		aderezo = unAderezo
	}
	method precio() { return plato.precio() + aderezo.precio() }
	method esComida() { return true }
	method esElectrodomestico() { return false }
	method hayUnObjeto(cosa){return plato == cosa or aderezo == cosa}
}
object packRegalo {
	var property listaDeComponentes = []
	method agregarListaDeComponentes(lista){
		listaDeComponentes = lista
	}
	method precio() { return listaDeComponentes.sum() * 0.8 }
	method esComida() { return listaDeComponentes.all({c => c.esComida()}) }
	method esElectrodomestico() { return listaDeComponentes.any({c => c.esElectrodomestico()}) }
	method hayUnObjeto(cosa){return listaDeComponentes.any({objeto => cosa == objeto})}
}