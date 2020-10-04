class EventsController < ApplicationController
  before_action :redirect_if_not_user_signed, except: %i[show index]

  def index
    @events = Event.all
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)
    @event.save
    redirect_to "/events/#{@event.id}"
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :local, :description)
  end
end
