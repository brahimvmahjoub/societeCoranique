package societecoranique

import java.util.regex.Matcher
import java.util.regex.Pattern

/**
 * VideoController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class VideoController {

	
	def index(){
		params.max = Math.min(params.max ? params.int('max') : 9, 100)
		params.sort = 'dateCreated'
		params.order= 'desc'
		
		[VideoInstanceList: Video.list(params),VideoInstanceCount:Video.count()]
	}

	def upload={
		def video = new Video(params)
		
		String url = video.myFile
		String regExp = "/.*(?:youtu.be\\/|v\\/|u/\\w/|embed\\/|watch\\?.*&?v=)";
		Pattern compiledPattern = Pattern.compile(regExp);
		Matcher matcher = compiledPattern.matcher(url);
		if(matcher.find()){
			int start = matcher.end();
			System.out.println("ID : " + url.substring(start, start+11));
			video.fileId = url.substring(start, start+11);
		}
		
		if(video.save(flush:true)){
			
			flash.message ="Video uploaded"
			redirect(action: 'index')
			
		}else{
		flash.message ="Video Not uploaded"
		}

	}
	
}
