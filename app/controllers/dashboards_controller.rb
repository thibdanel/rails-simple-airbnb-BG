class DashboardsController < ApplicationController
  def profile
    @bookings = Booking.where(user_id:current_user)
    @motos = Moto.where(user_id:current_user)
    @user = current_user
  end
end
