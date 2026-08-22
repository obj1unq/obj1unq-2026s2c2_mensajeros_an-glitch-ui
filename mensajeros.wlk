// ========================== PAQUETES ============================
object paquete{
	var destino = null
	var estaPagado = false


	method estaPagado() = estaPagado

	method pagar(){
		estaPagado = true
	}

	method precio(){
		return destino.precio()
	}

	method puedeSerEntregadoPor(empleado){
		return estaPagado && destino.reestriccionDe(empleado)
	}

	method destinoA(_destino){
		destino = _destino
	}
}

// ===================== DESTINOS =======================
object laMatrix{
	method precio() = 500

    method reestriccionDe(empleado){
        return empleado.puedeLlamar()
    }
}

object puenteDeBrooklyn{
	method precio() = 150

    method reestriccionDe(empleado){
        return empleado.peso() < 1000
    }
}

// ==================== EMPLEADOS =====================
object neo {
	var puedeLlamar = true

	method peso() = 0

	method creditoNegativo() {
		puedeLlamar = false
	}
}

object jeanGray {
	method peso() = 65
	method puedeLlamar() = true
}

object saraConnor {
	var vehiculo = null
	var peso = 0


	method peso() = peso + vehiculo.peso()

	method peso(_peso) {
		peso = _peso
	}

	method puedeLlamar() = false

	method vehiculo(_vehiculo) {
		vehiculo = _vehiculo
	}
}

// ==================== VEHICULOS =====================
object auto {
	method peso() = 100
}

object camion {
	var cantAcoplados = 0


	method peso() = if(cantAcoplados == 0){
		500
	} else{
		500 + (cantAcoplados * 500)
	}

	method acoplados(cant) {
		cantAcoplados = cant
	}
}