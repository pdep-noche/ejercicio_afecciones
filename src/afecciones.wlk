object sara {
	
	var peso = 55
	var vitalidad = 90
	var temperatura = 37
	
	method afectadaPor(algo) {
		algo.afectarA(self)		
	}	
	
	method modificarTemperatura(cantidad) {
		temperatura += cantidad
	}
	
	method modificarVitalidad(cantidad){
		vitalidad += cantidad
	}
	
	method modificarPeso(cantidad) {
		peso += cantidad
	}
	
	method peso() = peso
	
	method temperatura() = temperatura
	
	method temperatura(cantidad) {
		temperatura = cantidad
	}
	
	method vitalidad() = vitalidad
}



object malaria{
	method afectarA(alguien) {
		alguien.modificarTemperatura(3)
	}
}

object varicela {
	method afectarA(alguien) {
		alguien.modificarVitalidad(-5)
		alguien.modificarPeso(alguien.peso()* -0.1)
	}
}

object paracetamol {
	method afectarA(alguien) {
		if(alguien.temperatura() > 37){
			alguien.temperatura(37)
		}
	}
}

object polen {
	
	var gramos = 10
	method afectarA(alguien) {
		alguien.modificarVitalidad(gramos*0.1)
	}
}

object gripe {
	method afectarA(alguien){
		alguien.modificarVitalidad(alguien.vitalidad()*-0.2)
	}
}

object nuez {
	method afectarA(alguien){
		alguien.modificarVitalidad(alguien.vitalidad()*0.3)
	}
}
