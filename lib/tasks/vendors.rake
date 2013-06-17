namespace :vendors do 
	desc "Create Categories, Vendors, and attach vendor images from file Rails.root/lib/assets/logos"
	task :logos => :environment do 
		print "Loading logo images from /lib/assets/logos"
		Dir.chdir("#{Rails.root}/lib/assets")
		logos = Dir.open('logos').entries[2..-1]
		logos.each do |title|
		    cdir = Dir.open("logos/#{title}").entries[2..-1]
		    category = Category.find_or_create_by_title(title)
		    cdir.each do |vendor|
	        	f = File.open("#{Dir.pwd}/logos/#{title}/#{vendor}")
	        	obj = category.vendors.create!(name: vendor.split('.').first, image: f)
		        f.close 
		    end
		end
		logos.close 
	end
end
