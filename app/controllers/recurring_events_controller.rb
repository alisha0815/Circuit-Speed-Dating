class RecurringEventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    recurring_dates
    @event = Event.new
    # raise
    (@start_date).upto(@end_date) do |date|
      Event.create(name: "Session", start_time: "#{date} #{@start_hour}:#{@start_min}:00 UTC +00:00",
                                    end_time: "#{date} #{@end_hour}:#{@end_min}:00 UTC +00:00")
    # raise
    end

    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  private

  def recurring_dates
    start_year = params["event"]["start_date(1i)"].to_i
    start_month = params["event"]["start_date(2i)"].to_i
    start_day = params["event"]["start_date(3i)"].to_i

    end_year = params["event"]["end_date(1i)"].to_i
    end_month = params["event"]["end_date(2i)"].to_i
    end_day = params["event"]["end_date(3i)"].to_i

    @start_date = Date.new(start_year, start_month, start_day)
    @end_date = Date.new(end_year, end_month, end_day)

    @start_hour = params["event"]["start_time(4i)"].to_i
    @start_min = params["event"]["start_time(5i)"].to_i
    @end_hour = params["event"]["end_time(4i)"].to_i
    @end_min = params["event"]["end_time(5i)"].to_i
    # raise
  end
end
