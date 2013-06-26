# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


content= Content.last || Content.new

%w(ceo_letter benefits la_life company_culture gen_info).each do |attribute|
	content.send("#{attribute}=", 'This is the default text for all content attributes')
end
content.save!
   
date = Time.now.advance(days: 2)

%w(designs integrations).each do |type|
	5.times do
		GalleryImage.create!(gallery_type: type)
	end
end
f = File.open("#{Rails.root}/app/assets/images/silhouette.jpg")
5.times do |i|
    career = Career.create(title:"career#{i}", description: 'this is the description of a career', end_at: Time.now)
    Employee.create(name: 'Employee', title: "Position #{i}", email: 'employee@westlakepro.com', phone: "(123) 1234-567", image: f)
    EmailContact.create(email: "hello@example.com", name: "Leeroy Jenkins", message: 'This is a message from Leeroy Jenkins')
    cc = CareerContact.create(name: 'Someone', email: 'someone@example.com')
    cc.career=career 
    Event.create(title: 'A westlake Event', description: "This is an event for westlake pro, featuring interesting stuff", start_date: date)
    date = date.advance(days: 7)
end
f.close

AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')