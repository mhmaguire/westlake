# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


content=Content.new

%w(ceo_letter benefits la_life company_culture gen_info).each do |attribute|
	content.send("#{attribute}=", 'This is the default text for all content attributes')
end
content.save!

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth) 
    

%w(Consoles Console_Automation_Monitoring_and_Playback Recorders Amplifiers Preamplifiers Loudspeakers_and_Monitors Interfaces_and_Synchronizers Power_Protection Noise_Reduction Digital_Audio Workstations Software Computers_Storage_and_Peripherals Microphones Support_Equipment Music_Production_and_Music_Instruments Furniture_Mounting Solutions_Acoustic_Treatment).each do |cat|
	Category.create(title: "#{cat.gsub('_', ' ')}")
end

Category.all.each do |category|
    5.times do |i|
        category.vendors.create(name: "Vendor #{i} in category: #{category.title}")
    end
end

5.times do |i|
    Career.create(title:"career#{i}", description: 'this is the description of a career', end_at: Time.now)
    Employee.create(name: 'Employee', title: "Open Position #{i}", description: 'A description of an employee')
end

AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')