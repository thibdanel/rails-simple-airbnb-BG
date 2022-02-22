class DashboardsController < ApplicationController
  def profile
    @motos = current_user.motos
  end
end
