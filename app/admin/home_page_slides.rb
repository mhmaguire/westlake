ActiveAdmin.register HomePageSlide do
	menu parent: "Content"
	form html: {enctype: "multipart/form-data"} do |f|
		f.inputs do 
			f.input :header 
			f.input :body, as: :rich
			f.input :image
		end
		f.actions 
	end
end
