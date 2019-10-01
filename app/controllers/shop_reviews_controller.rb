class ShopReviewsController < ApplicationController
  before_action :set_shop_review, only: [:show, :edit, :update, :destroy]


  def index
    @shop_reviews = @current_user.shop_reviews
  end


  def show
  end
  
  
  def new
    @shop_review = ShopReview.new
  end


  def edit
  end


  def create
    shop_review = ShopReview.create(shop_review_params.merge(user_id: @current_user.id))
    redirect_to shop_path(shop_review)
  end


  def update

  end


  def destroy
    # @shop_review.destroy
  end

  private
    def set_shop_review
      @shop_review = ShopReview.find(params[:id])
    end

    def shop_review_params
      params.require(:shop_review).permit(:user_id, :shop_id, :rating, :review)
    end
end
