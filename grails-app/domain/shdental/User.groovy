package shdental

class User {
	String realName
	String userName
	String password
	String accessRights
	
    static constraints = {
		realName(blank:false)
		userName(blank:false, unique:true)
		password(blank:false)
		accessRights(blank:false)
    }
}
