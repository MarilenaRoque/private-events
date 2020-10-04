class EventAttendingsController < ApplicationController
  def new
    @event_attending = current_user.event_attendings.build
  end

  def create
    @event_attending = current_user.event_attendings.build
    @event_attending.attended_event_id = params[:event_id]
    @event_attending.save
    redirect_to '/events'
  end
end
