namespace :vendors do 
	desc "Create Categories, Vendors, and attach vendor images from file Rails.root/lib/assets/logos"
	task :logos => :environment do 
		print "Loading logo images from /lib/assets/logos"
		Dir.chdir("#{Rails.root}/lib/assets")
		logos = Dir.open('Logos').entries.select{|v| v =~ /\w+/ } 
		#select all entries that have one or more words
		#i.e. not directories '.' or '..'
		logos.each do |title|
		    cdir = Dir.open("Logos/#{title}").entries.select{|v| v =~ /\w+/ }
		    category = Category.find_or_create_by_title(title)
		    cdir.each do |vendor|
	        	f = File.open("#{Dir.pwd}/Logos/#{title}/#{vendor}")
	        	obj = category.vendors.find_or_create_by_name(vendor.split('.').first)
		        obj.image = f
		        obj.save
		        f.close 
		    end
		end
	end
end
