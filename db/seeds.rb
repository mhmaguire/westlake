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
    
date = Time.now.advance(days: 2)

5.times do |i|
    career = Career.create(title:"career#{i}", description: 'this is the description of a career', end_at: Time.now)
    Employee.create(name: 'Employee', title: "Open Position #{i}", description: 'A description of an employee')
    EmailContact.create(email: "hello@example.com", name: "Leeroy Jenkins", message: 'This is a message from Leeroy Jenkins')
    cc = CareerContact.create(name: 'Someone', email: 'someone@example.com')
    cc.career=career 
    Event.create(title: 'A westlake Event', description: "This is an event for westlake pro, featuring interesting stuff", start_date: date)
    date = date.advance(days: 7)
end

AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')