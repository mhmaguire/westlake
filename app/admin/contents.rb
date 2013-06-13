ActiveAdmin.register Content, as: "Content" do
	menu label: "Copy", parent: 'Content'
	actions :index, :show, :edit, :update

	index as: :block do |content|
		div for: content do 
			h2 link_to "Edit Site Content", edit_admin_content_path(content) 
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
