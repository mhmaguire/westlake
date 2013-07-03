module EventsHelper
	def get_event_title
		if action_name == 'past'
			return 'Past Events'
		elsif action_name == 'weekly'
			return 'Weekly Events'
		else 
			return 'Upcoming Events'
		end
	end
end
