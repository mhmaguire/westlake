class ContactMailer < ActionMailer::Base
  default from: "westlaketester4101@gmail.com"

  def contact_email(email)
    @email = email
    mail(to: 'mhmaguire0@gmail.com', subject: 'New message from a user of westlakepro.com')
  end
end
