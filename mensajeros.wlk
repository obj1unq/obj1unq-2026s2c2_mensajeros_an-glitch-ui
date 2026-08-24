// ========================== PAQUETES ============================
object paquete{
	//var destino = null    // laMatrix
	var estaPagado = false


	method estaPagado() = estaPagado

	method pagar(){
		estaPagado = true
	}

	//method precio() = destino.precio()

	method precioHacia(destino) = destino.precio()

	//method puedeSerEntregadoPor(empleado) = estaPagado && destino.reestriccionDe(empleado)

	method puedeSerEntregadoPorA(empleado, destino) = estaPagado && destino.reestriccionDe(empleado)

	//method destinoA(_destino){
	//	destino = _destino
	//}
}

// ===================== DESTINOS =======================
object laMatrix{
	method precio() = 500

    method reestriccionDe(empleado) = empleado.puedeLlamar()
}

object puenteDeBrooklyn{
	method precio() = 150

    method reestriccionDe(empleado) = empleado.peso() < 1000
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
	var vehiculo = null   //laMatrix
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