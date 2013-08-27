ActiveAdmin.register GalleryImage do
	menu parent: "Content"

	form html: {enctype: 'multipart/form-data'} do |f|
		f.inputs do 
			f.input :caption
			f.input :gallery_type
			f.input :image,  hint: f.template.image_tag(f.object.image.url(:small))
		end
		f.actions 
	end

	index as: :grid do |g|
		div for: g do
			h2 g.gallery_type 
			div do 
				link_to( image_tag(g.image.url(:small)), admin_gallery_image_path(g)) 
			end
		end
	end

	show do |g|
		attributes_table do 
			row :image_file_name
			row :gallery_type
			row :created_at 
			row :updated_at
			row :caption
			row 'Image' do
				image_tag(g.image.url(:small))
			end
		end
		active_admin_comments
	end
end
