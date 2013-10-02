package societecoranique

/**
 * Contact
 * A domain class describes the data object and it's mapping to the database
 */
class Contact {

	String name
	String mail
	String message

    
	static constraints = {
		
		name blank: false, maxSize:25, nullable:false
		mail blank: false, email:true
		message blank:false, widget: 'textarea',  nullable:false, maxSize:2000
    }

}
