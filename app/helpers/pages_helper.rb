module PagesHelper
	def home_page_content_empty?(hps)
		if hps.header.nil? || hps.header === '' || hps.body.nil? || hps.body === ''
			return true
		else
			return false
		end
	end
end
