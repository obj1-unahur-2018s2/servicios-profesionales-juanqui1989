class Empresa {
	
	const profesionales = #{}
	var property honorarioDeReferencia
	
	
	method agregarProfessionales(_profesionales) {
		profesionales.addAll(_profesionales)
	}
	method profesionalesCaros() {
		return profesionales.filter({profesional => profesional.honorariosPorHora() > honorarioDeReferencia})
	}
	method universidadesFormadoras() {
		return profesionales.map({profesional => profesional.universidades()})
	}
	method profesionalMasBarato() {
		return profesionales.min({profesional => profesional.honorariosPorHora()})
	}
	method provinciaEstaCubierta (_provincia) {
		return profesionales.any({profesional => profesional.provinciasDondePuedeTrabajar().contains(_provincia)})
	}
	method prosesionalesPorUniversidad(_universidad) {
		return profesionales.count({profesional => profesional.universidad() == _universidad})
	}
	method esPocoAtractivo(_profesional) {
		return (profesionales.filter({p => p.provinciasDondePuedeTrabajar() ==_profesional.provinciasDondePuedeTrabajar()}))
		.all({p => p.honorariosPorHora() < _profesional.honorariosPorHora()})
	}
}
