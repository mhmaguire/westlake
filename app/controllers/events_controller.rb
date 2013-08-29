class EventsController < ApplicationController
	def index 
		@events = Event.upcoming + Event.weekly
	end


	def past
		@events = Event.past
		render 'index'
	end

	def weekly
		@events = Event.weekly
		render 'index'
	end
end
