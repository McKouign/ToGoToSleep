class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @room = Room.find(params[:room_id])
    @booking.user = current_user
    @booking.room = @room

    date_range_string = params[:booking][:date_range]
    dates = date_range_string.split(' to ')
    starts_at = dates[0]&.strip
    ends_at = dates[1]&.strip
    @booking.starts_at = starts_at
    @booking.ends_at = ends_at
    if @booking.save
      redirect_to user_path(current_user), notice: "Réservation réussie. Consultez vos réservations dans votre espace personnel."
    else
      @room = Room.find(params[:room_id])
      flash.now[:alert] = "Erreur de réservation, indiquez des dates correctes."
      render "rooms/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:date_range, :user_id, :room_id)
  end

end
