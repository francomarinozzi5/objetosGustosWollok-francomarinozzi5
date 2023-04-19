import Gustos.*

object bolichito{
	var objetoEnMostrador 
	var objetoEnVidriera 
	
	method esBrillante(){
		return (objetoEnMostrador.material().brilla() == false) and (objetoEnVidriera.material().brilla() == false) 
	}
	
	method esMonocromatico(){
		return (objetoEnMostrador.color() == objetoEnVidriera.color())
	}
	
	method estaDesequilibrado(){
		return objetoEnMostrador.peso() > objetoEnVidriera.peso()
	}
	
	method tieneAlgoDeColor(color){
		return (objetoEnMostrador.color() == color) || (objetoEnVidriera.color() == color)
	}
	
	method puedeMejorar(){
		return self.esMonocromatico() || self.estaDesequilibrado()
	}
	
	method puedeOfrecerAlgoA(persona){
		return persona.leGusta(objetoEnMostrador)|| persona.leGusta(objetoEnVidriera)
	}
	
	method setObjetoMostrador(objeto){
		objetoEnMostrador = objeto
	}
	
	method setObjetoVidriera(objeto){
		objetoEnVidriera = objeto
	}
}