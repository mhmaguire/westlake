ActiveAdmin.register Category do
	menu parent: "Content"
	show do |category|
		attributes_table_for category do 
			row :title
			row :created_at
			row :updated_at
			row "# Vendors" do
				category.vendors.count
			end
		end
	end
	sidebar "Category Info", only: :show do 
		attributes_table_for category do 
			row :actions do |c|
				link_to 'Add a Vendor', new_admin_category_vendor_path(c)
			end
			row :vendors do |c|
				link_to "View Vendors", admin_category_vendors_path(c)
			end

		end
	end

	form html: {enctype: "multiaprt/form-data"} do |f|
		f.inputs do 
			f.input :title
		end
		f.actions
  	end
end
