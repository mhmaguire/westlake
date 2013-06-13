ActiveAdmin.register Career do
	menu parent: 'Content'
	form do |f|
		f.inputs do 
			f.input :title
			f.input :description
			f.input :end_at
		end
	end
end
