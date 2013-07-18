ActiveAdmin.register HomePageSlide do
	menu parent: "Content"
	form html: {enctype: "multipart/form-data"} do |f|
		f.inputs do 
			f.input :header 
			f.input :body
			f.input :image, hint: f.template.image_tag(f.object.image.url(:thumb))
		end
		f.actions 
	end
end
