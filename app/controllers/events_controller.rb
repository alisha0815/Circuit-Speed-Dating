class EventsController < ApplicationController
  def index
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_time, Date.today).to_date
    # For a monthly view:
    @events = Event.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_year)
    # Or, for a weekly view:
    # @events = Event.where(start_time: start_date.beginning_of_week..start_date.end_of_week)
  end

  private

  def event_params
    params.require(:event).permit(:name, :start_time, :end_time)
  end
end
