ActiveAdmin.register Content do
	actions :index, :show, :edit, :update

	index as: :block do |content|
		div for: content do 
			link_to "Edit Site Content", admin_contents_edit_path(content) 
			h3 "Ceo Letter"
			div do 
				content.ceo_letter 
			end
			h3 'Benefits'
			div do 
				content.benefits
			end
			h3 'Life in Los Angeles'
			div do 
				content.la_life 
			end
			h3 'General Info'
			div do 
				content.gen_info 
			end
			h3 'Company Culture'
			div do 
				content.company_culture
			end
		end
	end
  
end
