class ContactMailer < ActionMailer::Base
  default from: "westlaketester4101@gmail.com"

  def contact_email(email)
    @email = email
    mail(to: 'sales@westlakepro.com', subject: 'New message from a user of westlakepro.com')
  end

  def career_inquiry(email)
  	@email = email
  	mail(to: 'georgea@westlakepro.com', subject: 'New job application submitted')
  end

  def resume_inquiry(email)
    @email = email
    mail(to: 'georgea@westlakepro.com', subject: 'New resume submitted')
  end

  def event_rsvp(email)
  	@email = email
  	mail(to: 'joep@westlakepro.com', subject: 'New event RSVP!')
  end
end
