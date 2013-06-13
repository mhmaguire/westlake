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
content.save

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::
    

%w(Consoles Console_Automation,_Monitoring,_and_Playback
    Recorders Amplifiers Preamplifiers
    Loudspeakers_and_Monitors
   	Interfaces_and_Synchronizers
    Power_Protection
    Noise_Reduction
    Digital_Audio Workstations
    Software
    Computers,_Storage,_and_Peripherals
    Microphones
    Support_Equipment
    Music_Production_and_Music_Instruments
    Furniture,_Mounting Solutions,_Acoustic_Treatment).each do |cat|
	Category.create(title: "#{cat.gsub('_', ' ')}")
end