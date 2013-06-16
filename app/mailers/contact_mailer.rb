class ContactMailer < ActionMailer::Base
  default from: "westlaketester4101@gmail.com"

  def contact_email(email)
    @email = email
    mail(to: 'mhmaguire0@gmail.com', subject: 'New message from a user of westlakepro.com')
  end

  def career_inquiry(email)
  	@email = email
  	if !@email.resume_file_name.nil?
  		attatchments["#{@email.resume_file_name}"] = File.read("#{@email.resume.url}")
  	end
  	mail(to: 'mhmaguire0@gmail.com', subject: 'New job application submitted')
  end
end
