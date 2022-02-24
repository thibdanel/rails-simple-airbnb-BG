class MotosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def new
    @moto = Moto.new
  end

  def index
    if params[:query].present?
      @motos = Moto.search_by_brand_and_address(params[:query])
    else
      @motos = Moto.all
    end

    @markers = @motos.geocoded.map do |moto|
      {
        lat: moto.latitude,
        lng: moto.longitude,
        infos_window: render_to_string(partial: "infos_window", locals: { moto: moto }),
        image_url: helpers.asset_url("icone_moto.png")
      }
    end
  end

  def show
    @moto = Moto.find(params[:id])
  end

  def create
    @moto = Moto.new(moto_params)
    @moto.user_id = current_user.id
    if @moto.save!
      redirect_to motos_path
    else
      render :new
    end
  end

  def edit
    @moto = Moto.find(params[:id])
  end

  def update
    @moto = Moto.find(params[:id])
    @moto.update(moto_params)
    redirect_to moto_path(@moto)
  end

  def destroy
    @moto = Moto.find(params[:id])
    @moto.destroy
    redirect_to profile_path
  end

  private

  def moto_params
    params.require(:moto).permit(:name, :brand, :address, :price, :available, :power, :kilometers, :user_id, :photo)
  end
end
