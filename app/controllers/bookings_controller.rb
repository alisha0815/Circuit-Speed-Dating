class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :destroy]

  def index
    @my_bookings = current_user.bookings
  end
  
  def new
    @booking = Booking.new
    @event = Event.find(params[:event_id])
  end

  def create
    @booking = Booking.new
    @event = Event.find(params[:event_id])
    @booking.user = current_user
    @booking.event = @event
    if @booking.save
      redirect_to loading_path
      flash[:notice] = "Booked successfully"
    else
      render :new
    end
  end
  
  def edit
    @booking.user = current_user
  end
  
  def update
    if @booking.update(@event)
      redirect_to booking_path(current_user)
      flash[:notice] = 'Booking updated!'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private
  
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
