class EventContactsController < ApplicationController
  def new
  	@event = Event.find(params[:event_id])
  	@event_contact = @event.event_contacts.build 
  	respond_to do |format|
  		format.js
  	end
  end

  def create
  	@event = Event.find(params[:event_id])
  	@event_contact = @event.event_contacts.build(params[:event_contact])
    @event_contact.source = params.delete :source
  	respond_to do |format|
      if @event_contact.save 
        ContactMailer.event_rsvp(@event_contact).deliver
        format.js { render 'create' }
      else 
        format.js { render 'new' }
      end
  	end
  end
end
