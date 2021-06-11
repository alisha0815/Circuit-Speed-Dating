class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  private

  def event_params
    params.require(:event).permit(:name, :start_time, :end_time)
  end
end
