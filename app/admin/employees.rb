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

	index as: :grid do |employee|
		div for: employee do
			h2 employee.name 
			div do 
				link_to( image_tag(employee.image.url(:medium)), admin_employee_path(employee)) 
			end
		end
	end
end
