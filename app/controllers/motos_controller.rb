class MotosController < ApplicationController
  def new
    @moto = Moto.new
  end

  def index
    @motos = Moto.all
  end

  def show
  end

  def create
    @moto = Moto.new(moto_params)
    if @moto.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def moto_params
    params.require(:moto).permit(:name, :brand, :address, :price, :available, :power, :kilometers)
  end
end
