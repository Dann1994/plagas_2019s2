import elementos.*

class Barrio {
	const elementos = []
	
	method elementosBuenos() = elementos.filter({ elemento => elemento.esBueno() })
	method elementosNoBuenos() = elementos.filter({ elemento => not elemento.esBueno() })
	method esCopado() = self.elementosBuenos().size() > self.elementosNoBuenos().size()
}
