class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :destroy]

 
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
    redirect_to  event_path(@event)
    flash[:notice] = "Booked successfully"
  else
    render :new
  end
end
 
def edit
  @booking.user = current_user
end
 
def update
  if @booking.update(booking_params)
     #redirect_to 
     flash[:notice] = 'Booking updated!'
  else
   render :edit
  end
end

def destroy
  @booking.destroy
  #redirect_to
end
  private
  
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
