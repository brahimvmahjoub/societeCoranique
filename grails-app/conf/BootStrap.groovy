import societecoranique.Role
import societecoranique.User
import societecoranique.UserRole

class BootStrap {

	def init = { servletContext ->
		def roleAdmin = new Role(authority: 'ROLE_ADMIN').save()
		def roleUser = new Role(authority: 'ROLE_USER').save()

		def userAdmin = new User(username: 'admin', password: 'admin', enabled: true)
		userAdmin.save()
		
		def user = new User(username: 'brahim', password: 'mahjoub', enabled: true)
		user.save()
		

		UserRole.create(userAdmin, roleAdmin)
		UserRole.create(user, roleUser)
	}

	def destroy = {
	}
}
