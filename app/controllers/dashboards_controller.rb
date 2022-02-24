class DashboardsController < ApplicationController
  def profile
    @my_bookings = Booking.where(user_id: current_user)
    @their_bookings = Booking.where(moto: current_user.motos)
    @user = current_user
    @motos = Moto.where(user_id: current_user)
  end
end
