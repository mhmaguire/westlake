ActiveAdmin.register Category do
	menu parent: "Content"
	show do 
		panel "Vendors" do 
			table_for category.vendors do 
				column :name
				column 'Image' do |vendor|
					image_tag vendor.image.url(:small)
				end
				column 'Actions' do |vendor|
					link_to 'Edit category', edit_admin_category_path(vendor.category)
				end
			end
		end
	end
	sidebar "Category Info", only: :show do 
		attributes_table_for category do 
			row :title 
		end
	end





	form html: {enctype: "multiaprt/form-data"} do |f|
		f.inputs do 
			f.input :title
		end
		f.inputs "Vendors" do
			f.has_many :vendors do |v|
				v.inputs :name, :image 
			end
		end
		f.actions
  	end
end
