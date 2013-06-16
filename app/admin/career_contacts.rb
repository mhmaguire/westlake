ActiveAdmin.register CareerContact do
	menu parent: 'Messages'
	actions :index, :show
	filter :created_at
	filter :email 
	filter :name

	index do 
		column :email
		column :name 
		column :resume do |c|
			link_to "View Resume", c.resume.url
		end
		column :created_at
		default_actions 
	end 
  
end
