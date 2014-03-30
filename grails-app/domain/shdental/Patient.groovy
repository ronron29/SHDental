package shdental

class Patient {
	String name
	String address
	Date birthdate
	String height
	String weight
	String telephoneNumber
	String sex
	String status
	String guardian
	String nationality
	String referredBy
	String lastVisit
	String chiefComplaint
    //Teeth teeth
	ArrayList treatmentPlans
	
	static constraints = {
		name(blank:false)
		birthdate(blank:false)
    }
}
