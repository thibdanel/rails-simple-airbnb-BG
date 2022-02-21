class MotosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def new
    @moto = Moto.new
  end

  def index
    @motos = Moto.all
  end

  def show
    @moto = Moto.find(params[:id])
  end

  def create
    @moto = Moto.new(moto_params)
    @moto.user_id = current_user.id
    if @moto.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def moto_params
    params.require(:moto).permit(:name, :brand, :address, :price, :available, :power, :kilometers, :user_id)
  end
end
