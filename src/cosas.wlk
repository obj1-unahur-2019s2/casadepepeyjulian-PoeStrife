object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object unKiloDeMilanesasRebozadas{
	var property precio = 260
	method precio() { return precio }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}
object botellaDeSalsaDeTomate{
	var property precio = 90
	method precio() { return precio }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}
object microondas {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object unKiloDeCebolla {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}
object computadora {
	method precio() { return 500 * dolar.cotizacion() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
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
}
object packRegalo {
	var property listaDeComponentes = []
	method agregarListaDeComponentes(lista){
		listaDeComponentes = lista
	}
	method precio() { return listaDeComponentes.sum() * 0.8 }
	method esComida() { return listaDeComponentes.all({c => c.esComida()}) }
	method esElectrodomestico() { return listaDeComponentes.any({c => c.esElectrodomestico()}) }
}