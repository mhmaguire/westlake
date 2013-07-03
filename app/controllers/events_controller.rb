class EventsController < ApplicationController
	def index 
		@events = Event.upcoming
	end


	def past
		@events = Event.where('start_date <?', (Time.now.midnight - 1.day ))
		render 'index'
	end

	def weekly
		@events = Event.where(is_weekly: true)
		render 'index'
	end
end
