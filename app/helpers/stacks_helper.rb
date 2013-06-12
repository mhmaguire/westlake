module StacksHelper
	def get_template(slide)
		slide_template = "#{slide.css_class}"||'slide_layout' 
	end
end
