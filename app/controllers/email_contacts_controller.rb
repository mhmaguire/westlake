class EmailContactsController < ApplicationController
  	def create
  		@email_contact = EmailContact.new(params[:email_contact])
		respond_to do |format|
			if @email_contact.save 
				ContactMailer.contact_email(@email_contact).deliver 
				format.js
	  		else 
	  			format.js { render :errors }
	  		end
		end
	end
end
