package societecoranique


/**
 * ContactService
 * A service class encapsulates the core business logic of a Grails application
 */

class ContactService {

	static transactional = false
	def mailService
	def envoyerMail(dest,sub,msg) {
		mailService.sendMail {
			to dest
			subject sub
			body msg
		}
	}
}
