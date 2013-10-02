package societecoranique

import javassist.bytecode.stackmap.BasicBlock.Catch;
import grails.plugin.mail.MailService;
import org.springframework.dao.DataIntegrityViolationException

/**
 * ContactController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ContactController {
	def contactService

	def list() {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[contactInstanceList: Contact.list(params), contactInstanceTotal: Contact.count()]
	}

	def index() {
		[contactInstance: new Contact(params)]
	}

	def save() {
		def contactInstance = new Contact(params)
		if (!contactInstance.save(flush: true)) {
			render(view: "index", model: [contactInstance: contactInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [
			message(code: 'contact.label', default: 'Contact'),
			contactInstance.id
		])
		contactService.envoyerMail("brahimmahjoub@yahoo.fr","testMail","Bonjour,\nJe suis brahim")

		redirect(action: "list", id: contactInstance.id)
	}
}
