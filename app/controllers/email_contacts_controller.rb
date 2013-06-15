class EmailContactsController < ApplicationController
  	def create
  		@email_contact = EmailContact.new(params[:email])
		respond_to do |format|
			if @email_contact.save 
				ContactMailer.contact_email(@email_contact).deliver 
				format.html {redirect_to(:back) }
	  		else 
	  			format.html {redirect_to(:back) }
	  		end
		end
	end
end
