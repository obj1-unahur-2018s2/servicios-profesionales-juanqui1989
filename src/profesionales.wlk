// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var property universidad
	
	
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var property universidad
	
	method provinciasDondePuedeTrabajar(){
		return #{universidad.provincia()}
	}
	method honorariosPorHora() {
		return universidad.honorariosRecomendados()
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	var provincias = #{}
	var honorariosPorHora
	
	method provinciasDondePuedeTrabajar(_provincias){
		provincias.addAll(_provincias)
	}
	method provinciasDondePuedeTrabajar() {
		return provincias
	}
	method honorariosPorHora(_valor) {
		honorariosPorHora = _valor
		
	}
	method honorariosPorHora() {
		return honorariosPorHora
	}
	
	
}
