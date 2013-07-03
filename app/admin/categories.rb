ActiveAdmin.register Category do
	menu parent: "Content"
	show do 
		panel "Vendors" do 
			table_for category.vendors do 
				column :name
				column 'Image' do |vendor|
					image_tag vendor.image.url(:medium)
				end
				column 'Actions' do |vendor|
					link_to 'Delete Vendor', admin_category_vendor_path(vendor.category, vendor), method: :delete, confirm: 'Are you sure?'
					link_to 'Edit Vendor', edit_admin_category_vendor_path(category, vendor)
				end
			end
		end
	end
	sidebar "Category Info", only: :show do 
		attributes_table_for category do 
			row :title
			row :actions do |c|
				link_to 'Add a Vendor', new_admin_category_vendor_path(c)
			end

		end
	end

	form html: {enctype: "multiaprt/form-data"} do |f|
		f.inputs do 
			f.input :title
		end
		f.inputs "Vendors" do
			f.has_many :vendors do |v|
				v.inputs :name, :href 
				v.input :image, as: :rich_picker
			end
		end
		f.actions
  	end
end
