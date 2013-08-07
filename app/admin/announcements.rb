ActiveAdmin.register Announcement do
	menu parent: 'Content'

	form do |f|
		f.inputs do 
			f.input :title
			f.input :body
		end
		f.inputs 'Featured Vendors' do 
			f.input :vendors, as: :select, collection: Vendor.all.map {|v| ["#{v.name} - #{v.category.title}", v.id]}, multiple: true
		end
		f.actions
	end
  
end
