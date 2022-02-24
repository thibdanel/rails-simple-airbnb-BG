class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @moto = Moto.find(params[:moto_id])
    @booking = Booking.new
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @moto = Moto.find(params[:moto_id])
    @booking.moto = @moto
    @booking.user_id = current_user.id
    @booking.status = "pending"
    if @booking.save!
      redirect_to profile_path
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save!
    redirect_to profile_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save!
    redirect_to profile_paths
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :moto_id)
  end
end
