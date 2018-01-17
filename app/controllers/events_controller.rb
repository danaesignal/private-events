class EventsController < ApplicationController
  before_action :login_check, only: [:new,:create]
  def show
    @event = Event.find(params[:id])    
  end

  def index
    @events = Event.all
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to @event
    else
      redirect_to new
    end
  end

  private

    def event_params
      params.require(:event).permit(:name, :location, :time)
    end

    def login_check
      redirect_to root_path unless logged_in?
    end
end
