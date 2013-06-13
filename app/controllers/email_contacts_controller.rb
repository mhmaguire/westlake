class EmailContactsController < ApplicationController
	
  	def create
  		@email_contact = EmailContact.new(params[:email])
  		redirect_to :back
	end
end
