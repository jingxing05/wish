package common

import java.text.SimpleDateFormat

class DateTagLib {
	def longDate = {attrs, body ->
		//parse the incoming date
		def b = attrs.body ?: body()
		SimpleDateFormat  format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S")
        Date d = format.parse(b.trim().toString())
		//if no format attribute is supplied, use this
		String pattern = attrs["format"] ?: "EEEE, MMM d, yyyy"		
		format.applyPattern(pattern);
		out << format.format(d)
	  }
}
