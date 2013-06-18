ActiveAdmin.register Vendor do
	belongs_to :category

	form do |f|
		f.inputs do 
			f.input :category
			f.input :name
			f.input :image 
		end
		f.actions 
	end

	show do |v|
		attributes_table do 
			row :name 
			row :image do 
				image_tag v.image.url(:medium)
			end
		end
	end


	controller do 
		def destroy 
			destroy! do |format|
				format.html { redirect_to :back }
			end
		end 

		def create 
			create! do |format|
				format.html { redirect_to admin_category_path(@vendor.category) }
			end
		end
	end

end
