ActiveAdmin.register Career do
	menu parent: 'Content'
	form do |f|
		f.inputs do 
			f.input :title
			f.input :description
		end
		f.actions
	end

	show do |c|
		attributes_table do 
			row :title 
			row :description
			row :created_at 
			row :updated_at
		end
		active_admin_comments
	end
end
