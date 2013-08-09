ActiveAdmin.register Announcement do
	menu parent: 'Content'

	index do 
		column :title
		column :body
		column 'Featured Slide' do |a|
			image_tag a.image.url(:small)
		end
		column :created_at
		column :updated_at
		default_actions
	end

	show do |a|
		attributes_table do 
			row :title
			row :body
			row 'Featured Slide' do
				image_tag a.image.url(:small)
			end
			row :created_at
			row :updated_at
		end
	end



	form html: {enctype: "multipart/form-data"} do |f|
		f.inputs do 
			f.input :title
			f.input :body
			f.input :image, hint: f.template.image_tag(f.object.image.url(:small))
		end
		f.actions
	end
  
end
