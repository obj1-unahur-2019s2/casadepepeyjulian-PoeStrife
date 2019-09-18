object cuentaCorriente {
	var saldo = 0
	method depositar(importe){
		saldo += importe
	}
	method extraer(importe){
		saldo = 0.max (saldo - importe)
	}
	method saldo(){
		return saldo
	}
	
}
object cuentaConGastos{
	var saldo = 0
	method depositar(importe){
		saldo += importe - 20
	}
	method extraer(importe){
		if (importe <= 1000) {saldo = 0.max (saldo - importe + 20)}
		else {saldo = 0.max (saldo - importe.div(50)) }
	}
	method saldo(){
		return saldo
	}
}
object cuentaCombinada{
	var cuentaPrimaria 
	var cuentaSecundaria 
	method miCuentaPrimariaEs(cuenta){cuentaPrimaria = cuenta}
	method miCuentaSecundariaEs(cuenta){cuentaSecundaria = cuenta}
	method depositar(importe){
		cuentaPrimaria.depositar(importe)
	}
	method extraer(importe){
		if (importe <= cuentaPrimaria.saldo()){
			cuentaPrimaria.extraer(importe)
		}
		else{ cuentaSecundaria.extraer(importe)}
	}
	method saldo(){
		return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
	}
	
}