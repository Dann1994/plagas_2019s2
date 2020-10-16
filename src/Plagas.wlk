class Plaga {
	var property poblacion 
	
	method nivelDeDanio() = poblacion 
	method transmiteEnfermedades() = poblacion >= 10
	method atacarElemento(unElemento) { 
		poblacion += poblacion * 0.1 
		unElemento.recibirAtaqueDePlaga(self)
	}
}


class PlagaDeCucarachas inherits Plaga {
	var pesoPormedio 
	
	override method nivelDeDanio() = super() / 2
	override method transmiteEnfermedades() = super() && pesoPormedio >= 10
	override method atacarElemento(unElemento) { super(unElemento) pesoPormedio += 2 }
}

class PlagaDeMozquitos inherits Plaga {
	override method transmiteEnfermedades() = super() &&  poblacion % 3 == 0 
}

class PlagaDePulgas inherits Plaga {	
	override method nivelDeDanio() = super() * 2
}

class PlagaDeGarrapatas inherits PlagaDePulgas {
	override method atacarElemento(unElemento) { 
		super(unElemento) 
		poblacion += poblacion * 0.1 
	} 
}



