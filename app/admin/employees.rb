ActiveAdmin.register Employee do
	form html: {enctype: "multipart/form-data" } do |f|
		f.inputs do 
			f.input :name 
			f.input :title
			f.input :description
			f.input :image
		end
		f.actions 
	end
end
