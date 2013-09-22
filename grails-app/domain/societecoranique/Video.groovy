package societecoranique

import java.util.Date;

import org.springframework.aop.TrueClassFilter;

/**
 * Video
 * A domain class describes the data object and it's mapping to the database
 */
class Video {

	String myFile
	String fileId
	String name
	Date dateCreated

	static constraints = {
		
		myFile blank:false , url: true;
		
    }

}
