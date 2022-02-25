class ReviewsController < ApplicationController
  def new
    @moto = Moto.find(params[:moto_id])
    @review = Review.new
  end

  def create
    @moto = Moto.find(params[:moto_id])
    @review = Review.new(params_review)
    @review.moto = @moto
    if @review.save
      redirect_to moto_path(@moto)
    else
      render :new
    end
  end

  def params_review
    params.require(:review).permit(:rating, :content)
  end
end
