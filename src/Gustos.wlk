//Colores
object rojo { method esFuerte() { return true } }
object verde {    method esFuerte() {return true }}
object celeste {    method esFuerte() {return false}}
object pardo {    method esFuerte() {return false }}
object naranja {method esFuerte(){return true}}

//Materiales
object lino { method brilla() { return false } }
object vidrio { method brilla() { return true } }
object madera { method brilla() { return false }}
object cuero { method brilla() { return false}}
object cobre { method brilla(){ return true}}

//Objetos

object cajita{
	var objetoDentro
	method color(){return rojo}
	method material() {return cobre}
	method peso() {return 400 + objetoDentro.peso()}
	method setObjetoDentro(objeto){ objetoDentro = objeto}
}

object arito{
	method color() {return celeste}
	method material() {return cobre}
	method peso(){return 180}
}

object banquito{
	var color = naranja
	method color(){return color}
	method setColor(nuevoColor){ color = nuevoColor}
	method material(){return madera}
	method peso(){return 1700}
	
}
object remera {
	method color() { return rojo }
	method material() { return lino }
	method peso() { return 800 }
}

object pelota {
	method color() { return pardo}
	method material() { return cuero }
	method peso() {return 1300}    
}

object munieco {
	var peso 
	
	method color() { return celeste }
	method material() { return vidrio }
	method peso() { return peso }
	method setPeso(pesoNuevo) { peso = pesoNuevo }
}

object biblioteca {
  method color() {return verde}
  method material(){return madera}
  method peso(){return 8000}
}

object placa{
  var color
  var peso
  method color(){return color}
  method material(){return cobre}
  method peso(){return peso}
  method setPeso(pesoNuevo){ peso = pesoNuevo}
  method setColor(colorNuevo){color = colorNuevo}
}

//Personas
object estefania {
	method leGusta(objeto) { return objeto.color().esFuerte() }
}

object rosa {
	method leGusta(objeto) {return objeto.peso()<2000}  
}

object luisa {
  method leGusta(objeto){return objeto.material().brilla()}
}

object juan{
  method leGusta(objeto){return objeto.color().esFuerte() == false || (objeto.peso() > 1200 && objeto.peso() < 1800)}
}

