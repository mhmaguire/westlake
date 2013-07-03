ActiveAdmin.register Event do
	menu parent: "Content"

	form do |f|
		f.inputs do 
			f.input :title
			f.input :description, as: :rich, config: { :width => '100%', :height => '300px'}
			f.input :is_weekly
			f.input :start_date
			f.input :image
		end 
		f.actions
	end


	index do 
		column :title 
		column :description 
		column :start_date 
		column :image do |e|
			image_tag e.image.url(:small)
		end
		column :created_at 
		column :updated_at
		default_actions 
	end  

	show do |e|
		attributes_table do 
			row :title
			row :description
			row :start_date
			row :image do 
				image_tag e.image.url(:small)
			end
			row :created_at
			row	:updated_at
		end

	end
end
