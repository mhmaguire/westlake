class CareerContactsController < ApplicationController
	
	def new 
		@career = Career.find(params[:career_id])
		@career_contact = @career.contacts.build
		respond_to do |format| 
			format.js
		end
	end

	def create
		@career = Career.find(params[:career_id])
		@career_contact = @career.contacts.build(params[:career_contact])
		respond_to do |format|
			if @career_contact.save
				ContactMailer.career_inquiry(@career_contact).deliver
				format.js { render 'create' }
			else
				format.js { render 'new' } 
			end
		end
	end

	def resume 
		@career_contact = CareerContact.new
		respond_to do |format|
			format.js
		end
	end

	def create_resume
		@career_contact = CareerContact.new(params[:career_contact])
		respond_to do |format|
			if @career_contact.save
				ContactMailer.resume_inquiry(@career_contact).deliver
				format.js { render 'create'}
			else 
				format.js { render 'resume'}
			end
		end
	end
end
