module StacksHelper
	def get_template(slide)
		slide_template = slide.css_class.nil? ? 'slide_layout' : slide.css_class  
	end
end
