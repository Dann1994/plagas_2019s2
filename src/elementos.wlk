import Plagas.*

class Hogar {
	var nivelDeMugre 
	var confort 
	
	method esBueno() = nivelDeMugre <= confort / 2
	method recibirAtaqueDePlaga(unaPlaga) { nivelDeMugre += unaPlaga.nivelDeDanio() }
	
}

object produccion {
	var property nivelDeProduccion = 100
}

class Huerta {
	var property capacidadDeProduccion
	
	method esBueno() = 
	    capacidadDeProduccion > produccion.nivelDeProduccion()
	method recibirAtaqueDePlaga(unaPlaga) { 
		capacidadDeProduccion -= unaPlaga.nivelDeDanio() * 0.1
		if (unaPlaga.transmiteEnfermedades()) { capacidadDeProduccion -= 10 }
	}
}

class Mascota {
	var salud
	
	method esBueno() = salud > 250
	method recibirAtaqueDePlaga(unaPlaga) { 
		if (unaPlaga.transmiteEnfermedades()) { salud -= unaPlaga.nivelDeDanio() } 
		
		}
} 