class CareerContactsController < ApplicationController
	def new 
		@career = Career.find(params[:career_id])
		@career_contact = @career.contacts.build
	end

	def create


		redirect_to :back
	end

end
