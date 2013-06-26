ActiveAdmin.register Content, as: "Content" do
	menu label: "Copy", parent: 'Content'
	actions :index, :show, :edit, :update
	config.filters = false 
	config.batch_actions = false 
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

	form html: {enctype: "multipart/form-data"} do |f|
		f.inputs do 
			f.input :ceo_letter
			f.input :ceo_img
			f.input :benefits
			f.input :benefits_img
			f.input :la_life
			f.input :la_life_img
			f.input :gen_info 
			f.input :company_culture
			f.input :culture_img
			f.input :openings_img
		end
		f.actions
	end	 

	show do |c|
		attributes_table do 
			row :ceo_letter
			row :benefits
			row :la_life
			row :gen_info
			row :company_culture
			row "Ceo Image" do 
				image_tag c.ceo_img.url(:small)
			end
			row "Benefits Image" do 
				image_tag c.benefits_img.url(:small)
			end
			row "LA Life Image" do 
				image_tag c.la_life_img.url(:small)
			end
			row "Culture Image" do 
				image_tag c.culture_img.url(:small)
			end
			row "Openings Image" do 
				image_tag c.openings_img.url(:small)
			end
		end
	end
end
