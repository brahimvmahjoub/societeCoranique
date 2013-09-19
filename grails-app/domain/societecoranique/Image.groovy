package societecoranique
import org.springframework.web.multipart.commons.CommonsMultipartFile

/**
 * Album
 * A domain class describes the data object and it's mapping to the database
 */
class Image {

	byte[] myFile
	String name

	static constraints = {
		// Limit upload file size to 2MB myFile maxSize: 1024 * 1024 * 2
		myFile maxSize: 1024 * 1024 * 5
	}
}
