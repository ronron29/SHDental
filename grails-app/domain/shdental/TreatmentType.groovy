package shdental

class TreatmentType {
	String name
	String cost
    static constraints = {
		name(blank:false)
		cost(blank:false)
    }
}
