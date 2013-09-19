package societecoranique

import org.springframework.dao.DataIntegrityViolationException
import org.springframework.web.multipart.commons.CommonsMultipartFile

/**
 * AlbumController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ImageController {

	def index(){
	}

	def upload={

		String storagePath = "web-app/images/avatars/"

		// Create storage path directory if it does not exist
		def storagePathDirectory = new File(storagePath)
		if (!storagePathDirectory.exists()) {
			print "CREATING DIRECTORY ${storagePath}: "
			if (storagePathDirectory.mkdirs()) {
				println "SUCCESS"
			} else {
				println "FAILED"
			}
		}


		def img = new Image(params)

		def f = request.getFile('myFile')
		if (f.empty) {
			flash.message = 'file cannot be empty'
			redirect(action: 'list')
		}
		img.myFile = f.getBytes()
		img.name = params.myFile?.originalFilename
		if(img.save(flush:true)){

			f.transferTo(new File(storagePath+params.myFile?.originalFilename))

			flash.message = 'Done ... File uploaded'
			redirect(action: 'list')
		}
		else{
			flash.message = 'ERROR ... File NOT uploaded'
			redirect(action: 'list')
		}
	}

	def list = {

		def listImage = Image.list()
		[imageInstanceList: listImage]

	}

}
