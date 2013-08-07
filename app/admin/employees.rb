ActiveAdmin.register Employee do
	menu parent: "Content"
	form html: {enctype: "multipart/form-data" } do |f|
		f.inputs do 
			f.input :name 
			f.input :title
			f.input :email
			f.input :phone
			f.input :cell_phone
			f.input :body
			f.input :image, hint: f.template.image_tag(f.object.image.url(:medium))
		end
		f.actions 
	end

	show do |c|
		attributes_table do 
			row :name
			row :title 
			row :phone
			row :cell_phone
			row :body
			row :created_at 
			row :updated_at
			row 'Image' do 
				image_tag(c.image.url(:medium))
			end
		end
		active_admin_comments
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
