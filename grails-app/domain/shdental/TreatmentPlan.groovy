package shdental

class TreatmentPlan {
	Patient patient
	boolean upperJaw
	TreatmentType type
	String units
	String totalCost
	Date date
	String fx
	String misc
	String discount
	
    static constraints = {
    	patient(blank:false)
		upperJaw(blank:false)
		type(blank:false)
		units(blank:false)
	}
}
