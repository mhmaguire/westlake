ActiveAdmin.register HomePageSlide do
	form html: {enctype: "multipart/form-data"} do |f|
		f.inputs do 
			f.input :header 
			f.input :body
			f.input :image
		end
		f.actions 
	end
end
