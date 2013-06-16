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
		#TODO send mail to the westlake
		respond_to do |format|
			if @career_contact.save
				format.js do
					responds_to_parent do 
						render 'create'
					end
				end
			else
				format.js do 
					responds_to_parent do 
						render 'new'
					end
				end
			end
		end
	end
end
